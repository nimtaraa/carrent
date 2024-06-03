import 'package:carrent/searchbar.dart';
import 'package:carrent/viewcontainer.dart';
import 'package:carrent/weeklyoffer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final vehicals=FirebaseFirestore.instance.collection("vehicals").snapshots();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 20, 20, 20),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: const Color.fromARGB( 255, 0, 199, 213),
                size: width / 18,
              )),
          title: Center(
              child: Container(
                decoration: BoxDecoration(
                                  color: Color.fromARGB(23, 0, 199, 213),

                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding:  EdgeInsets.only(top:5,bottom: 5,left: 10,right: 10),
                  child: Text(
                              "Select your car",
                              style: TextStyle(
                              fontFamily: "bebas",
                  fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: width / 18),
                            ),
                ),
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: width / 20,
                  color: const Color.fromARGB( 255, 0, 199, 213),
                ))
          ],
        ),
        bottomNavigationBar: Container(
          height: height / 10,
          child: BottomNavigationBar(
              iconSize: width / 12,
              unselectedFontSize: width / 40,
              selectedFontSize: width / 40,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color.fromARGB(255, 20, 20, 20),
              selectedItemColor: const Color.fromARGB(255, 157, 178, 206),
              unselectedItemColor: const Color.fromARGB(255, 157, 178, 206),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                  label: "Favourite",
                ),
            BottomNavigationBarItem(icon: IconButton(onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                return searchbar();
              },));
            }, icon: Icon(Icons.search)), label: "Search"),
            BottomNavigationBarItem(icon: IconButton(onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                return homepage();
              },));
            }, icon:Icon(Icons.home_outlined,color: const Color.fromARGB( 255, 0, 199, 213),)), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"),
              ]),
        ),
        backgroundColor: Color.fromARGB(255, 20, 20, 20),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assetss/Ellipse 8.png"),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomLeft)),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: width / 20, top: height / 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor:
                                const Color.fromARGB( 255, 0, 199, 213),
                          ),
                          SizedBox(
                            width: width / 40,
                          ),
                          Text(
                            "Available Cars",
                            style: TextStyle(
                              fontFamily: "Segoe",
                              color: Colors.white,
                              fontSize: width / 23,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: height/30,),
                      Container(
                        height: 300,
                       width: double.infinity,
                       child: StreamBuilder<QuerySnapshot>(
                        stream: vehicals,
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return Text("Connection Error");
                            
                          }
                          if (snapshot.connectionState==ConnectionState.waiting) {
                            return Text("Loading..");
                          }
                          var vehicaldoc=snapshot.data!.docs;

                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: vehicaldoc.length,
                            itemBuilder:(context, index) {
                              return Padding(
                                padding:  EdgeInsets.only(right: width/20),
                                child: viewcontainer(
                                  uname: vehicaldoc[index]['uname'], 
                                  lname: vehicaldoc[index]['lname'], 
                                  image: vehicaldoc[index]['image'], 
                                  dh:vehicaldoc[index]['dh value'], 
                                  battery: vehicaldoc[index]['battery'], 
                                  overview: vehicaldoc[index]['overview'], 
                                  speed:vehicaldoc[index]['speed'],
                                   seat: vehicaldoc[index]['seat'], 
                                   image2: vehicaldoc[index]['image2'], 
                                   pimage: vehicaldoc[index]['pimage'], 
                                   rating: vehicaldoc[index]['rating'], 
                                   travelname: vehicaldoc[index]['travel name'],
                                
                                
                                  
                                ),
                              );



                            },
                            
                            );

                        },
                       ),
                      ),
                                               Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor:
                                const Color.fromARGB( 255, 0, 199, 213),
                          ),
                          SizedBox(
                            width: width / 40,
                          ),
                          Text(
                            "Weekly Offer",
                            style: TextStyle(
                                                            fontFamily: "Segoe",

                              color: Colors.white,
                              fontSize: width / 20,
                            ),
                          )
                        ],
                      ),

                                       SizedBox(height: height/30,),
     

                      Padding(
                        padding:  EdgeInsets.only(right: 30,left: 12),
                        child: weeklyoffer(),
                      )


                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
