import 'package:flutter/material.dart';
import 'package:flutter_website/app.dart';
import 'package:flutter_website/loading.dart';
import 'package:http/http.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner:false,
  title:"Flutter企业站实战",
  theme:mDefaultTheme,
  routes:<String,WidgetBuilder>{
    "app":(BuildContext context) => App(),
    "company_info":(BuildContext context) => WebviewScaffold(
      url:"https://www.baidu.com",
      appBar: AppBar(
        title:Text('公司介绍'),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: (){
            Navigator.of(context).pushReplacementNamed("app");
          },
        ),
      ),
    )
  },
  home:LoadingPage()

));

final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Colors.redAccent,
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Center(
        child: RaisedButton(onPressed: () async {
          String url = "http://192.168.0.11:8070/flutter_website_server?action=getProducts";
          var res = await http.get(url);
          var body = res.body;
          print(body);
        },)
      )
    );
  }
}

