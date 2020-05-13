import 'package:flutter/material.dart';

class QiBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
      ),
      body: Center(
        child: Text('BottomNavigationBar'),
      ),
      floatingActionButton: FloatingActionButton(
        // child: Text('FAB'),
        child: Icon(Icons.add),
        onPressed: () {
          print('点击FAB');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(
          height: 44.0,
        ),
      ),
    );
  }
}
