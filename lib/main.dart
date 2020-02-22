import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Ask me anything',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white,fontSize:30.0),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Ball(),
    );
  }
}
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNo=1;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: FlatButton(child: Image.asset('images/ball$ballNo.png'),
      onPressed: (){
        setState(() {
          ballNo=Random().nextInt(8)+1;
          print(ballNo);

        });
      }
      ,)

    );
  }
}
