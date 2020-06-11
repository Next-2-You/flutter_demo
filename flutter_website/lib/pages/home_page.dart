import 'package:flutter/material.dart';
import 'package:flutter_website/model/product.dart';
import 'package:flutter_website/pages/home_banner.dart';
import 'package:flutter_website/services/product.dart';

import 'home_product_page.dart';


class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => HomePageState();

}

class HomePageState extends State<HomePage>{

  ProductListModal listData = ProductListModal([]);

  void getProductList() async{
    var data = await getProductResult();
    ProductListModal list = ProductListModal.fromJson(data);
    setState(() {
      listData.data.addAll(list.data);
    });

  }

  @override
  void initState() {
    getProductList();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          HomeBanner(),
          HomeProductPage(listData)

      ],)
    );
    
  }

}