import 'package:flutter/material.dart';
import 'package:furniture_app/utils/cartlist.dart';
import 'package:furniture_app/utils/productdetails.dart';
import 'package:furniture_app/utils/cartlist.dart';

class Thirdscreen extends StatefulWidget {
  const Thirdscreen({super.key});

  @override
  State<Thirdscreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<Thirdscreen> {
  @override
  Widget build(BuildContext context) {
    var Fenish = ModalRoute.of(context)!.settings.arguments as Map;
return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffE1EEDD),
          actions: [
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffE1EEDD),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow:const [
                    BoxShadow(
                      color:Colors.grey,
                      blurRadius:5,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  ),
                    child: Image.asset(Fenish['image'], fit: BoxFit.cover,))),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10),
              height: 48,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Fenish['name'],
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.favorite_border,color: Colors.black,size: 25,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Reating ',style: TextStyle(color: Colors.black,),),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 17,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 17,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 17,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 17,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 17,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(thickness: 0.5),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Text(
                'Description',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(Fenish['description'],style: TextStyle(color: Colors.black54, fontSize: 10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(thickness: 0.5),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Row(
                children: [
                  Text('Colors',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                    ),
                  ),
                ],
              ),

            ),
            Container(
              height: 100.6,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                     spreadRadius: 1,
                    blurRadius: 4,

                  )
                ]
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total price', style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                      Text('${Fenish['price']}''/-',
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: ()
                    {
                      Cartlist.add(Fenish);
                      setState(() {

                        for(int i=0; i<Cartlist.length; i++)
                        {
                          count=Cartlist[i]['price'];
                        }
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color(0xffE1EEDD),
                          borderRadius: BorderRadius.circular(30),
                        boxShadow:const [
                        BoxShadow(
                          color:Colors.grey,
                          blurRadius:5,
                        ),
                        ],
                      ),

                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.local_mall_rounded,color: Colors.black,size: 20,),
                          SizedBox(width: 15,),
                          Text('Add to Cart',style: TextStyle(color: Colors.black,fontSize: 15,letterSpacing: 0.5),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
num count=1;