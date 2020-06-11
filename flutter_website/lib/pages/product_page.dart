import 'package:flutter/material.dart';
import 'package:flutter_website/model/product.dart';
import 'package:flutter_website/pages/product_list_page.dart';
import 'package:flutter_website/services/product.dart';


class ProductPage extends StatefulWidget{
  @override
  ProductPageState createState() => ProductPageState();

}

class ProductPageState extends State<ProductPage>{

  ProductListModal listData = ProductListModal([]);

  int page = 0;

  void getProductList() async{
    var data = await getProductResult(page++);
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
    return ProductListPage(listData,getNextPage: ()=>getProductList(),);
    
  }

}