import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget{
  @override
  _LoadingPage createState() {
    return _LoadingPage();
  }


}

class _LoadingPage extends State<LoadingPage>{

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3),(){
            Navigator.of(context).pushReplacementNamed("app");
    });

  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/loading.jpg'
            ),
            Center(
              child: Text(
                'Flutter企业站',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  decoration: TextDecoration.none
                ),
              ),
            )
          ],
        ),
      )
    );
    
  }

}


