import 'package:flutter/material.dart';
import 'SafeArea/qi_listView_safeArea.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter 学习记录'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          _sectionTypeListTile('SafeArea'),
          _normalDivider(),
          _safeAreaListTile(status: false),
          _safeAreaListTile(status: true),
          _sectionDivider(),
        ],
      ),
    );
  }

  Widget _safeAreaListTile({bool status}) {
    void pushToSafeAreaPage(bool status) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) =>
                  QiListViewSafeArea(enableSafeArea: status)));
    }

    if (status) {
      return ListTile(
        title: Text('带有 SafeArea 的页面'),
        onTap: () {
          pushToSafeAreaPage(true);
        },
      );
    } else {
      return ListTile(
        title: Text('不带 SafeArea 的页面'),
        onTap: () {
          pushToSafeAreaPage(false);
        },
      );
    }
  }

  Widget _sectionTypeListTile(String title) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            backgroundColor: Colors.grey, fontStyle: FontStyle.italic),
      ),
    );
  }

  Widget _normalDivider() {
    return Divider();
  }

  Widget _sectionDivider() {
    return Divider(
      height: 2.0,
      color: Colors.blue,
    );
  }
}
