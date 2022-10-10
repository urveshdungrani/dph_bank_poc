import 'package:dataphion_bank/constants/colors.dart';
import 'package:dataphion_bank/constants/navigation.dart';
import 'package:dataphion_bank/constants/variables.dart';
import 'package:dataphion_bank/widgets/bg_button.dart';
import 'package:flutter/material.dart';

class OptionBottomSheet extends StatefulWidget {
  const OptionBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<OptionBottomSheet> createState() => _OptionBottomSheetState();
}

class _OptionBottomSheetState extends State<OptionBottomSheet> {
  List productsName = [
    'Accounts',
    'Credit Cards',
    'FD/RD',
    'Loans',
    'Investments',
    'Forex Card',
    'Demat',
    'Insurance',
    'Cardless Cash Withdrawal',
    'Recharge',
    'Send Money Abroad',
  ];
  List services = [
    'My Profile',
    'Pay My Dues',
    'Cheques',
    'Other Services',
  ];
  List productImages = [
      Icons.account_balance,
      Icons.credit_card,
      Icons.door_sliding_outlined,
      Icons.clean_hands_rounded,
      Icons.show_chart_outlined,
      Icons.credit_card,
      Icons.padding_outlined,
      Icons.admin_panel_settings_outlined,
      Icons.settings_remote_outlined,
      Icons.padding_outlined,
      Icons.language_outlined,
  ];

  List serviceImages = [
      Icons.account_circle_outlined,
      Icons.currency_exchange_outlined,
      Icons.door_sliding_outlined,
      Icons.layers,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.50,
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PRODUCTS',
              style: TextStyle(
                color: AppColors.eclipse,
                decoration: TextDecoration.none,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: productsName.length,
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                mainAxisExtent: 120,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        if(index == 0){
                          route(RouteTypes.push, accountRoute);
                        }
                      },
                      child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 247, 244, 244),
                          ),
                          child: Icon(productImages[index])),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      productsName[index],
                      textAlign: TextAlign.center,
                    )
                  ],
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 2,
              height: 0,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "SERVICES",
              style: TextStyle(
                color: AppColors.eclipse,
                decoration: TextDecoration.none,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: services.length,
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.only(top: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                mainAxisExtent: 120,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 247, 244, 244),
                      ),
                      child: Icon(
                        serviceImages[index],
                        size: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      services[index],
                      textAlign: TextAlign.center,
                    )
                  ],
                );
              },
            ),
            const Divider(
              thickness: 2,
              height: 0,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 60) / 2,
                  child: const BGButton(
                    title: "WhatsApp Us",
                    isDisable: false,
                    bgColor: Color.fromARGB(60, 252, 248, 236),
                    borderColor: Color.fromARGB(255, 223, 220, 220),
                    textColor: Colors.purple,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 60) / 2,
                  child: const BGButton(
                    title: "Contact RM",
                    isDisable: false,
                    bgColor: Color.fromARGB(60, 252, 248, 236),
                    borderColor: Color.fromARGB(255, 223, 220, 220),
                    textColor: Colors.purple,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
