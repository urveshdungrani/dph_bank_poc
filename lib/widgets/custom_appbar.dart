import 'package:dataphion_bank/constants/colors.dart';
import 'package:dataphion_bank/constants/navigation.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? subTitle;
  final Color? backgroundColor;
  final Color? color;
  final VoidCallback? onPressed;

  const CustomAppBar({
    this.title,
    this.subTitle,
    this.backgroundColor,
    this.color,
    this.onPressed = _onPressed,
    Key? key,
  }) : super(key: key);

  static dynamic _onPressed() => route(RouteTypes.pop);

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        toolbarHeight: 200,

        backgroundColor: backgroundColor ?? AppColors.white,
        titleSpacing: 0,
        elevation: 0,
        leading: IconButton(
          splashRadius: 25,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: color ?? AppColors.eclipse,
            size: 20,
          ),
          onPressed: onPressed,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title != null
                ? Text(
                    title!,
                    style: TextStyle(color: color ?? AppColors.eclipse, fontSize: 16, fontWeight: FontWeight.w700),
                  )
                : Container(),
            subTitle != null
                ? Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(subTitle!, style: TextStyle(color: color ?? AppColors.eclipse, fontSize: 12)),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
