import 'package:flutter/material.dart';
import 'package:flutter_note/ui/pages/home/home_page_body.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter note"),
      ),
      body: const HomePageBody(),
      floatingActionButton: FloatingActionButton(onPressed: (){

      },
        child: Icon(Icons.add),
      ),
    );
  }

}
