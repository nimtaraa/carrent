import 'package:flutter/cupertino.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
             height:300 ,   
             width: double.infinity,  
             decoration: BoxDecoration(image: DecorationImage(image: AssetImage("ssetss/Rectangle 54 (1).png"),fit: BoxFit.contain)),   
        ),
      ],
    );
  }
}
