import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'taskhomepage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBox5DZnW3-CTEELw1c-ZsdSi4v8KDHUPo",
      authDomain: "appchart-eb9ad.firebaseapp.com",
      projectId: "appchart-eb9ad",
      storageBucket: "appchart-eb9ad.appspot.com",
      messagingSenderId: "734223975621",
      appId: "1:734223975621:web:bbea4b442343d76c189cac",
      measurementId: "G-B6STHRC6DY"
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:  TaskHomePage(),
    );
  }
}

abstract class TaskHomePageState extends State<TaskHomePage>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: SfCartesianChart()));
  }
  
}

