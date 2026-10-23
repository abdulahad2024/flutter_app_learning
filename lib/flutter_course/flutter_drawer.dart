import 'package:flutter/material.dart';

class FlutterDrawer extends StatelessWidget {
  const FlutterDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepPurple,
        title: Text("Flutter Drawer",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),

      drawer: Drawer(

        child: SingleChildScrollView(
          child: Column(
            children: [


              Container(
                width: double.infinity,
                color: Colors.deepPurple,
                child: Column(
                  children: [

                    SizedBox(height: 50,),

                    CircleAvatar(
                      radius: 35,
                      child: Icon(Icons.person,size: 50,),
                    ),


                    SizedBox(height: 5,),


                    Text("Abdul Ahad",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

                    SizedBox(height: 5,),


                    Text("abdul@gmail.com",style: TextStyle(color: Colors.white,)),
                    SizedBox(height: 50,),

                  ],
                ),

              ),


              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [

                      Icon(Icons.home),

                      SizedBox(width: 10,),

                      Text("Home"),

                    ],
                  ),
                ),
              ),



              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [

                      Icon(Icons.settings),

                      SizedBox(width: 10,),

                      Text("Settings"),

                    ],
                  ),
                ),
              ),


              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [

                      Icon(Icons.person),

                      SizedBox(width: 10,),

                      Text("Profile"),

                    ],
                  ),
                ),
              ),


              InkWell(
                onTap: () {

                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [

                      Icon(Icons.logout),

                      SizedBox(width: 10,),

                      Text("Logout"),

                    ],
                  ),
                ),
              ),









            ],
          ),
        ),

      ),



    );
  }
}
