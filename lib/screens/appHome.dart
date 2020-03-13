import 'package:data4pakistan/screens/comparisons.dart';
import 'package:data4pakistan/screens/districtProfile.dart';
import 'package:data4pakistan/screens/rankings.dart';
import 'package:flutter/material.dart';

class AppHomePage extends StatefulWidget {
  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabcontroller;
  List<Tab> _tabs = <Tab>[];
  List<Widget> _tabViews = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this);
    _tabs = [
      Tab(
        icon: Icon(
          Icons.library_books,
          size: 35,
        ),
        child: Text(
          'Dsitrict Profiles',
          style: TextStyle(fontSize: 10),
        ),
      ),
      Tab(
        icon: Icon(
          Icons.sort,
          size: 35,
        ),
        child: Text(
          'Rankings',
          style: TextStyle(fontSize: 10),
        ),
      ),
      Tab(
        child: Text(
          'Compare',
          style: TextStyle(fontSize: 10),
        ),
        icon: Icon(Icons.compare,
        size: 35,),
      )
    ];
    _tabViews = [
      DistrictProfilePage(),
      RankingsPage(),
      ComparisonsPage(),
    ];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data 4 Pakistan'),
        centerTitle: true,
      ),
      drawer: Drawer(),
      bottomNavigationBar: Material(
          color: Theme.of(context).primaryColor,
          // color: Colors.blueGrey.shade200,
          // color: Colors.blueGrey.shade50,
          elevation: 10.0,
          child: Container(
            height: 70.0,
            child: TabBar(
              tabs: _tabs,
              controller: _tabcontroller,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 6.0,

              indicatorColor: Theme.of(context).accentColor,
              // labelColor: Theme.of(context).accentColor,
              // isScrollable: true,
            ),
          )),
      body: TabBarView(
        children: _tabViews,
        controller: _tabcontroller,
      ),
    );
  }
}
