import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  TabBarPage({super.key});

  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'Android'),
    new Tab(text: 'IOS'),
    new Tab(text: 'Flutter'),
    new Tab(text: 'RN'),
    new Tab(text: 'Java'),
    new Tab(text: 'C'),
    new Tab(text: 'C++'),
    new Tab(text: 'Go'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBarPage'),
          bottom: TabBar(
            tabs: myTabs,
            indicatorColor: Colors.red,
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          //选中哪个Tabs，body就会显示
          children: myTabs.map((Tab tab) {
            return Center(child: Text(tab.text?.toString() ?? 'default text'));
          }).toList(),
        ),
      ),
    );
  }
}
