import 'package:flutter/material.dart';
import 'package:flutter_website/pages/about_us_page.dart';
import 'package:flutter_website/pages/home_page.dart';
import 'package:flutter_website/pages/news_page.dart';
import 'package:flutter_website/pages/product_page.dart';


class App extends StatefulWidget{
  @override
  AppState createState() => AppState();

}

class AppState extends State<App>{

  int _currentIndex = 0;

  HomePage homePage;
  ProductPage productPage;
  NewsPage newsPage;
  AboutUsPage aboutUsPage;

  
  currentPage(){
    dynamic currentPage;
    switch(_currentIndex){
      case 0: currentPage = homePage == null?HomePage():homePage;break;
      case 1: currentPage = productPage == null?ProductPage():productPage;break;
      case 2: currentPage = newsPage == null?NewsPage():newsPage;break;
      case 3: currentPage = aboutUsPage == null?AboutUsPage():aboutUsPage;break;
    }
    return currentPage;
  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter企业站实战'),
        leading: GestureDetector(
              onTap:(){
                print("点击了");
                setState(() {
                  _currentIndex = 0;
                });
              },
              child: Icon(Icons.home),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right:20.0),
            child: GestureDetector(
              onTap:(){},
              child: Icon(
                Icons.search
              ),
            ),
          )

        ],
      ),
      body: currentPage(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,//选中
        onTap: ((index)=>{
          setState((){
            _currentIndex = index;
          })
        }),
        items: [
          BottomNavigationBarItem(
            title: Text('首页'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('产品'),
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            title: Text('新闻'),
            icon: Icon(Icons.fiber_new),
          ),
          BottomNavigationBarItem(
            title: Text('关于我们'),
            icon: Icon(Icons.insert_comment),
          )
        ]

      ),
    

    );


  }

}