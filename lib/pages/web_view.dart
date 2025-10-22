import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebViewPage extends StatefulWidget {
  final String title;
  const WebViewPage({super.key, required this.title});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  String? name;


  @override
  void initState(){
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timastamp){
      var map = ModalRoute.of(context)?.settings.arguments;
      if(map is Map){
        name = map["name"];
        setState((){});
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title: Text(name??""),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: InkWell(
          onTap: (){
              Navigator.pop(context);
          },
          child: Container(
            width: 200,
            height: 20,
            child: Text("return"),
          ),
        )
      ),
      
    );
  }
}