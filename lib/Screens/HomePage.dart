import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            Image.network(url,width: double.infinity,height: 300.00,fit: BoxFit.cover,),
            const Padding(
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
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Icon(Icons.call,color: Colors.blue,),
                    SizedBox(height: 10.0,),
                    Text('Call'),
                  ],),
                  Column(children: [
                    Icon(Icons.near_me,color: Colors.blue,),
                    SizedBox(height: 10.0,),
                    Text('Near Me'),
                  ],),
                  Column(children: [
                    Icon(Icons.share,color: Colors.blue,),
                    SizedBox(height: 10.0,),
                    Text('Share'),
                  ],),
                ],),
            ),
            Padding(padding: EdgeInsets.all(16.00),
              child: Text(description,style: TextStyle(fontSize: 18.00),
                textAlign: TextAlign.justify,
              ),

            )


          ],

        ),
      ),
    );
  }
}