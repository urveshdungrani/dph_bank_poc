import 'package:dataphion_bank/constants/colors.dart';
import 'package:dataphion_bank/constants/navigation.dart';
import 'package:dataphion_bank/constants/provider.dart';
import 'package:dataphion_bank/constants/variables.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Accounts extends StatelessWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
  var appProvider = Provider.of<AppProvider>(context, listen: true);
    var accountNo = appProvider.transactionData!.accountNo;
    var transactionData = appProvider.transactionData!.transactions;
    var balanceSummary = appProvider.transactionData!.summary;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => route(RouteTypes.pop),
          child: Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        title: Text(
          "Accounts",
          style: TextStyle(color: AppColors.black),
        ),
        backgroundColor: AppColors.white,
        elevation: 0,
        actions: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  route(RouteTypes.push, accountdetailRoute);
                },
                child: const Text(
                  "ACCOUNT DETAILS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 247, 7, 175),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width,
                  padding: const EdgeInsets.only(
                      top: 30, bottom: 30, left: 15, right: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(60, 252, 248, 236),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 240, 239, 236),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("SAVINGS ACCOUNT"),
                          Text("$accountNo"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("CURRENT BALANCE"),
                          Text("${balanceSummary!.currency!.displaySymbol} ${balanceSummary.availableBalance}"),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "VIEW BALANCE INFO",
                  style: TextStyle(
                    color: Color.fromARGB(255, 247, 7, 175),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text("RECENT TRANSACTION"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height / 1.80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 223, 220, 220),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView.separated(
                    padding: const EdgeInsets.all(20),
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: transactionData!.length,
                    itemBuilder: ((context, index) {
                      return Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            margin: const EdgeInsets.only(
                              right: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 247, 244, 244),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('${transactionData[index].date?[2]}'),
                                Text(DateFormat('MMM').format(DateTime(0, transactionData[index].date?[1] as int))),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(transactionData[index].paymentDetailData?.paymentType?.name??''),
                              Text("${transactionData[index].date?[2]}-${transactionData[index].date?[1]}-${transactionData[index].date?[0]}"),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            "${transactionData[index].currency!.displaySymbol} ${transactionData[index].amount}",
                            style: TextStyle(
                              color: transactionData[index].transactionType!.value == 'Withdrawal'?Colors.red: Colors.green,
                            ),
                          )
                        ],
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: size.height / 8,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 15),
              color: AppColors.white,
              child: Column(
                children: [
                  const Divider(
                    height: 0,
                    thickness: 2,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width / 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'VIEW',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 247, 7, 175),
                                ),
                              ),
                              Text(
                                'STATEMENT',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 247, 7, 175),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const VerticalDivider(
                          // color: Colors.black,
                          thickness: 2,
                          width: 0,
                        ),
                        SizedBox(
                          width: size.width / 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'REQUEST',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 247, 7, 175),
                                ),
                              ),
                              Text(
                                'STATEMENT',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 247, 7, 175),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
