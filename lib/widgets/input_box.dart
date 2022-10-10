import 'package:dataphion_bank/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputBox extends StatelessWidget {
  final String title;
  final bool isDisable;
  final bool isSearch;
  final TextEditingController controller;
  final String? subTitle;
  final int? maxLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final TextInputFormatter? inputFormatters;
  final Function? onChange;
  final String? placeholder;
  final String? errorText;
  final bool emptyValidation;
  final bool validationborder;

  const InputBox({
    Key? key,
    required this.title,
    required this.isDisable,
    required this.isSearch,
    required this.controller,
    required this.emptyValidation,
    this.keyboardType,
    this.inputFormatters,
    this.maxLength,
    this.maxLines = 1,
    this.subTitle,
    this.onChange = _onChange,
    this.placeholder = '',
    this.errorText,
    this.validationborder = false,
  }) : super(key: key);
  static dynamic _onChange(val) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.eclipse,
                  decoration: TextDecoration.none,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.2,
                ),
              ),
              subTitle != null
                  ? Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 8),
                      child: Text(
                        subTitle!,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.graniteGray,
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.2,
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
          child: TextField(
            readOnly: isDisable,
            controller: controller,
            maxLines: maxLines,
            maxLength: maxLength,
            keyboardType: keyboardType,
            onChanged: (value) => onChange!(value),
            inputFormatters: inputFormatters != null ? [inputFormatters!] : [],
            decoration: InputDecoration(
              hintText: placeholder,
              fillColor: isDisable ? AppColors.gray85 : AppColors.white,
              filled: true,
              counterText: "",
              errorText: emptyValidation ? (errorText ?? 'Field Is Empty') : null,
              border: const OutlineInputBorder(),
              contentPadding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
              suffixIcon: isSearch ? const Icon(Icons.search) : null,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.gray81),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.gray81),
                borderRadius: BorderRadius.circular(8),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.cylindrical),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
