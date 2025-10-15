import 'package:flutter/material.dart';
import 'package:loginapp/res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right:20),
        child: Center(child: Text("hello")),
        decoration: BoxDecoration(
          color: AppStyles.ticketColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
          )
        )
      )
    );
  }
}