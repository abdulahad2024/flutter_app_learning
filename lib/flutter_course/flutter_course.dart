import 'package:flutter/material.dart';

class FlutterCourse extends StatefulWidget {
  const FlutterCourse({super.key});

  @override
  State<FlutterCourse> createState() => _FlutterCourseState();
}

class _FlutterCourseState extends State<FlutterCourse> {

  int count = 0;

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Course",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


          Padding(
          padding: const EdgeInsets.all(20),
            child: Center(
              child: TextField(
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(

                    onPressed: () {

                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });

                    }, icon: Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                  )
                )
              )
            ),
          ),




              SizedBox(height: 50,),


              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    count.toString(),
                    style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(height: 20,),


              Row(
                children: [


                  Expanded(
                    child: SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),

                        onPressed: () {


                          setState(() {

                            count++;

                          });


                        }, child: Text("Increment",style: TextStyle(color: Colors.white),),),
                    ),
                  ),

                  SizedBox(width: 20,),

                  Expanded(
                    child: SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),

                        onPressed: () {

                          setState(() {

                            count--;

                          });

                        }, child: Text("Decrement",style: TextStyle(color: Colors.white),),),
                    ),
                  ),



                ],
              )




            ],
          ),
        ),
      ),
    );
  }
}
