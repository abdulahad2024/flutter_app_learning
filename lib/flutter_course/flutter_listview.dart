import 'package:flutter/material.dart';

class FlutterListview extends StatelessWidget {
  const FlutterListview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      appBar: AppBar(
        title: Text("Flutter ListTile",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),

      body: Column(
        children: [


          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("Home Page"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {

              },
            ),
          ),


          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("Home Page"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {

              },
            ),
          ),




          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("Home Page"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {

              },
            ),
          ),






          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("Home Page"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {

              },
            ),
          ),




          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("Home Page"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {

              },
            ),
          ),



        ],
      ),


    );
  }
}
