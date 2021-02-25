import 'package:flutter/material.dart';
import 'package:flutter_persist_bottomnav/samplePage.dart';

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog page"),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text("Item number $index"),
              subtitle: Text(DateTime.now().toString()),
              tileColor: index % 2 == 0 ? Colors.purple : Colors.pink,
              onTap: () {
                print("clicked on blog item number $index");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SamplePage();
                },));
              },
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
