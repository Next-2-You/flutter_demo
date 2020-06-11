

import 'package:flutter_website/conf/configure.dart';
import 'package:http/http.dart' as http;

contactCompany(String msg) async{
  String url = "http://"+Config.IP+":"+Config.PORT+"/flutter_website_server?action=contactCompany&msg=$msg";
  var res = await http.get(url);
  var info = res.body;
  print(info);
  return info;
}