import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: List.generate(20, (index) => noteItem(index)),
        ),
      ),
    );
  }

  Widget noteItem(int index) {
    int crossCount = 2;
    int mainCount = 3;
    if (index == 0 || index == 1) {
      crossCount = 2;
      mainCount = 2;
    } else if (index == 2) {
      crossCount = 4;
      mainCount = 2;
    }
    // else if(index == 3){
    //   crossCount = 3;
    //   mainCount = 1;
    // } else if(index == 4){
    //   crossCount = 1;
    //   mainCount = 1;
    // }

    return StaggeredGridTile.count(
        crossAxisCellCount: crossCount,
        mainAxisCellCount: mainCount,
        child: Container(
            color: Colors.yellow,
            child: Center(child: Text(index.toString()))));
  }
}
