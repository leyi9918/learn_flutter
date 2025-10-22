
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:loginapp/pages/web_view.dart';
import 'package:loginapp/route/RouteUtils.dart';
import 'package:loginapp/route/Routes.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 150,
                width:double.infinity,
                child:Swiper(
                  itemCount: 3,
                  autoplay: true,
                  pagination: const SwiperPagination(),
                  control: const SwiperControl(),
                  indicatorLayout: PageIndicatorLayout.NONE,
                  itemBuilder: (context, index) => Container(
                    height: 150,
                    color: Colors.lightBlue
                  ),
                )
              ),
              Expanded(child: 
                ListView.builder(itemBuilder: (context,index){
                  return _listItemView();
                },itemCount:100
                )
              )
            ],
          )
        )
    );
  }

  Widget _listItemView(){
    return GestureDetector(
      onTap: (){
        // Navigator.pushNamed(context, RoutePath.webViewPage);

        RouteUtils.pushForNamed(context, RoutePath.webViewPage, arguments:{
          "name": "路由传值", 
        });
      },
      child: Container(
        margin:EdgeInsets.only(top:5, bottom: 5, left: 10, right:10),
        padding: EdgeInsets.only(top:15, bottom: 15, left: 10, right:10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 0.5
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                  ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child:Image.network(_image, 
                      width: 50, 
                      height: 50, 
                      fit: BoxFit.fill
                    ),
                  ),
                  SizedBox(width: 5),
                  Text("Andrew Tate"),
                  Expanded(child: SizedBox()),
                  Text("2025/10/18"),
                  SizedBox(width: 5),
                  Text("ping", style: TextStyle(color: Colors.blue, 
                      fontWeight:FontWeight.bold,
                      fontSize: 26,
                    ),
                  
                  )
              ]
            ),
            Text("I am topg and fuck you my friend", style: TextStyle(
              fontSize:13,
            )),
        
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("category",style:TextStyle(
                color: Colors.green,
                fontSize: 15,
              )),
              Expanded(child: SizedBox()),
              Image.asset("assets/images/img_collect_grey.png"
                ,width:30,
                height:30
                )
            ],)
        ],),
      ),
    );
  }
  final _image = "https://www.thecitizen.co.tz/resource/image/4070672/landscape_ratio3x2/1620/1080/1ee802a95a77a813e772d0bb6b624bc0/Au/tate.jpg";
}