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
  int count=0;
  bool questionPage=true;
  WidgetStateProperty<Color?>checkAnswer(int answerIndex){
    if(selectedAnswerIndex!=-1){
      if(answerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
        count++;
        return const WidgetStatePropertyAll(Colors.green);
      }else if(selectedAnswerIndex==answerIndex){
        count--;
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
          questionPage=false;
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
            color: Colors.orange,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child:  Container(
        color:  Colors.black54,
        width: 300,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Result",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            ),
              const SizedBox(
              height: 50,
            ),
            Image.network("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQAngMBEQACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABgEDBAUHAgj/xABJEAABAwMABQUKCgYLAAAAAAABAAIDBAURBhIhMVETQWFx0RQWIiMyVJGxweEHFRczUmSBk6GjNEJicpKiNkNEc3SCg7LC4vD/xAAaAQEAAgMBAAAAAAAAAAAAAAAABAUBAgMG/8QANREAAgEDAQUGBQMDBQAAAAAAAAECAwQREgUTITGhFTJBUmHhIlFjcZEUM/AWscEjQlNigf/aAAwDAQACEQMRAD8A7igCAICxUVdPTN1p5mRj9orlUrU6azN4NowlLuoxorzbpZBG2rj1nHDQ46uT0ZXKne29V4hNZN5UKkVloz85Uo5FUAQBAEAQBAEAQHl72saXPcGtG8k4AWspJLLYXEwHXy2tdh1ZH17cencoqv7VvTrR2/T1cZ0mbDNFPGJIJGSMO5zHZB+1SoyUllM5NNPDLi2MBAEAQBAYN3r22+idMQC4nVYOLiol5cq3pOb/APDrRpbyekjlpp6y9PdUul5KnyRypGs6U8+OAVNbWdW8e9qy4MnVa0KHwRXEybnozC2kkfTvc4taS5jwCHBdLnY8YQc6LeUa0r6Tlia4GDZtJJaOldS1DDUvhfhr3SYJYRkZODngtaW13Sox1LL/AJ6G1Sy1zbi8I2HfYfMD97/1W3bq/wCPr7GvZ/8A26e5Tvt+o/ne5Y7e+n19jPZ783T3Hfb9R/O9ydvfT6+w7Ofm6e477fqP53uTt76fX2HZz83T3Hfb9R/O9ydvfT6+w7Ofm6e477fqP53uTt76fX2HZz83T3Hfb9R/O9ydvfT6+w7Ofm6e5bqdMuRhdJ8X62Oblsf8VvDbeuWNHX2MPZ+P93T3MKqu09/7lihZyQkG2LW1hrZ5zgKJe3VS8qxow4JnWhRjQi5yNu3Ram5LDp5eVx5Qxj0Kath0dGHJ5ODv555I0dQ2r0WrxNES6AnMjBsbK3nOOZwUWDrbOrKEnmLOz0XUMpcUTmnmZPDHLEdaORoc13EHaF6WMlJZRVtYeGXFkwEAQBARjTkuFFFqZz4ZGOOFR7b7sPuT9n96X2NvYGRtslCIcanIMx6FbW6W6jgiVe+zPc0FpBGwhdWk1hnNcCG3+1UlsET6Vjg6V5LnOdndjA6l5nattToQhu14lpaVpVG9XyLk4Bp3nH6h9ShyS0M7rmaFV5JCAIAgCAIDGuX6G/rHrXa3/cRrImGiFspTbKGtLDywa479m8jOF6m0sqPw18fFgqLivPLh4ElwrQiEe01aw2sF2Mh5x6DlU+2Ut1F+pNsc7x/YytES46OUOvv5PA6s7FPtP2I/Y4V/3JG4Uk4hAEAQGsv9Ca63uawZfGddg4nh6FA2jbb+g0ua4okW1Xd1MvkabQ25tiZ8VVB1XNJNOT+s3fq9Y9SjbKvFUhu5c0dryg4vWuTJXvCuCCR7TFp7kp38JcekHsVFt1f6MX6/4ZOsO+/sYMZ5SkaeMfsVSuMSc+DNEq8kBAEAQBAEBiXR2KXHFwC72y+M1lyOhaLM1NHbaCNpga70jPtXtLRYoQ+xRV3mrI2pIG9d28HIg2k1Y6810NuoTrazixhHP9J3UAvOXVV3tyqcO6v7lpQhuKTnLmyZ0VOykpIaaIYZEwMb1AYXoYRUIqK8Csk9TbZfW5gIAgCAodyAjGkVhMhdV0QOsDrOY3YQfpN6VRX+z5KW/oc/kT7a5WN3U5FbJpHnVpbo4Nk8lk+4P6HcD+C62O041fgqcJGtxauHxQ5GdpTFyloc4f1b2u9ntXTa8NVq/Q0s5aaq9TSW5wdSsHOMheeovMCzmuJqHt1ZHN4EhQmsM7LkeVgyEAQBAEBr7uS4RRt8oknH4KXax4tmk3wOp07WUVvhY9zWMhia0knAGBhezTjSppt8EUDzKXAi97v0ta8UVvje8POqGt8qXsCobq9neS3NDl8yxpW8aK11Da6OWMW0GoqS19bKMOI3MH0R/wC2q1srONtH1IlxXdV+hvMYU4jlUAQBAEAQBAaO9WCKua6SABkxG0HyX9aqb7Zka3x0+EiXb3Tp/DLkaCmuM9FHLa7kXdzvbybXP8qFx3Z4t9XUoFK6m4ytbj5YJNSjFtVqRS0vIdJC7Ydh7VV0G03Fkup8zFrm6tVIOJyuNVYmzeD4FhczYIAgCArnCAwqfUnv8AlPiYXhzz0N8Ij2Kzs1GOJS5czhXy4tRN/VVldpDXGlo2gNbtOfIjHF3E9CkylX2lUwuECPGNO1jl8WSazWWntTCY8yTu8uZ+NZ3R0DoV9bWtO3jiBX1a06rzI2gUk5BAEAQBAEAQBAeZHtYxznEBrRkngsOSissJNvCIhpRVW2tpmvhfrSglrthHg4O/7cLzW0ri2raZUnmSfQtLSnVptqS4Gpo2S0cVDNMD42IP28Cq+vSlQqRk+UuJKhNVE0vAybqzxjJBta5uMrlcLimbU34GAo50CAIAgLdRKIYXSO5hs6St6cXKSRhvCMagoqjuCW4gZ13mKMnndjJ/FWFek40ozfdycYzTqOHiTPRuutdDQ0VG2XVqZwC/WacukI25PFXljdW2iNOD4lbcUqrk5NcCTBWhEKoAgCAIAgCAIAgPMjGyMcx4Ba4YI4hYlFSWGZTw8o0vexbuUDntkewH5su8E9fEKtp7Ktqc9SRJleVWsF6+20VtEBE0crFtjx6lttGzVxR+HmuRrbVt3PjyZFY390Upgd86zwm55wOb1ry3GUXCXNFvyeVyMJRjqEAQA7EBgak13uEVDSDOTv5ulx6AFZ2ls5NRXNnGrUUY6jptPa6WK2R28Rh0DG6uCN55z15yvUfpqbpbprKKXey160+JiQaNUEVXHU4lc6J2tG1zvBafao9DZtCjLVE6zu6k46WbkKwIxVAEAQBAEAQBAEAQBAEBGNILJKZHVtubrSb5IRsLulvT0c6pdobM3r3tPvE62utC0T5EX7oZK92TqyZ8JhGqQekcy83UpzjL4lxLSLTXA9rkbFqWeKIZkeB0c63jTlLkjGUYbXVV1qBSW+Jzi7eBw6TzBT7a0beEss5VKsYrLOg6MaPxWWnJcRJVSDxknD9kdC9Na2saEfUqK1d1X6G7ClnAqgCAIAgCAIAgCAIAgCAIAgKYQEW04s7Kynjq4xqyRZD3NG0g8er2qo2rTehVIrlzJtlNKWlvmQl1unHkytI6SQvPq4h8i00ssT0TomjWe1z3HDWNGSSutKpvHiKNZLCyzqOjVtFstEEL2NbMW60pA2lx2/hnC9Va0d3TS8SlrT1zbNspByCAIAgCAIAgCAIAgCAIAgCAIAgPEjQ4FrgC0jBB3ELEkmsMI5bXGrbV1HczY3RGV2oBgYbk4HoXiaioupLw4v+5fwctCyZmh0evpMBXMa+TkXOj1tuq7I2j7Mq02Vu3VwkRbzUqfM6QNy9GVRVAEAQBAEAQBAEAQBAEAQBAEAQBAYd2qRR0E0xO0NIaOJOwKNeVlRoym/4zpRg51FEgDw5pw7OcDK8M+fEv1yLUNR8X3eir8eLY/UkP7J3/hlWGza27qo43ENdNo6e0hzQ5pyDtBC9inlFEVWQEAQBAEAQBAEAQBAEAQBAEAQHl72sYXPcGtG8nZhYcklljHgiK3Ws+NqpsUWe5Ijkn6ZXmL+6/VTUId1dS0t6O6Wp82aWu/TJOv2Koq99k6HdMaWNssZjeMtK0jJxeUbEi0SveI2Wu4PDZmeDBI47JW8OsL1mzr6NWOiXMqLq3cZao8iWZCtiEVQBAEAQBAEAQBAEAQBAEAQGtv97o7BbnV9wMnIh7WeLYXOJccDYspZBz+/af26ulY2mNcIQ3wmGLAJzvxlVO0bK6uGt2/h+5Ktq9Gmvi5mtGndDC0MaZmAbgIR2quWx72KwsfklfraHqWJNNLXI8veagk7/Fe9c3sS7by8fk2V/RSPPfjafrH3XvWOw7r0/I/X0jzJpdZ3tIcJzw8V71tHYt3F5WPyYd/RfBm+0d+E+z0FubFdqitfKHnDzEXYbsxtznivRW1KrCGKjyyuqzhKWYcjqDTrAEbiu5zKoAgCAIAgCAIAgCAIAgCAhHwwEM0Oc481VCf5ltDmYfI5No3be+K5OpZJ3wxtj1hqdYCi7Qu521NSists621FVZNMkkvwe0UQ8ZcZWk82zJ/BVEtt1481HqTFYQfi+hjnQih5q2pP2NHsXL+oK/lXU37Oh5n0HeRRed1P8vYn9QV/Kuo7Oh5n0MKt0Wo6eQMZUzuyMnOr2KRS2zWmsuK6mr2fBeJD7gzkxLHnOq8t68ZXoIS1QUvmVrWmTR9XQ/NM/dHqXMye0AQBAEAQBAEAQBAEAQBAQf4ZP6FS/wCJi/3LaHMwzmPwevMd4nczGsIDj+IKo262qEX6/wCCXs/DqP7E7cS4knJJ3kryTbbLrh4Hhz2s8twb1lFFvkgYk9xjYMReG7jzLvC3k+8auSNW97pHuc86znc5U6MUlhGjZz27fO1P96/1levpftx+xQT77PqyH5pn7o9S1B7QBAEAQBAEAQBAEAQBAUKA5x8Lt6tk+jM9BFX0z6xlTGHQNkBe3DtuR0LaPMwzjUVSYH68E7on4xrRuLT6QtpwjNYksmE2uRdNzqjvuFSf9d3auf6aj5F+DbeT+bPJrpz/AGyb713as7il5V+BvJ/Md3zedy/eu7U3FLyobyfzHd03nc33ru1Z3FLyobyfzMOpcHREA6xPDeuhofUlpvVsujS2219NVOiaNcRSBxbniuJubJAEAQBAEAQBAEAQBAW3Oe3dGT9oQFsyy81Of4gs4McTkF++Ci8XG919dBWUjI6mofM1rw7LQ5xODjrW6eDDTMH5Hb55/Reh/YmoYHyO3zz+i9D+xNRjA+R2+ef0Xof2JqGB8jt88/ovQ/sTUMD5Hb55/Reh/YmoYK/I7fPP6H0P7E1GcEs+DXQS4aH3C4VdXNDUd0xMja2HIxgk5OVq8MydBEkp3wEf5gsAuNLneUzH2rBk9oAgCAIAgCAIAgCALAKJgBZwBhAMIBhAMIAgCxgFUAWQEAQBAEB//9k="),
          const SizedBox(height: 30),
            const Text("Congratulations !!",
            style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.red,
            ) ,
            ),
            const SizedBox(height: 10),
            Text("Score: $count/5",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w200,
              color: Colors.white,
            ),
           ),
          ],
        ),
      ),
      )
    );
  }
}
}