import 'package:carrent/homepage.dart';
import 'package:carrent/itemcontainer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class searchbar extends StatefulWidget {
  const searchbar({super.key});

  @override
  State<searchbar> createState() => _searchbarState();
}

class _searchbarState extends State<searchbar> {
  var searchtext = '';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
 backgroundColor: Color.fromARGB(239, 10, 10, 10),
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
            }, icon: Icon(Icons.search,color: const Color.fromARGB( 255, 0, 199, 213),)), label: "Search"),
            BottomNavigationBarItem(icon: IconButton(onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                return homepage();
              },));
            }, icon:Icon(Icons.home_outlined,)), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"),
              ]),
        ),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: width / 20, left: width / 20, top: height / 15),
                    child: Container(
                      height: height / 17.62,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: Color.fromARGB(255, 0, 0, 0),
                            blurStyle: BlurStyle.outer)
                      ], borderRadius: BorderRadius.circular(16)),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            searchtext = value;
                          });
                        },
                        keyboardType: TextInputType.name,
                        cursorColor: const Color.fromARGB(255, 255, 255, 255),
                        style: TextStyle(color: Colors.white,fontSize: width/27.5),
                        decoration: InputDecoration(
                            hintText: "Vehical Name",
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: width / 16.36,
                            ),
                            hintStyle:
                                TextStyle(color: Color.fromARGB(151, 255, 255, 255), fontSize: width / 27.5),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width / 20, left: width / 20, top: height / 90),
                    child: Container(
                      height: height / 1.4,
                      child: StreamBuilder<QuerySnapshot>(
                        stream: FirebaseFirestore.instance
                            .collection("vehicals")
                            .where("uname", isGreaterThanOrEqualTo: searchtext)
                            .where(
                              "uname",
                              isLessThan: '${searchtext}z',
                            )
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return Text("Connection Error");
                          }
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return Text("Loading....");
                          }
                          var vehicaldoc1 = snapshot.data!.docs;
             
                          return ListView.builder(
                            itemCount: vehicaldoc1.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ItemContainer(
                                  uname: vehicaldoc1[index]['uname'],
                                  lname: vehicaldoc1[index]['lname'],
                                  image: vehicaldoc1[index]['image'],
                                  battery: vehicaldoc1[index]['battery'],
                                  speed: vehicaldoc1[index]['speed'],
                                  seat: vehicaldoc1[index]['seat'], dh: vehicaldoc1[index]['dh value'],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
                   ),
           ),
         ],
       ),
    );
  }
}
