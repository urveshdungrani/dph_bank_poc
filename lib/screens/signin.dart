import 'dart:io';
import 'dart:convert';

import 'package:dataphion_bank/constants/colors.dart';
import 'package:dataphion_bank/constants/endpoints.dart';
import 'package:dataphion_bank/constants/navigation.dart';
import 'package:dataphion_bank/constants/provider.dart';
import 'package:dataphion_bank/constants/variables.dart';
import 'package:dataphion_bank/maps/authed_resp_map.dart';
import 'package:dataphion_bank/widgets/bg_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  String password = '';
  String email = '';
  
  @override
  Widget build(BuildContext context) {
  var appProvider = Provider.of<AppProvider>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: SizedBox(
                width: 200,
                height: 150,
                child: Image(image: AssetImage('assets/images/dataphion.jpeg')),         
              ),
            ),
            Text(
              'DPH BANK',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: AppColors.azureRadiance
              )
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                onChanged: (value) {
                  setState(() => email = value);
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                onChanged: (value) {
                  setState(() => password = value);
                },
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.azureRadiance
              )
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 250,
              child: BGButton(
                onTap: () async {
                    HttpClient client = HttpClient()
                          ..badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
                  final request = await client.postUrl(Uri.parse(Endpoints.login(email,password)));
                  request.headers.set(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
                  request.write('{"username":$email,"password":$password}');

                  final response = await request.close();
                  if(response.statusCode == 200){
                    var responseData = await utf8.decoder.bind(response).join();
                    var data = AuthedResponse.fromJson(jsonDecode(responseData));
                    await appProvider.setAuthToken(data.base64EncodedAuthenticationKey);
                    await appProvider.setAuthedData(data);
                    if (await appProvider.setAuthScreensData()) {
                      route(RouteTypes.push, dashboardRoute);
                    } 
                  }
                },
                title: 'Login',
                isDisable: false,
                textColor: AppColors.white,
                bgColor: AppColors.azureRadiance,
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            const Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
}