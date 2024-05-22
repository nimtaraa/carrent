import 'package:carrent/viewpage.dart';
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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 20, 20, 20),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: const Color.fromARGB(255, 230, 254, 88),
                size: width / 18,
              )),
          title: Center(
              child: Text(
            "Car Details",
            style: TextStyle(
                color: const Color.fromARGB(255, 230, 254, 88),
                fontSize: width / 18),
          )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: width / 20,
                  color: const Color.fromARGB(255, 230, 254, 88),
                ))
          ],
        ),
        bottomNavigationBar: Container(
          height: height / 11,
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
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: const Color.fromARGB(255, 230, 254, 88),
                  ),
                  label: "Home",
                ),
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
                  padding: EdgeInsets.only(left: width / 20, top: height / 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor:
                                const Color.fromARGB(255, 230, 254, 88),
                          ),
                          SizedBox(
                            width: width / 40,
                          ),
                          Text(
                            "Available Cars",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width / 20,
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 270,
                        width: 208,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assetss/Rectangle 50.png"),
                                fit: BoxFit.contain)),
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: 10, left: 13, right: 13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Peugeot",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                  Container(
                                    height: 28,
                                    width: 47,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 19, 19, 19),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Image.asset(
                                          "assetss/material-symbols_star.png"),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                "E208",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),
                              SizedBox(
                                height: height / 5.2,
                              ),
                              Center(
                                  child: Text(
                                "500 Dh / Day",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 230, 254, 88),
                                    fontSize: 20),
                              ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 117,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                    return viewpage();
                  },));
                },
                child: Container(
                  height: 170,
                  width: 244,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assetss/car1.png"),
                          fit: BoxFit.contain)),
                ),
              ),
            )
          ],
        ));
  }
}
