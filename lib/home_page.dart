import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:global_state_291/counter_provider.dart';
import 'package:provider/provider.dart';

import 'next_page.dart';

class HomePage extends StatefulWidget{

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${Provider.of<CounterProvider>(context).getValue()}', style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage(),));
            }, child: Text('Next'))
          ],
        ),
      ),
    );
  }

  _HomePageState();
}

