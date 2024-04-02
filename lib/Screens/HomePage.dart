import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
const url = 'https://live.staticflickr.com/2738/4195504888_edb9cc9fb6_b.jpg';
const description = '''Saint Martin Island (Bengali: সেন্টমার্টিন দ্বীপ) is a small island (area only 3 km2) in the northeastern part of the Bay of Bengal, about 9 km south of the tip of the Cox's Bazar-Teknaf peninsula, and forming the southernmost part of Bangladesh. There is a small adjoining island that is separated at high tide, called Chera Dwip. It is about 8 kilometres (5 miles) west of the northwest coast of Myanmar, at the mouth of the Naf River.''';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Saint Martine',
          style: TextStyle(
            fontSize: 30.00, fontWeight: FontWeight.bold, color: Colors.red,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            imgSection(),
            alterNativeHeaderSelection(),
            //headerSection(),
            navSection(context),
            bodySection()


          ],

        ),
      ),
    );
  }

  Padding bodySection() {
    return Padding(padding: EdgeInsets.all(16.00),
            child: Text(description,style: TextStyle(fontSize: 18.00),
              textAlign: TextAlign.justify,
            ),

          );
  }

  Widget navSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.00),
      margin: EdgeInsets.all(16.00),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.00),topRight: Radius.circular(25.00)),
        border: Border.all(color: Colors.blue,width: 2),
        boxShadow: [
          BoxShadow(color: Colors.grey,
          offset: Offset(0,10),
          blurRadius: 10,
          spreadRadius: 2)
        ],
        gradient: LinearGradient(colors: [Colors.blue,Colors.blue.shade200],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.8,0.2]),


      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(children: [
            Icon(Icons.call,color: Colors.white,),
            SizedBox(height: 10.0,),
            Text('Call',style: TextStyle(color: Colors.white),),
          ],),
          Column(children: [
            Icon(Icons.near_me,color: Colors.white,),
            SizedBox(height: 10.0,),
            Text('Near Me',style: TextStyle(color: Colors.white),),
          ],),
          Column(children: [
            Icon(Icons.share,color: Colors.white,),
            SizedBox(height: 10.0,),
            Text('Share',style: TextStyle(color: Colors.white),),
          ],),
        ],),
    );
  }

  Widget alterNativeHeaderSelection(){
    return ListTile(
      title:Text('Saint Martine') ,
      subtitle:Text('TekNaf, Cox Bazer,Bangladesh') ,
      trailing: Row(
        mainAxisSize: MainAxisSize.min ,
        children: [
          Icon(Icons.star,color: Colors.red,size: 40.00,),
          Text('22',style: TextStyle(fontSize: 20.00,),),

        ],
      ),

    );
  }

  Padding headerSection() {
    return Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Saint Martine',style: TextStyle(fontSize: 18.00,fontWeight: FontWeight.bold),),
                  Text('TekNaf, Cox Bazer,Bangladesh',style: TextStyle(fontSize: 16.00,color: Colors.cyan),),
                ],
              ),
              Spacer(),
              Icon(Icons.star,color: Colors.red,size: 40.00,),
              Text('22',style: TextStyle(fontSize: 20.00,),),
            ],),
          );
  }

  Image imgSection() => Image.network(url,width: double.infinity,height: 300.00,fit: BoxFit.cover,);
}