import 'package:flutter/material.dart';
import 'package:loginapp/res/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText});
  final String smallText;
  final String bigText;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle2),
        InkWell(
          onTap: () {
            print("被点击了");
          },
          borderRadius: BorderRadius.circular(8),
          child: Text(smallText, style: AppStyles.textStyle)
        )    
      ],
    );
  }
}