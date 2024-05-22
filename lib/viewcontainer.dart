import 'package:carrent/viewpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class viewcontainer extends StatefulWidget {
  String uname;
  String lname;
  String image;
  String dh;
  int battery;
  String overview;
  String speed;
  String seat;
  viewcontainer(
      {required this.uname,
      required this.lname,
      required this.image,
      required this.dh,
      required this.battery,
      required this.overview,
      required this.speed,
      required this.seat,
      super.key});

  @override
  State<viewcontainer> createState() => _viewcontainerState();
}

class _viewcontainerState extends State<viewcontainer> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return viewpage(
                uname: widget.uname,
                lname: widget.lname,
                image: widget.image,
                dh: widget.dh,
                battery: widget.battery,
                overview: widget.overview,
                speed: widget.speed,
                seat: widget.seat);
          },
        ));
      },
      child: Stack(
        children: [
          Container(
            width: 240,
            height: 280,
            color: Colors.transparent,
            child: Container(
              height: 270,
              width: 208,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assetss/Rectangle 50.png"),
                      fit: BoxFit.contain)),
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.uname,
                          style: TextStyle(
                              fontFamily: "bebas",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Container(
                          height: 28,
                          width: 47,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 19, 19, 19),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Image.asset(
                                "assetss/material-symbols_star.png"),
                          ),
                        )
                      ],
                    ),
                    Text(
                      widget.lname,
                      style: TextStyle(
                          fontFamily: 'bebas',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: height / 5.2,
                    ),
                    Center(
                        child: Text(
                      "${widget.dh} DH / DAY",
                      style: TextStyle(
                          fontFamily: "bebas",
                          color: const Color.fromARGB(255, 230, 254, 88),
                          fontSize: 20),
                    ))
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 0.1,
            child: Container(
              height: 160,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.image), fit: BoxFit.contain)),
            ),
          )
        ],
      ),
    );
  }
}
