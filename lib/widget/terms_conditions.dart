import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Image.network('https://www.bebconsultancy.co.uk/wp-content/uploads/2019/09/Website-Terms-and-Conditions-Guide-1-1200x675.jpeg', fit:BoxFit.fill),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('THE EXPOSITORY PARAGRAPH  When you read your textbook, the newspaper, magazine articles, or any other types of publications, you are reading expository writing. When you write answers for an essay test, you use the expository form.  In an expository paragraph, you give information. You explain a subject, give directions, or show how something happens. In expository writing, linking words like first, second, then, and finally are usually used to help readers follow the ideas.  This paragraph, like any other, organizes itself around three parts. A topic sentence allows the reader to understand what you are writing about. The middle part of the paragraph contains supporting sentences that follow one another in a logical sequence of steps. The concluding sentence closes your subject with an emphasis on the final product or process Comparison: en este párrafo se presentan similitudes y diferencias entre dos o más objetos, sucesos, o cualquier Cause and effect: como su nombre indica, se presentan un hecho y aquello que lo ha causado o bien las consecuencias que este pueden devenir. Deductive: en este la idea principal se coloca al principio que, para construirla se parte de una generalización para luego presentar casos específicos. Inductive: en oposición al anterior, en estos párrafos la idea principal se coloca al final. En estos se parte de casos específicos para llegar a una generalización que concluye lo que se afirmó. De conclusión: estos párrafos expresan el cierre de un apartado o un determinado tema'),
          ),
        ],
      ),
    );
  }
}
