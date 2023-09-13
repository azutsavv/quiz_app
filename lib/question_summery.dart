import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/texttwidget.dart';

class questionSummery extends StatelessWidget {
  const questionSummery(this.summerydata, {super.key});

  final List<Map<String, Object>> summerydata;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: 
            summerydata.map((data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment:Alignment.center, 
                    width: 25,
                    decoration:const  BoxDecoration(
                      shape: BoxShape.circle,

                      //color: (data['user_answer']==data['correct_answer'])?Colors.lightBlue:Color.fromARGB(255, 216, 47, 123)


                    ),
                    child: resultText(
                      string:((data['question_index'] as int) + 1).toString(),
                      size: 18,
                      ),
                  ),

                  const SizedBox(width: 10,),
          
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        resultText(
                          string:data['question'] as String,
                          size: 20,
                         ),
                        const SizedBox(height: 5,),
                                    
                        resultText(
                          string:data['user_answer'] as String,
                          color:Colors.lightBlue,),
                        const SizedBox(height: 2,),
                                    
                        resultText(
                          string:data['correct_answer'] as String,
                          color:const Color.fromARGB(255, 216, 47, 123),),
                        const SizedBox(height: 2,),
                      ],
                    ),
                  )
                ],
              );
            }
            ).toList() 
          
        ),
      ),
    );
  }
}
