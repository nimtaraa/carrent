import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class itemcontainer extends StatefulWidget {
  String image;
  String uname;
  String lname;
  String seat;
  String speed;
  int battery;
  String dh;

   itemcontainer({
    required this.uname,
    required this.lname,
    required this.seat,
    required this.image,
    required this.speed,
    required this.battery,
    required this.dh,

    
    super.key});

  @override
  State<itemcontainer> createState() => _itemcontainerState();
}

class _itemcontainerState extends State<itemcontainer> with SingleTickerProviderStateMixin {
   late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: Offset(1.0, 0.0),  // Start off-screen on the left
      end: Offset(0.2, 0.0),    // End at the original position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;    
    return Stack(
      children: [
        
        Container(
          width: double.infinity,
          height:height/5.2 ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: height/20),
            child: Container(
              width: double.infinity,
              height: height/30,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  blurRadius: 2,
                  blurStyle: BlurStyle.outer,
                  color: Colors.black
                )],
                              color: Color.fromARGB(255, 32,62,90),
            
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: width/15,top: height/60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.dh} DH",style: TextStyle(color: Color.fromARGB(240, 255, 255, 255),fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("Per/Day",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: width/35,fontWeight: FontWeight.bold),),
            
                    Padding(
                      padding:  EdgeInsets.only(right: width/30,top: height/60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
            
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.uname,style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: width/25),),
                              Text("Brand",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: width/35),)
                            ],
                          ),                          
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.speed,style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: width/25),),
                              Text("Speed",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: width/35),)
                            ],
                          ),
                                                    Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.seat,style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: width/25),),
                              Text("Seat",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: width/35))
                            ],
                          ),
                                                    Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text({widget.battery}.toString(),style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: width/25)),
                              Text("Battery",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: width/35))
                            ],
                          ),
                          
            
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        
        ),

                                            AnimatedPositioned(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                        child: SlideTransition(
                          position: _animation,
          child: Container(
            height: height/7,
            width: width/1,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(widget.image),fit: BoxFit.contain)
            ),
          ),
        )
                                            )


      ],
    );
  }
}