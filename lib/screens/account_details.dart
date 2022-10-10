
import 'package:dataphion_bank/constants/colors.dart';
import 'package:dataphion_bank/widgets/bg_button.dart';
import 'package:dataphion_bank/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}


class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        title: "Account Details",
        color: AppColors.eclipse,
        // onPressed: Navigator.pop(context),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 90,
                width: 90,
                child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/no_image.jpeg"),
                    ),
                    Positioned(
                      bottom: 0,
                      right: -25,
                      child: RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: const Color(0xFFF5F6F9),
                        padding: const EdgeInsets.all(5.0),
                        shape: const CircleBorder(),
                        child: Icon(Icons.edit, color: AppColors.black),
                      )
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Account Details",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.gray85)
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("NICK NAME:"),
                      Text("JOHN")
                    ],
                  ),
                  const SizedBox(height : 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("ACCOUNT NUMBER:"),
                      Text("1234567890")
                    ],
                  ),
                  const SizedBox(height : 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("ACCOUNT TYPE:"),
                      Text("SAVING")
                    ],
                  ),
                  const SizedBox(height : 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("CATEGORY CODE:"),
                      Text("SALBR")
                    ],
                  ),
                  const SizedBox(height : 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("IFSC CODE:"),
                      Text("12341067890")
                    ],
                  ),
                  const SizedBox(height : 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("OPEN DATE:"),
                      Text("07/10/2020")
                    ],
                  ),
                  const SizedBox(height : 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("STATUS:"),
                      Text("ACtive")
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Personal Details",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.gray85)
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("ACCOUNT HOLDER:"),
                      Text("JOHN DOE")
                    ],
                  ),
                  const SizedBox(height : 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("CUSTOMER ID:"),
                      Text("1234567890")
                    ],
                  ),
                  const SizedBox(height : 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("ADDRESS:"),
                      Text("16848 21 Mile Rd, 48044")
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: BGButton(
                title: "save",
                textColor: AppColors.white,
                bgColor: AppColors.darkred,
                isDisable: false
              ),
            )
          ],
        ),
      )
    );
  }
}