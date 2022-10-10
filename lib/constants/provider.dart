import 'dart:convert';
import 'dart:io';

import 'package:dataphion_bank/constants/endpoints.dart';
import 'package:dataphion_bank/maps/authed_resp_map.dart';
import 'package:dataphion_bank/maps/client_response.dart';
import 'package:dataphion_bank/maps/particular_transaction_response.dart';
import 'package:dataphion_bank/maps/transactions_resp.dart';
import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  String? authToken;
  AuthedResponse? authedData;
  ClientResponse? clientData;
  TransactionsResponse? transactionData;
  ParticularTransactionResponse? particularTransactionData;

  setAuthToken(value) async {
    authToken = value;
    notifyListeners();
  }

  setAuthedData(value) async {
    authedData = value;
    notifyListeners();
  }

  Future<bool> setAuthScreensData() async {
   var isClientDataSet =  await setClientData();
   var isTransactionsDataSet =  await setTransactionsData();

    if (isClientDataSet && isTransactionsDataSet) {
      notifyListeners();
      return true;
    }
    return false;
  }

  Future<bool> setClientData() async {
    HttpClient client = HttpClient()
      ..badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
    final request = await client.getUrl(Uri.parse(Endpoints.client(authedData!.clients![0])));
    request.headers.set(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    request.headers.set(HttpHeaders.authorizationHeader, "Basic $authToken");
    final response = await request.close();
    if(response.statusCode == 200){
      var responseData = await utf8.decoder.bind(response).join();
      clientData = ClientResponse.fromJson(jsonDecode(responseData));
      return true;
    }
    return false;
  }

  Future<bool> setTransactionsData() async {
    HttpClient client = HttpClient()
      ..badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
    final request = await client.getUrl(Uri.parse(Endpoints.transactions(clientData?.accountNo)));
    request.headers.set(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    request.headers.set(HttpHeaders.authorizationHeader, "Basic $authToken");
    final response = await request.close();
    if(response.statusCode == 200){
      var responseData = await utf8.decoder.bind(response).join();
      transactionData = TransactionsResponse.fromJson(jsonDecode(responseData));
      return true;
    }
    return false;
  }

  Future<dynamic> setParticularTransactions(int transactionId) async {
    HttpClient client = HttpClient()
      ..badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
    final request = await client.getUrl(Uri.parse(Endpoints.particularTransactions(clientData!.accountNo,transactionId)));
    request.headers.set(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    request.headers.set(HttpHeaders.authorizationHeader, "Basic $authToken");
    final response = await request.close();
    if(response.statusCode == 200){
      var responseData = await utf8.decoder.bind(response).join();
      return ParticularTransactionResponse.fromJson(jsonDecode(responseData));
    }
    return null;
  }
}
