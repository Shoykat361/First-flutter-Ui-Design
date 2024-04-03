import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App'),
      backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('See That you click this button this many times',style: TextStyle(fontSize: 20.00),),
            Text('$_count',style: TextStyle(fontSize: 25.00),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incriment,
        child: Icon(Icons.add),

      ),



    );
  }

  _incriment(){
    setState(() {
      _count++;
    });


  }


}
