import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeBody extends StatefulWidget  {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context, index){
      return Card(child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text('Item ${index+1}' , style: const TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
      ));
    }, childCount: 50,));
  }
}


class HomeBody2 extends StatelessWidget {
  const HomeBody2({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(delegate: SliverChildBuilderDelegate((context, index) {
      return Card(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Text(
            'Item ${index+1}' , style: const TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
        ),
      ));
    },
    childCount: 50
    ), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}
