import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> foods = [
      {"name": "Burger", "price": 270, "icon": Icons.fastfood},
      {"name": "Pizza", "price": 200, "icon": Icons.lunch_dining},
      {"name": "Fried Chicken", "price": 350, "icon": Icons.dinner_dining},
      {"name": "Pasta", "price": 220, "icon": Icons.ramen_dining},
      {
        "name": "French Fries",
        "price": 120,
        "icon": Icons.local_pizza, // কিংবা যেকোনো স্ন্যাক্স আইকন
      },
      {
        "name": "Hot Dog",
        "price": 150,
        "icon": Icons.hot_tub, // উদাহরণস্বরূপ বা অন্য আইকন
      },
      {"name": "Sandwich", "price": 180, "icon": Icons.bakery_dining},
      {"name": "Noodles", "price": 160, "icon": Icons.ramen_dining},
      {"name": "Soup", "price": 140, "icon": Icons.soup_kitchen},
      {"name": "Sushi", "price": 450, "icon": Icons.set_meal},
      {"name": "Grilled Fish", "price": 400, "icon": Icons.rice_bowl},
      {"name": "Steak", "price": 650, "icon": Icons.kebab_dining},
      {"name": "Tacos", "price": 250, "icon": Icons.lunch_dining},
      {"name": "Burrito", "price": 280, "icon": Icons.fastfood},
      {"name": "Donut", "price": 90, "icon": Icons.cake},
      {"name": "Ice Cream", "price": 130, "icon": Icons.icecream},
      {"name": "Milkshake", "price": 160, "icon": Icons.local_bar},
      {"name": "Coffee", "price": 100, "icon": Icons.coffee},
      {"name": "Juice", "price": 110, "icon": Icons.local_drink},
      {"name": "Pancake", "price": 210, "icon": Icons.breakfast_dining},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          itemCount: foods.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.5,
          ), itemBuilder: (BuildContext context, int index) {

            return Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15)

              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Icon(foods[index]["icon"], size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text(foods[index]["name"], style: TextStyle(color: Colors.white, fontSize: 20)),
                  SizedBox(height: 10),
                  Text("\$${foods[index]["price"]}", style: TextStyle(color: Colors.white, fontSize: 18)),



                ],

              ),

            );

        },


        ),
      ),
    );
  }
}
