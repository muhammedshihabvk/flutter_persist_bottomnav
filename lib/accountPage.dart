import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Page"),
      ),
      body: ListView.builder(itemCount: 100,itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(title: Text("Account Item number $index"),subtitle: Text(DateTime.now().toString()),tileColor: index%2==0? Colors.purple : Colors.blueGrey,onTap: () {
            print("clicked on Account item number $index");
          },),
        );
      },),
    );
  }
}
