import 'dart:convert';

import 'package:flutter_website/conf/configure.dart';
import 'package:http/http.dart' as http;

getNewsResult([int page = 0]) async{
  String url = "http://"+Config.IP+":"+Config.PORT+"/flutter_website_server?action=getNews&page=$page";
  var res = await http.get(url);
  var body = res.body;
  var json = jsonDecode(body);
  print(json);
  return json['items'] as List;
}