import 'package:flutter/material.dart';

class SecondScreenBody extends StatelessWidget {
  const SecondScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [

        SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          return  Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  'Item ${index + 1}',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ));
        },
         childCount: 50))
      ],
    );
  }
}
