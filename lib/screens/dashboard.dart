
import 'dart:convert';
import 'dart:io';

import 'package:dataphion_bank/constants/colors.dart';
import 'package:dataphion_bank/constants/navigation.dart';
import 'package:dataphion_bank/constants/variables.dart';
import 'package:dataphion_bank/widgets/option_bottom_sheet.dart';
import 'package:dataphion_bank/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      // onTap: () => route(RouteTypes.push, accountdetailRoute),
                       onTap: () async {
                        HttpClient client = HttpClient()
                          ..badCertificateCallback = ((X509Certificate cert, String host, int port) => true);

                        // final request = await client.postUrl(Uri.parse("https://122.166.179.60:18443/fineract-provider/api/v1/self/authentication?username=ravisr&password=ravisr123&tenantIdentifier=default"));
                        // request.headers.set(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
                        // request.write('{"username":"ravisr","password":"ravisr123"}');
                          
                        final request = await client.getUrl(Uri.parse("https://122.166.179.60:18443/fineract-provider/api/v1/self/clients/1?tenantIdentifier=default"));
                        request.headers.set(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
                        // request.headers.set(HttpHeaders.authorizationHeader, "Basic cmF2aXNyOnJhdmlzcjEyMw\u003d\u003d");
                        request.headers.set(HttpHeaders.authorizationHeader, "Basic bWlmb3M6cGFzc3dvcmQ\u003d");


                        final response = await request.close();

                        response.transform(utf8.decoder).listen((contents) {
                          print(contents);
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.paleGreen.withOpacity(0.5),
                        ),
                        child: const Text(
                          'JD',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      width : (MediaQuery.of(context).size.width - 20) / 3,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.notification_add_outlined
                          ),
                          Icon(
                            Icons.search
                          ),
                          Icon(
                            Icons.power_settings_new_outlined
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "Hi, John Doe",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkred
                    )
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.paleBlue.withOpacity(0.5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.account_balance,
                            size: 12,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "TOTAL ACCOUNT BALANCE",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            )
                          )
                        ],
                      ),
                      const Text(
                        "87654",
                      )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15,30,15,0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "RECENT TRANSACTIONS",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        )
                      ),
                      InkWell(
                        onTap: () => route(RouteTypes.push, accountRoute),
                        child: Text(
                          "VIEW ALL",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.red.withOpacity(0.7),
                          )
                        ),
                      )
                    ],
                  )
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.gray85)
                  ),
                  child: Column(
                    children: const [
                      TransactionWidget(),
                      SizedBox(height: 10),
                      TransactionWidget(),
                      SizedBox(height: 10),
                      TransactionWidget(),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15,30,15,15),
                  child: Text(
                    "SEND MONEY",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    )
                  )
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.gray85)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                               width: 50,
                               height: 50,
                               alignment: Alignment.center,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: AppColors.paleGreen.withOpacity(0.5),
                               ),
                               child: const Text(
                                 '+',
                                 style: TextStyle(
                                   fontSize: 18,
                                   fontWeight: FontWeight.w700,
                                 )
                               ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Add New"
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                           width: 50,
                           height: 50,
                           alignment: Alignment.center,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color: AppColors.paleGreen.withOpacity(0.5),
                           ),
                           child: const Text(
                             'JD',
                             style: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.w700,
                             )
                           ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "johndoe"
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: AppColors.red.withOpacity(0.7),
        unselectedItemColor: AppColors.graniteGray,
        backgroundColor: AppColors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance,
              color: AppColors.graniteGray,
            ),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.touch_app_outlined,
              color: AppColors.graniteGray,
            ),
            label: 'Apply now',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.payment,
              color: AppColors.graniteGray,
            ),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_offer_outlined,
              color: AppColors.graniteGray,
            ),
            label: 'Grab deals',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz_outlined,
              color: AppColors.graniteGray,
            ),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          if (index == 4) {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: ((context) {
                return const OptionBottomSheet();
              }),
            );
          }
        },
      ),
    );
  }
}
