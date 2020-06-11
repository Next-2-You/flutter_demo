import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class HomeBanner extends StatefulWidget{
  @override
  HomeBannerState createState() => HomeBannerState();

}

class HomeBannerState extends State<HomeBanner>{

  dynamic banners = [
    "assets/images/banners/1.jpg",
    "assets/images/banners/2.jpg",
    "assets/images/banners/3.jpg",
    "assets/images/banners/4.jpg",
    "assets/images/banners/5.jpg",
    "assets/images/banners/6.jpg"
  ];
 


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = width * 540.0 / 1080.0;
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.only(left:10.0,right:10.0),
      child: Swiper(
        itemBuilder: (BuildContext context,int index){
          return Image.asset(
            banners[index],
            width: width,
            height: height,
            fit: BoxFit.cover,
          );
        },
        itemCount: banners.length,
        scrollDirection: Axis.horizontal,
        autoplay: true,
      ),

    );
    
  }

}