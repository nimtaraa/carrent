import 'package:carrent/costs.dart';
import 'package:carrent/firebase_options.dart';
import 'package:carrent/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

void main() async{
  Gemini.init(
    apiKey: GEMINI_API_KEY,
    );
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: spashscreen(),
    );
  }
}
