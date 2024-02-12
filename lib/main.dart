import 'package:flutter/material.dart';
import 'package:furniture_app/Screens/Second_Screen.dart';
import 'package:furniture_app/Screens/Third_Screen.dart';
import 'package:furniture_app/Screens/home_screen.dart';
import 'package:furniture_app/Screens/splash_screen.dart';
import 'package:flutter/src/material/elevated_button.dart ';
import 'package:furniture_app/utils/cartlist.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      routes: {
        '/' :(context) => SplashScreen(),
         '/Home' :(context)=> HomeScreen(),
        '/Third':(context)=> Thirdscreen(),
        '/cartlist':(context)=> cartlist(),
      },
    );
  }
}
