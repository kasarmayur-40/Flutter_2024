import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)=> MaterialApp(
    home:Scaffold(
      appBar:AppBar(
        title:const Text("Container_App"),
        centerTitle: true,
        backgroundColor:Colors.blue,
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height:100,
              color:Colors.red,
            ),
            Container(
              width:100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width:100,
              height: 100,
              color: Colors.black,
            ),
          ],
        ),
      ),
    ),
  );
}