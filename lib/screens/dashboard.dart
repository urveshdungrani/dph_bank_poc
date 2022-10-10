import 'package:dataphion_bank/constants/colors.dart';
import 'package:dataphion_bank/constants/navigation.dart';
import 'package:dataphion_bank/constants/provider.dart';
import 'package:dataphion_bank/constants/variables.dart';
import 'package:dataphion_bank/widgets/option_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
int _selectedIndex = 0;

String getInitials(String name) => name.isNotEmpty
    ? name.trim().split(RegExp(' +')).map((s) => s[0]).take(2).join()
    : '';

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context, listen: true);
    var clientName = appProvider.transactionData!.clientName;
    var transactionData = appProvider.transactionData!.transactions;
    var balanceSummary = appProvider.transactionData!.summary;
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
                      onTap: () => route(RouteTypes.push, accountdetailRoute),
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.paleGreen.withOpacity(0.5),
                        ),
                        child: Text(
                          getInitials(clientName??''),
                          style: const TextStyle(
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
                    "Hi, $clientName",
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
                      Text(
                        "${balanceSummary!.currency!.displaySymbol} ${balanceSummary.availableBalance}",
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
                    children: [
                      ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
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
                                      Text('${transactionData?[index].date?[2]}'),
                                      Text(DateFormat('MMM').format(DateTime(0, transactionData?[index].date?[1] as int))),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(transactionData?[index].paymentDetailData?.paymentType?.name??''),
                                    Text("${transactionData?[index].date?[2]}-${transactionData?[index].date?[1]}-${transactionData?[index].date?[0]}"),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  "${transactionData?[index].currency!.displaySymbol} ${transactionData?[index].amount}",
                                  style: TextStyle(
                                    color: transactionData?[index].transactionType!.value == 'Withdrawal'?Colors.red: Colors.green,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10)
                          ],
                        );
                        },
                      ),
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
                      ),                    ],
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
