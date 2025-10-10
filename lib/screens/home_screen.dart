import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/res/styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning",style: AppStyles.headLineStyle1),
                        SizedBox(height:5),
                        Text("Book Tickets",style: AppStyles.headLineStyle3),
                      ]
                    ),
                    Container(
                        
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            image:DecorationImage(image:AssetImage("assets/images/logo.png"))
                          ),
                        ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("serachIcon"),
                    Text("empty space")
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
