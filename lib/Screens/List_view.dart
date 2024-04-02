import 'package:flutter/material.dart';
final List<String> vAlues = List.generate(100, (index) => 'Items of Value ${index+1}');

class ListViewExercise extends StatelessWidget {
  const ListViewExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('List View Exercise'),
      ),
/*      body: ListView(
        children: vAlues.map((item) => ListTile(title: Text(item),)).toList(),
      )*/
        /*body: ListView.builder(
          padding: const EdgeInsets.all(16.00),
          itemCount: vAlues.length,
          itemBuilder: (context,index) => ListTile(title: Text(vAlues[index]),
          ),
        ),*/
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
          ),
          padding: const EdgeInsets.all(16.00),
          itemCount: vAlues.length,
          itemBuilder: (context,index) => Card(
            child: Center(child: Text(vAlues[index]),),
          ),
          ),

    );
  }
}
