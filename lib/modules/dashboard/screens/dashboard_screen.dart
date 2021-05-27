// This folder consists of all the screens UI widgets that will be visible to the user.
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<String> entries = ['one', 'two', 'three', 'four'];
  final Set<String> favorites = Set<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: <Widget>[
          IconButton(onPressed: _goToProfile, icon: Icon(Icons.account_circle))
        ],
      ),
      body: _buildList(),
    );
  }

  void _goToProfile() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Profile'),
            ),
            body: Text('profile page'),
          );
        },
      ),
    );
  }

  Widget _buildList() {
    return ListView.separated(
      padding: const EdgeInsets.all(16.0),
      itemCount: entries.length,
      itemBuilder: (context, int index) {
        return _buildRow(entries[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }

  Widget _buildRow(String entry) {
    return Container(
      height: 50,
      child: Center(
        child: Text(entry),
      ),
    );
  }
}
