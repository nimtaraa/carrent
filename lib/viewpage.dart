import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class viewpage extends StatefulWidget {
  const viewpage({super.key});

  @override
  State<viewpage> createState() => _viewpageState();
}

class _viewpageState extends State<viewpage> {
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
        height: height/11,
        child: BottomNavigationBar(
          iconSize: width/12,
          unselectedFontSize: width/40,
          selectedFontSize: width/40,
           type: BottomNavigationBarType.fixed,
           
          backgroundColor: Color.fromARGB(255, 20, 20, 20),
        selectedItemColor: const Color.fromARGB(255, 157, 178, 206),
        unselectedItemColor:const Color.fromARGB(255, 157, 178, 206),
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: const Color.fromARGB(255, 230, 254, 88),),label: "Favourite",),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
                  BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        
          
        
        
        ]),
      ),
      backgroundColor: Color.fromARGB(255, 20, 20, 20),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assetss/Ellipse 8.png"),
                fit: BoxFit.contain,
                alignment: Alignment.bottomLeft)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width / 8, top: height / 20),
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        height: 179,
                        width: 278,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assetss/back.png"),
                                fit: BoxFit.fill)),
                      ),
                      Positioned(
                        child: Container(
                          height: 184,
                          width: 372,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(widget.image),
                                  fit: BoxFit.contain)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${widget.uname}  ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width / 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(widget.lname,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width / 17,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              const Color.fromARGB(255, 230, 254, 88),
                          fontWeight: FontWeight.bold))
                ],
              ),
              Center(
                  child: Text(
                "${widget.dh} DH / DAY",
                style: TextStyle(
                    color: const Color.fromARGB(255, 230, 254, 88),
                    fontSize: width / 20,
                    fontWeight: FontWeight.bold),
              )),
              Padding(
                padding: EdgeInsets.only(left: width / 20, top: height / 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Positioned(
                              bottom: 0,
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: const Color.fromARGB(255, 230, 254, 88),
                              ),
                            ),
                            Container(
                              width: 2,
                              height: 130,
                              color: Colors.grey,
                            ),
                            Positioned(
                              bottom: 0,
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: const Color.fromARGB(255, 230, 254, 88),
                              ),
                            ),
                                                        Container(
                              width: 2,
                              height: 90,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width / 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " Overview",
                                style: TextStyle(
                                    color: Colors.white, fontSize: width / 24),
                              ),
                              Container(
                                width: width / 1.2,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(29, 217, 217, 217),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    widget.overview,
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: width / 24),
                                  ),
                                ),
                              ),
                              Text(
                                " Speciffication",
                                style: TextStyle(
                                    color: Colors.white, fontSize: width / 24),
                              ),
                              SizedBox(
                                height: height / 30,
                              ),
                              Container(
                                width: width / 1.2,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: height / 13,
                                            width: width / 5,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 230, 254, 88),
                                                    width: 2)),
                                            child: Center(
                                              child: Container(
                                                height: height / 20,
                                                width: width / 18,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assetss/ep_odometer.png"))),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "${widget.speed}\n km",
                                            style: TextStyle(
                                                fontSize: width / 26,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: width / 25,
                                      ),
                                      //second
                                      Row(
                                        children: [
                                          Container(
                                            height: height / 13,
                                            width: width / 5,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 230, 254, 88),
                                                    width: 2)),
                                            child: Center(
                                              child: Container(
                                                height: height / 20,
                                                width: width / 18,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assetss/Vector.png"))),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "${widget.seat}\nseat",
                                            style: TextStyle(
                                                fontSize: width / 26,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: width / 25,
                                      ),
                                      //third
                                      Row(
                                        children: [
                                          Container(
                                            height: height / 13,
                                            width: width / 5,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 230, 254, 88),
                                                    width: 2)),
                                            child: Center(
                                              child: Container(
                                                height: height / 20,
                                                width: width / 18,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assetss/clarity_battery-solid.png"))),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "${widget.battery} kWh\n Battery",
                                            style: TextStyle(
                                                fontSize: width / 26,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
                        Container(
            width: width,
            child: Padding(
              padding:  EdgeInsets.only(left: width/7,right: width/7,top: height/18),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 230, 254, 88),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {
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
          SizedBox(height: height/50,)
            ],
          ),
        ),
      ),
    );
  }
}
