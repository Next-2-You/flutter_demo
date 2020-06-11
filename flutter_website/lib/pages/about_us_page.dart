import 'package:flutter/material.dart';
import 'package:flutter_website/pages/contact_us_page.dart';


class AboutUsPage extends StatefulWidget{
  @override
  AboutUsPageState createState() => AboutUsPageState();

}

class AboutUsPageState extends State<AboutUsPage>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/aboutus/1.jpg',
              fit:BoxFit.cover
            ),
            ListTile(
              leading: Icon(Icons.message),
              title:Text('公司介绍'),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('company_info');
              },
            ),
            Divider(
              height: 10.0,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('公司优势'),
            ),
            Divider(
              height: 10.0,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('联系我们'),
              onTap: (){
                Navigator.push(
                context, 
                  MaterialPageRoute(
                    builder: (context)=>ContactUsPage(),
                  )
              );
              },
            ),
            Divider(
              height: 10.0,
              color: Colors.grey,
            )


          ],
        ),
      )
    );
    
  }

}