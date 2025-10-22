import 'package:flutter/material.dart';
import 'package:loginapp/pages/homepage.dart';
import 'package:loginapp/route/Routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.generateRoute,
      initialRoute: RoutePath.home,
      theme:ThemeData(
        colorScheme:ColorScheme.fromSeed(
            seedColor: Colors.red,
            brightness: Brightness.light
          ),
        useMaterial3: true
        )

    );
  }
}
