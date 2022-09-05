import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 90,
          title: Text("New English", style: TextStyle(fontSize: 25)),
          centerTitle: true,
          backgroundColor: Color.fromARGB(223, 10, 12, 24),
          actions: [Icon(Icons.person)]),
      drawer: Drawer(),
      body: Column(
        children: [
          Column(
            children: [
              Icon(Icons.person, size: 150),
              Text("Welcome", style: TextStyle(fontSize: 25),),
            ],
          ),
          Text("Recommended", style: TextStyle(fontSize: 20),),
          Row(children: [
            Icon(Icons.coffee, size: 100,),
            Text("Coffee Shop", style: TextStyle(fontSize: 25),),
          ],),
          Expanded(
            child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8),
            children: [
              Container(child: Icon(Icons.restaurant, size: 100), color: Colors.grey[400],),
              Container(child: Icon(Icons.school, size: 100), color: Colors.grey[400],),
              Container(child: Icon(Icons.movie, size: 100), color: Colors.grey[400],),
              Container(child: Icon(Icons.park, size: 100), color: Colors.grey[400],),
              Container(child: Icon(Icons.shop, size: 100), color: Colors.grey[400],),
              Container(child: Icon(Icons.waving_hand, size: 100), color: Colors.grey[400],),
            ],),
          )
        ],
      ),
    );
  }
}
