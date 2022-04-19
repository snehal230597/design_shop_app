import 'package:flutter/material.dart';

class ChangeLanguageScreen extends StatelessWidget {

    List<String> country = ['English', 'Canadian', 'Arabic', 'Chinese', 'Hindi', 'Thai'];
    List<String> flag = [
     'https://cdn.britannica.com/73/4473-050-0D875725/Grand-Union-Flag-January-1-1776.jpg',
     'https://upload.wikimedia.org/wikipedia/en/thumb/c/cf/Flag_of_Canada.svg/1280px-Flag_of_Canada.svg.png',
     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW8YqnG6WtwXEwdLc0jcdiTNZ2FxtDUGxSavLjAj9gzVm8p3YQ00EeMG9JRod_bhcZhzc&usqp=CAU',
     'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/800px-Flag_of_the_People%27s_Republic_of_China.svg.png',
     'https://cdn.britannica.com/97/1597-004-05816F4E/Flag-India.jpg',
     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRicoY_peXim8mvOmFW7ubE9_L6IdnCbweX8QbOrDhRGdL9hemXqpC95Ttvow4K493zKM4&usqp=CAU',
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Choose Language",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        child: ListView.builder(
            itemCount: country.length,
            itemBuilder: (BuildContext context, index){
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: double.infinity,
                  child: Card(
                    elevation: 1,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            child: Image.network(flag[index], fit: BoxFit.fill,),
                          ),
                          SizedBox(width: 50),
                          Text(country[index], style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      )
    );
  }
}
