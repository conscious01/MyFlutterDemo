import 'package:flutter/material.dart';

class Week29 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 200,),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: TextButton(
                onPressed: (){}, child: Text('BUTTON')),
          ),
          SizedBox(
            height: 200,
            child: TextButton(
                onPressed: (){}, child: Text('BUTTON')),
          ),
          Container(
            height: 200,
            child: SizedBox.expand(child: TextButton(
                onPressed: (){}, child: Text('BUTTON')),),
          )
        ],
      ),
    );
  }

}