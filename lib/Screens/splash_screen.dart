import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/Screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: Color(0xffFEFBE8),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 350,
              width: 400,
              color: Colors.grey,
              child: Image.asset(
                'asset/img/home/concept.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'Creative Concept ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              'Design ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            GestureDetector(onTap: ()
               {
                 Navigator.of(context).pushReplacementNamed('/Home');
               },
              child: Row(
                 children: [
                   Container(
                     margin: EdgeInsets.all(30),
                     height: 40,
                     width: 300,
                     decoration: BoxDecoration(
                       color:  Color(0xffE39E5B),
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child: Center(
                       child: Text('Get Started',style: TextStyle(
                         color: Colors.white,
                         fontSize: 20,
                       ),),
                     )
                   ),
                 ],
               ),),
          ],
        ),
      ),
    );
  }
}
