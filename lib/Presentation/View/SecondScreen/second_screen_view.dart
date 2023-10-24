import 'package:flutter/material.dart';

import 'package:futtersliver/Presentation/View/SecondScreen/Layout/second_screen_body.dart';

class SecondScreenView extends StatelessWidget {
  const SecondScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
      return [
        const SliverAppBar(title: Text('Second Screen'),
                        floating: true,
                        snap: true,
                        pinned: true,
                        bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.maps_home_work_sharp), text: 'Tab 1',),
                  Tab(icon: Icon(Icons.add_business_outlined), text: 'Tab 2',),
                  Tab(icon: Icon(Icons.add_card_outlined), text: 'Tab 3',),
                  Tab(icon: Icon(Icons.vaccines), text: 'Tab 4',)
                ],
              ),
        )
      ];
    }, body: const TabBarView(children: [
      SecondScreenBody(),
      SecondScreenBody(),
      SecondScreenBody(),
      SecondScreenBody(),
    ])),));
  }
}
