import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.userName});
  final String userName;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.exit_to_app_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottom: TabBar(
          isScrollable: true,

          labelColor: Colors.white,
          unselectedLabelColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green,
            shape: BoxShape.rectangle,
          ),
          dividerColor: Colors.transparent,
          dividerHeight: 0,

          controller: tabController,
          tabs: [
            Tab(text: widget.userName),
            Tab(text: "New"),
            Tab(text: "OutDoor"),
            Tab(text: "Indoor"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          // tab 1
          ExpansionTile(
            onExpansionChanged: (value) {},

            subtitle: Text("This is description of title "),
            leading: Icon(Icons.architecture),
            shape: Border(),
            collapsedShape: Border(),
            title: Text("This is new "),
            children: [
              Text(
                "data. data datadata datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata",
              ),
            ],
          ),

          //tab2
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                enableDrag: true,
                showDragHandle: true,
                elevation: 10,
                backgroundColor: Colors.white,
                builder: (context) {
                  return SizedBox(width: 400, height: 200);
                },
              );
            },
          ),
          //tab 3
          Text("This is Tab three body "),
          //tab4
          Text("This is Tab four body "),
        ],
      ),
    );
  }
}

class TabBarBodyForAll extends StatelessWidget {
  const TabBarBodyForAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          child: Text("data of all "),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
          child: Text("data of all "),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Text("data of all "),
        ),
      ],
    );
  }
}
