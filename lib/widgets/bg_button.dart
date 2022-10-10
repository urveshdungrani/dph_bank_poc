import 'package:dataphion_bank/constants/colors.dart';
import 'package:flutter/material.dart';

class BGButton extends StatelessWidget {
  final String title;
  final bool isDisable;
  final VoidCallback? onTap;
  final Color? textColor;
  final Color? borderColor;
  final Color? bgColor;

  const BGButton({
    Key? key,
    required this.title,
    required this.isDisable,
    this.onTap,
    this.textColor,
    this.borderColor,
    this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisable ? null : onTap,
      child: Ink(
        height: 48,
        decoration: BoxDecoration(
            color: bgColor ?? AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor ?? AppColors.white)),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor ?? AppColors.azureRadiance,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
