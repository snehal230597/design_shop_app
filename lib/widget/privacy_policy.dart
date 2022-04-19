import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.network('https://greenlungs.in/assets/img/privacy+policy.jpg', fit:BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Create your Privacy and Cookie Policy by customizing from 1700+ clauses or by adding your own custom legal text. Our solution will guide you through. the newspaper, magazine articles, or any other types of publications, you are reading expository writing. When you write answers for an essay test, you use the expository form.  In an expository paragraph, you give information. You explain a subject, give directions, or show how something happens. In expository writing, linking words like first, second, then, and finally are usually used to help readers follow the ideas.  This paragraph, like any other, organizes itself around three parts. A topic sentence allows the reader to understand what you are writing about. The middle part of the paragraph contains supporting sentences that follow one another in a logical sequence of steps. The concluding sentence closes your subject with an emphasis on the final product or process Comparison: en este párrafo se presentan similitudes y diferencias entre dos o más objetos, sucesos, o cualquier Cause and effect: como su nombre indica, se presentan un hecho y aquello que lo ha causado o bien las consecuencias que este pueden devenir. Deductive: en este la idea principal se coloca al principio que, para construirla se parte de una generalización para luego presentar casos específicos. estos párrafos laos para llegar a una generalización que concluye lo que se afirmó. De conclusión: estos párrafos expresan el cierre de un apartado o un determinado tema'),
            ),
          ],
        ),
      ),
    );
  }
}
