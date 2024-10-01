import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)=> MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 353,
                    width: 5,
                    color: const Color.fromARGB(255, 160, 67, 10),
                  ),
                ]
              ),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 200,
                color: Colors.orange,
              ),
              Container(
                height: 40,
                width: 200,
                color: Colors.white,
                child:Image.network("data:image/png;base64,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"),
              ),
              Container(
                height: 40,
                width: 200,
                color: Colors.green,
              ),
            ],
          ),
          ],
        ),
      ),
      ),
    );
}
