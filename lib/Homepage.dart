
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        home:HomeScreen()
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 700,
          width: 460,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black,width: 5),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(-2, -2),
                  blurRadius: 4),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 5),
                      margin: const EdgeInsets.only(right: 5),
                      child: const CircleAvatar(
                        radius: 10,
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "Welcome back",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                          children: [
                            TextSpan(
                                text: "  Chad",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 10))
                          ]),
                    ),
                    const SizedBox(
                      width: 240,
                    ),
                    const Icon(Icons.search),
                    const Icon(Icons.notifications_outlined)
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Your Notes",
                      style:
                      TextStyle(fontSize: 30, fontStyle: FontStyle.normal),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black,width: 1),
                      ),
                      child: const Icon(Icons.add),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(color: Colors.grey.shade300),
                          ]
                      ),
                      child: const Text("Personal",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                    ),
                    const Row(
                      children: [
                        Icon(Icons.mark_chat_read_outlined),
                        Icon(Icons.menu)
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black,width: 1),

                      ),
                      child: const Text("#All",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 2,),
                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black,width: 1),
                      ),
                      child: const Text("#work",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 2,),

                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black,width: 1),

                          boxShadow: const [
                            BoxShadow(color: Colors.greenAccent),
                          ]
                      ),
                      child: const Text("#Personal",style: TextStyle(fontSize:10,fontWeight: FontWeight.bold),),
                    ),
                    const SizedBox(width: 2,),

                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black,width: 1),
                      ),
                      child: const Text("#Fitness",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                const SizedBox(height: 30,),

                Expanded(
                  child: Stack(
                    children: [
                      _buildContainer(left: 20, right: 200, top: 50, bottom: 200,color:Colors.purple.shade300,angle: .25),
                      _buildContainer(left: 200, right: 25, top: 50, bottom: 200,color: Colors.greenAccent,angle: 9),
                      _buildContainer(left: 30, right: 200, top: 270, bottom: 0,color: Colors.lightBlueAccent.shade200,angle: .10),
                      _buildContainer(left: 200, right: 20, top: 250, bottom: 0,color: Colors.yellowAccent.shade200,angle: .15)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  _buildContainer({required double left, required double right, required double top, required double bottom, required Color color,required double angle}){
    return Positioned(
      left:left ,
      right: right,
      top: top,
      bottom: bottom,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(-.2),
        child: Container(
          height: 200,
          width: 200,
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(20),
          child: RichText(
            text: const TextSpan(
                text: "Not sure where this is going\n",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
                children: [
                  TextSpan(
                    text: " \n 4th Jan 2050\n", style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 12),
                  ),
                  TextSpan(
                    text: " \n Don't read the caption . its all same you dumb dumb, did you even read this though", style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      fontSize: 12),
                  ) ]),
          ),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black,width: 2)
          ),
        ),
      ),
    );
  }
}



