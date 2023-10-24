import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futtersliver/Presentation/Elements/custom_text_field.dart';
import 'package:futtersliver/Presentation/View/Home/home_body.dart';
import 'package:futtersliver/Presentation/View/SecondScreen/second_screen_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSort = false;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: CustomScrollView(
            slivers: [
              SliverSafeArea(
                sliver: SliverAppBar(
                    title: const Text('SliverAppBar'),
                  expandedHeight: 200,
                  floating: true,
                  snap: true,
                  backgroundColor: Colors.purple,
                  stretchTriggerOffset: 10,
                  stretch: false,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: InkWell(
                          onTap: (){
                            setState(() {
                              isSort = !isSort;
                              print('Sort = $isSort');
                            });
                          },
                          child: const Icon(Icons.sort)),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondScreenView(),));
                        },
                        child: const Icon(Icons.network_ping_rounded),
                      )
                    ),
                  ],
                  pinned: true,

                  flexibleSpace: FlexibleSpaceBar(background: Image.network('https://images.unsplash.com/photo-1574169208507-84376144848b?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D', fit: BoxFit.fill,)),
                ),
              ),
               SliverAppBar(
                 pinned: true,
                 backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                bottom: const PreferredSize(preferredSize: Size.fromHeight(10), child: SizedBox()),
                flexibleSpace: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomTextField(),
                ),
              ),
              isSort? const HomeBody2() : const HomeBody(),
            ],

        ),

      ),
    );
  }
}
