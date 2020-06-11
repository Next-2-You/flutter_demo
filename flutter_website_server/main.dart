import 'dart:convert';
import 'dart:io';
import 'data.dart';

main() async{
  var requestServer = await HttpServer.bind("192.168.0.11", 8070);
  print("http服务已启动。。。");

  await for(HttpRequest req in requestServer){
    handReq(req);
  }
}

void handReq(HttpRequest req){
  try{
    if(req.method == "GET"){
      handGET(req);
    }else if(req.method == "POST"){
      handPOST(req);
    }
  }catch(e){
    print("捕获异常：$e");
  }
}

void handGET(HttpRequest req){
  var action = req.uri.queryParameters['action'];

  if(action == "getProducts"){
    req.response
    ..statusCode=HttpStatus.ok
    ..write(json.encode(products))
    ..close();
  }else if(action == "getNews"){
    req.response
    ..statusCode=HttpStatus.ok
    ..write(json.encode(news))
    ..close();

  }else if(action == "contactCompany"){
    var msg = req.uri.queryParameters['msg'];
    print('客户端留言为：$msg');
    req.response
    ..statusCode=HttpStatus.ok
    ..write('提交成功：$msg')
    ..close();

  }
}

void handPOST(HttpRequest req){

}