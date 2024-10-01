import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)=>const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:QuizApp(),
  );
}
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

@override
State createState()=>_QuizAppState();
}
class _QuizAppState extends State{
  List<Map>allQuestions=[{
    "question":"Who is the founder of Microsoft?",
    "options":["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
    "correctAnswer":1
  },
  {
    "question":"Who is the founder of Google?",
    "options":["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
    "correctAnswer":2
  },
  {
    "question":"Who is the founder of SpaceX?",
    "options":["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
    "correctAnswer":3
  },
  {
    "question":"Who is the founder of Apple?",
    "options":["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
    "correctAnswer":0
  },
  {
    "question":"Who is the founder of Microsoft?",
    "options":["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
    "correctAnswer":1
  }
  ];

  int currentQuestionIndex=0;
  int selectedAnswerIndex=-1;
  bool questionPage=true;
  WidgetStateProperty<Color?>checkAnswer(int answerIndex){
    if(selectedAnswerIndex!=-1){
      if(answerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
        return const WidgetStatePropertyAll(Colors.green);
      }else if(selectedAnswerIndex==answerIndex){
        return const WidgetStatePropertyAll(Colors.red);
      }else{
        return const WidgetStatePropertyAll(null);
      }
    }else{
    return const WidgetStatePropertyAll(null);
    }
  }
@override 
Widget build(BuildContext context)=>isQuestionScreen();
Scaffold isQuestionScreen(){
  if(questionPage==true){
    return Scaffold(
    appBar: AppBar(
    title:const Text("Quiz App",
    style:TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w900,
      color:Colors.black,
    ),
    ),
    backgroundColor: Colors.red,
    centerTitle: true,
  ),
  body: Column(
    children: [
      const SizedBox(
        height: 30,
      ),
      Row(
        children: [
          const SizedBox(
            width: 130,
          ),
          Text(
            "Question:${currentQuestionIndex+1}/${allQuestions.length}",
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 50,
      ),
      SizedBox(
        width: 380,
        height: 50,
        child: Text(
          allQuestions[currentQuestionIndex]["question"],
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.purple,
          ),
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      SizedBox(
        height: 50,
        width: 350,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: checkAnswer(0),
          ),
          onPressed: (){
            if(selectedAnswerIndex==-1){
              selectedAnswerIndex=0;
              setState(() {});
            }
          },
          child: Text(
            "A.  ${allQuestions[currentQuestionIndex]["options"][0]}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      SizedBox(
        height: 50,
        width: 350,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: checkAnswer(1),
          ),
          onPressed: (){
             if(selectedAnswerIndex==-1){
              selectedAnswerIndex=1;
              setState(() {});
            }
          },
          child: Text(
           "B.  ${allQuestions[currentQuestionIndex]["options"][1]}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      SizedBox(
        height: 50,
        width: 350,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: checkAnswer(2),
          ),
          onPressed: (){
             if(selectedAnswerIndex==-1){
              selectedAnswerIndex=2;
              setState(() {});
            }
          },
          child: Text(
           "C.  ${allQuestions[currentQuestionIndex]["options"][2]}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      SizedBox(
        height: 50,
        width: 350,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: checkAnswer(3),
          ),
          onPressed: (){
             if(selectedAnswerIndex==-1){
              selectedAnswerIndex=3;
              setState(() {});
            }
          },
          child: Text(
           "D.  ${allQuestions[currentQuestionIndex]["options"][3]}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ],
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: (){
      if(selectedAnswerIndex!=-1){
        if(currentQuestionIndex<allQuestions.length-1){
        currentQuestionIndex++;
        }else{
          questionPage==false;
        }
        selectedAnswerIndex=-1;
        setState(() {});
      }
    },
    backgroundColor: Colors.blue,
    child: const Icon(
      Icons.forward,
      color: Colors.white,
    ),
    ),
  );
  }else{
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz Result",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("data:image/jpeg;base64,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"),
          const SizedBox(height: 300),
            const Text("Congratulations",
            style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.orange,
            ) ,
            ),
            const SizedBox(height: 30),
            const Text("Score:"),
          ],
        ),
      ),
    );
  }
}
}