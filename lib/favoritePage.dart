import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Page"),
      ),
      body: ListView.builder(itemCount: 100,itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(title: Text("Fav Item number $index"),subtitle: Text(DateTime.now().toString()),tileColor:index%2==0? Colors.deepOrange : Colors.orange,onTap: () {
            print("clicked on Fav item number $index");
          },),
        );
      },),
    );
  }
}
