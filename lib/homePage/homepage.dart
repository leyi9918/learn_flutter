
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("learn"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "请输入邮箱",
                  prefixIcon: Icon(Icons.person), // 👈 图标显示在输入框左侧
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30), // 👈 圆角
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey), // 未选中时边框颜色
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.blue, width: 2), // 聚焦时颜色加深
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16), // 间距
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "请输入密码",
                  prefixIcon: Icon(Icons.lock), // 👈 密码框左侧锁头图标
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
                obscureText: true,
              ),
            ],
          ),
        )
      )
    );
  }
}
