import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class weeklyoffer extends StatefulWidget {
  const weeklyoffer({super.key});

  @override
  State<weeklyoffer> createState() => _weeklyofferState();
}

class _weeklyofferState extends State<weeklyoffer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        width: double.infinity,
        height: 170,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assetss/Rectangle 54.png"),fit: BoxFit.fill),
          
        
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Padding(
          padding:  EdgeInsets.only(left: 20,top: 10),
          child: Text("Chevrolet\nCamaro",style: TextStyle(
                                          fontFamily: "bebas",

            color:Colors.white,fontSize: 32,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15,right: 20),
          child: Text("900 Dh / Day",style: TextStyle(
                                          fontFamily: "bebas",

            fontSize: 20,color: const Color.fromARGB(255, 184, 165, 0),fontWeight: FontWeight.bold),),
        )
          ],
        ),
        ),

        Positioned(
          top: 20,
          left: 40,
          child: Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assetss/pngimg 1.png"),)
            ),
          ),
        )
      ],
    );
  }
}