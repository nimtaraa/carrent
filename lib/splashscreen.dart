import 'package:carrent/chat.dart';
import 'package:carrent/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class spashscreen extends StatefulWidget {
  const spashscreen({super.key});

  @override
  State<spashscreen> createState() => _spashscreenState();
}

class _spashscreenState extends State<spashscreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assetss/44 1.png"), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width,
            child: Padding(
              padding:  EdgeInsets.only(left: width/7,right: width/7),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB( 255, 0, 199, 213),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                      return homepage();
                    },));
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: height / 80, bottom: height / 80),
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.black, fontSize: width / 18,fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ),
          SizedBox(height: height/50,),
          Container(
            width: width,
            child: Padding(
              padding:  EdgeInsets.only(left: width/7,right: width/7),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: BorderSide(
                          color: const Color.fromARGB( 255, 0, 199, 213)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                      return chat();
                    },));
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: height / 80, bottom: height / 80),
                    child: Text(
                      "Continue With Email",
                      style: TextStyle(
                          color: const Color.fromARGB( 255, 0, 199, 213),
                          fontSize: width / 20),
                    ),
                  )),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: width/4,right: width/4,bottom: height/20,top: height/40),
            child: Container(
              width: width,
              color: Colors.transparent,
              child: Text("by continuing you agree to terms of services and  Privacy policy",style: TextStyle(color: const Color.fromARGB(255, 203, 200, 200),fontSize: width/40,decoration: TextDecoration.none,),textAlign: TextAlign.center,),
            ),
          )
        ],
      ),
    );
  }
}
