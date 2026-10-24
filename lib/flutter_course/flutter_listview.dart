import 'package:flutter/material.dart';

class FlutterListview extends StatelessWidget {
  const FlutterListview({super.key});

  @override
  Widget build(BuildContext context) {


    final List<String> names = [
      "Abdul Ahad",
      "Abdul Rakib",
      "Abdul Rahim",
      "Abdul Karim",
      "Abdul Aziz",
      "Abdul Jabbar",
      "Abdul Majid",
      "Abdul Latif",
      "Abdul Wahab",
      "Abdul Malek",
      "Abdul Halim",
      "Abdul Quddus",
      "Abdul Mannan",
      "Abdul Monem",
      "Abdul Motaleb",
      "Abdul Salam",
      "Abdul Hamid",
      "Abdul Gafur",
      "Abdul Barek",
      "Abdul Hadi",
      "Abdul Faruk",
      "Abdul Alam",
    ];



    return  Scaffold(


      appBar: AppBar(
        title: Text("Flutter ListView",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: names.length,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black,width: 1),
              )
            ),
            child: ListTile(
              title: Text(names[index]),
            ),
          ),
        );
      }),





    );
  }
}
