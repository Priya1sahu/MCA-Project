import 'package:flutter/material.dart';

class GridView1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    final title = 'Grid List';

    List<String> listData = [
      'Priya',
      'Kajal',
      'Riya',
    ];

    return MaterialApp(
     title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            title),

        ),
        body: GridView.count(
          crossAxisCount:2,
          children: List.generate(listData.length, (index){
            return Center(
            child: Text(
            listData[index].toString(),
           style: Theme.of(context).textTheme.headline,
            ),
            );
    },

        ),
      ),
      ),
    );

  }
}