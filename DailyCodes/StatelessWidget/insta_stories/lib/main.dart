import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
 const MyApp({super.key});

 @override
 Widget build(BuildContext context)=>const MaterialApp(
  debugShowCheckedModeBanner: false,
  title:"Instagram",
  home:HomeScreen(),
 );
}
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(
      title:const Text("Insta_Stories"),
      backgroundColor: Colors.blue,
      centerTitle: true,
    ),
    body:SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              color: Colors.amber,shape:BoxShape.circle,
            ),
          ),
           Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              color: Colors.purple,shape:BoxShape.circle,
            ),
          ),
           Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              color: Colors.orange,shape:BoxShape.circle,
            ),
          ),
           Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              color: Colors.black,shape:BoxShape.circle,
            ),
          ),
           Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              color: Colors.red,shape:BoxShape.circle,
            ),
          ),
        ],
      ),
    ),
  );
}