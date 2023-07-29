import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home: FirstScreen(), debugShowCheckedModeBanner: false,),);
}

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: const Color.fromARGB(255, 37, 150, 190),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/quiz-2.png", width: 150,),
              const SizedBox(height:20,),
              const Text("Brainiac Challenge", style: TextStyle(color: Colors.amber, fontSize: 30, fontWeight: FontWeight.bold),),
              const Text("Are your ready to conquer the quiz?", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
              const SizedBox(height:100,),
              ElevatedButton(onPressed: (){
                print("Button pressed");
              }, style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255,0,70,95), padding: const EdgeInsets.symmetric(vertical: 15, horizontal:40)), child: const Text("Start quiz", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),)
            ],
          ),
        )
      ),
    );
  }
}