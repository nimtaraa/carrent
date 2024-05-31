import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class MapPage extends StatelessWidget {
  final LatLng location;

  MapPage({required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: location,
              zoom: 13.0,
            ),
            children: [
              TileLayer(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: location,
                    builder: (ctx) => Container(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 50,
            child: Container(
              width: MediaQuery.of(context).size.width/1.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    IconButton(onPressed:() {
                      Navigator.of(context).pop();
                    }, icon:Icon(Icons.arrow_back,color: Colors.black,size: 26,)),
                  Text(
                    "Car Details",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 470,
            right: 10,
            left: 10,
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width/50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color.fromARGB(255, 1, 75, 102)
                ), 
                child: Padding(
                  padding:  EdgeInsets.only(left: 30,top: 10,right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  
                      Text("Rs.120",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),

                      Text("Price/hr",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 12),),
                      SizedBox(height: 30,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("Battery",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
    Text("Brand",style: TextStyle(color: Colors.white),)
  ],
),
Column(
    crossAxisAlignment: CrossAxisAlignment.start,

  children: [
    Text("3A 9200",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
    Text("Model No",style: TextStyle(color: Colors.white),)
  ],
),
Column(
    crossAxisAlignment: CrossAxisAlignment.start,

  children: [
    Text("77/km",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
    Text("C02",style: TextStyle(color: Colors.white),)
  ],
),
Column(
    crossAxisAlignment: CrossAxisAlignment.start,

  children: [
    Text("5,5 L",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
    Text("Fuel Cons",style: TextStyle(color: Colors.white),)
  ],
)

],
                      ),
                      SizedBox(height: 10,),

                      Container(
                        width: double.infinity,
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height:100,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(image:AssetImage("assetss/unnamed (1).jpg"))
                            ),
                          ),
                          SizedBox(width: 10,),
                           Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Tara Travels",style: TextStyle(color: Colors.white,fontSize: 20),),
                                      Text("Lincenses:2342345",style: TextStyle(color: Colors.white),),
                                      SizedBox(height: 5,),
                                      Center(
          child:RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemSize: 26,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),

        ),
                                      SizedBox(height: 10,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 30,
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 10),
                  backgroundColor: Color.fromARGB(255, 0, 199, 213)
                ),
                onPressed:() {
                
              }, child: Text("Call",style: TextStyle(color: Colors.white,fontSize: 15),)),
            ),
SizedBox(width: 10,),

Container(
  height: 30,
  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 199, 213)
                ),
                onPressed:() {
                
              }, child: Text("Book Now",style: TextStyle(color: Colors.white,fontSize: 15),)),
),





          ],
        )

      
                                    ],
                                  ),
                                  Column(
                                    children: [

                                    ],
                                  )
                                ],
                              )
                            ],
                           )

                        ],
                      )


                  
                    ],
                  ),

                ),   
            ),
          ),

          Positioned(
            top: 370,
            left: 140,
            child: Container(
              height: 230,
              width: 230,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assetss/car1 (1) copynew.png"),)
              ),
            ),
          ),

        ],
      ),
    );
  }
}
