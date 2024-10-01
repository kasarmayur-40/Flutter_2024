import 'package:flutter/material.dart';

void main(){
  runApp(const ToggleColor()); 
}
class ToggleColor extends StatefulWidget{
  const ToggleColor({super.key});

  @override
 State createState()=>_ToggleColorApp();
}
class _ToggleColorApp extends State{
  bool changeColor=true;
  @override
  Widget build(BuildContext context)=> MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar:AppBar(
        title:const Text("Toggle_Color"),
        centerTitle: true,
        backgroundColor:changeColor? Colors.blue:Colors.orange,
      ),
      body:Center(
        child:Container(
          width:150,
          height:150,
          color:changeColor? Colors.red:Colors.black,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(changeColor==true){
            changeColor=false;
          }else{
            changeColor=true;
          }
          setState(() {});
        },
        backgroundColor: Colors.blue,
        child:const Icon(Icons.add),
      ),
    ),
  );
}