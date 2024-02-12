import 'package:furniture_app/utils/boxdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/utils/cartlist.dart';
import 'package:furniture_app/utils/productdetails.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffE1EEDD),
          actions: [
            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 10),
            //   height: 40,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(20),
            //   ),
            //   child: Icon(Icons.menu),
            // ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            child:  IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>cartlist()),);
                  },
                  icon: const Icon(Icons.local_mall, color: Colors.black,)),

            ),

            ],
        ),

        body:
        SingleChildScrollView(
          child: Column(
            children: [
              //main
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        height: 110,
                        width: 360,
                        decoration: const BoxDecoration(
                          color: Color(0xffE1EEDD),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome,',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Fenish Patel !',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 0,),
              //Taskbar
              Container(
                margin: const EdgeInsets.only(bottom: 35),
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  boxShadow:const [
                    BoxShadow(
                      color:Colors.grey,
                      blurRadius:5,
                    ),
                  ],

                ),
                //search bar
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.search_rounded,size: 22,),
                    SizedBox(width: 15,),
                    Row(
                      children: [
                        Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 160,),
                        Row(
                          children: [
                            Icon(Icons.home,size: 22,),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //image
              Container(
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                    height: 150,
                    width: 330,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('asset/img/image2.jpg',fit: BoxFit.fill,),
                    ),
                  ),

              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      alignment: Alignment.centerLeft,
                      height:40,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffE1EEDD),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text(smallbox[0]['text'],style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),)),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      alignment: Alignment.centerLeft,
                      height:40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xffE1EEDD),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text(smallbox[1]['text'],style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),)),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      alignment: Alignment.centerLeft,
                      height:40,
                      width: 110,
                      decoration: BoxDecoration(
                        color: const Color(0xffE1EEDD),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text(smallbox[2]['text'],style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),)),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      alignment: Alignment.centerLeft,
                      height:40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xffE1EEDD),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text(smallbox[3]['text'],style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),)),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      alignment: Alignment.centerLeft,
                      height:40,
                      width: 110,
                      decoration: BoxDecoration(
                        color: const Color(0xffE1EEDD),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text(smallbox[4]['text'],style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),)),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      alignment: Alignment.centerLeft,
                      height:40,
                      width: 130,
                      decoration: BoxDecoration(
                        color: const Color(0xffE1EEDD),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text(smallbox[5]['text'],style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),)),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                      alignment: Alignment.centerLeft,
                      height:40,
                      width: 130,
                      decoration: BoxDecoration(
                        color: const Color(0xffE1EEDD),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text(smallbox[6]['text'],style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),)),
                    ),
                    ],
                ),
              ),

               SizedBox(height: 29,),
              Row(
                children: [

                  Column(
                    children: List.generate(boxdetail1.length, (index) => InkWell(
                      onTap:()
                      {
                        Navigator.pushNamed(context, '/Third',arguments: boxdetail1[index]);
                      },
                      child: productbox1(index),
                    )),
                  ),
                  Column(
                    children: List.generate(boxdetails2.length, (index) => InkWell(
                      onTap:()
                      {
                        Navigator.pushNamed(context, '/Third',arguments: boxdetails2[index]);
                      },
                      child: productbox2(index),
                    )),
                  ),
                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget productname(index)
{
  return  Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        height:40,
        width: 120,
        decoration: BoxDecoration(
          color: Color(0xffE1EEDD),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(smallbox[index]['text'],style: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold,),),
        ),
       ),
    ],
  );

}
Widget productbox1(index)
{
  return  Row(

    children: [
      Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 0,25),
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(boxdetail1[index]['image'],fit:BoxFit.fill,)),
            ),
            Row(
              children: [
                Text(boxdetail1[index]['name'],style: const TextStyle(fontSize: 13),),
              ],
            ),
             Row(
              children: [
                Text(boxdetail1[index]['descount'],style: TextStyle(fontSize: 13),),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.favorite_border,color: Colors.black,),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      ],
  );
}
Widget productbox2(index)
{
  return Row(
    children: [
      Container(
        margin:  EdgeInsets.fromLTRB(20, 0, 0,25),
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(boxdetails2[index]['image'],fit:BoxFit.fill,)),
            ),
            Row(
              children: [
                Text(boxdetails2[index]['name'],style: const TextStyle(fontSize: 13),),
              ],
            ),
             Row(
              children: [
                Text(boxdetails2[index]['descount'],style: TextStyle(fontSize: 13),),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.favorite_border,color: Colors.black,),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

