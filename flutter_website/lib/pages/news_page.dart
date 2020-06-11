import 'package:flutter/material.dart';
import 'package:flutter_website/model/news.dart';
import 'package:flutter_website/services/news.dart';
import 'package:flutter_website/style/color.dart';

import 'news_detail_page.dart';


class NewsPage extends StatefulWidget{
  @override
  NewsPageState createState() => NewsPageState();

}

class NewsPageState extends State<NewsPage>{

  NewsListModal listData = NewsListModal([]);

  int page = 0;

  void getNewsList() async{
    var data = await getNewsResult();
    NewsListModal list = NewsListModal.fromJson(data);
    
    setState(() {
      listData.data.addAll(list.data);
    });
  }

  @override
  void initState() {
    getNewsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (BuildContext context,int index){
          return Divider(height: 1.0,color: ProductColors.divideLineColor,);
        }, 
        itemCount: listData.data.length,
        itemBuilder: (BuildContext context,int index){
          NewsItemModal item = listData.data[index];

          return ListTile(
            leading: Icon(Icons.fiber_new),
            trailing: Icon(Icons.arrow_forward),
            title: Text(item.title),
            subtitle: Text(item.content),
            contentPadding: EdgeInsets.all(10.0),
            enabled: true,
            onTap: (){
              Navigator.push(
                context, 
                  MaterialPageRoute(
                    builder: (context)=>NewsDetailPage(item:item),
                  )
              );
            },
          );
        }, 
      )
    );
  }

}