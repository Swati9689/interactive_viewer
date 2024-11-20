
import 'package:flutter/material.dart';



void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget{
  const HomeView({super.key});


  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // backgroundColor: Colors.black,

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InteractiveViewer(
            // maxScale: 25,
            // minScale: 0.5,
            child: Image.network("ios/assets/image.jpg",),

          ),
          Image.network(" ios/assets/image.jpg"),

        ],

      ),
    );
  }
}










