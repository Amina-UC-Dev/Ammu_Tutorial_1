import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> with TickerProviderStateMixin{
  
  TabController? tabController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //elevation
        elevation: 5,

        // leading
        leading: IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () {},
          tooltip: "Log Out",
        ),

        //title
        title: const Text("APP BAR WIDGET"),
        centerTitle: true,

        //action
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            tooltip: "Search",
          ),
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {},
            tooltip: "Profile",
          ),
        ],

        //bottom
        bottom: TabBar(
          controller: tabController,
          tabs: const [
          Tab(text: "TAB 1",),
          Tab(text: "TAB 2",),
        ],),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Center(child: Text("TAB 1 DATA")),
          Center(child: Text("TAB 2 DATA"))
        ],)
    );
  }
}
