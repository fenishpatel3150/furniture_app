import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/utils/productdetails.dart';

class cartlist extends StatefulWidget {
  const cartlist({super.key});

  @override
  State<cartlist> createState() => _cartlistState();

  static void add(List boxdetail1) {}
}

class _cartlistState extends State<cartlist> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE1EEDD),
        title: Text('My cart'),
      ),
      body: Column(
        children: List.generate(Cartlist.length, (index) => cart(Cartlist[index]['image'], Cartlist[index]['name'], Cartlist[index]['price'],index =index))
      ),
    ));
  }
  Widget cart(String image,String name,int price,int index)
  {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(image,fit:BoxFit.fill,)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Text(name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                  SizedBox(height: 10,),
                  Text('$price',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 30,
                            width: 109,
                            decoration: BoxDecoration(

                                color: Color(0xffE1EEDD), borderRadius:
                            BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                IconButton(onPressed: ()
                                {
                                  setState(() {
                                    if(Cartlist[index]['quantity']>=1)
                                      {
                                        Cartlist[index]['quantity']--;
                                      }
                                  });
                                }, icon:Icon(Icons.remove,size: 15,) ),
                                Text('${Cartlist[index]['quantity']}',style: TextStyle(color: Colors.grey),),
                                IconButton(onPressed: ()
                                {
                                  setState(() {
                                    Cartlist[index]['quantity']++;
                                  });
                                }, icon:Icon(Icons.add,size: 15,) ),

                              ],
                            ),
                          ),

                        ],
                      ),
                      IconButton(onPressed: ()
                      {
                        Cartlist.removeAt(index);
                      }, icon:Icon(Icons.delete) ),

                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ]
    );
  }
}

