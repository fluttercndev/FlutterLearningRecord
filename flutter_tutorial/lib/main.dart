import 'package:flutter/material.dart';
import 'SafeArea/qi_listView_safeArea.dart';
import 'Wrap/qi_warp.dart';
import 'AnimatedContainer/qi_AnimatedContainer.dart';

enum LearningWidgetType {
  SafeArea,
  Expanded,
  Wrap,
  AnimatedContainer,
}

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
      // body: Center(child: otherColumn(),),
      body: ListView(
        children: <Widget>[
          _sectionTypeListTile('SafeArea'),
          _normalDivider(),
          _safeAreaListTile(status: false),
          _safeAreaListTile(status: true),
          _sectionDivider(),
          _sectionTypeListTile('Expanded'),
          _normalRow(),
          _normalDivider(),
          _expandedRow1(),
          _normalDivider(),
          _expandedRow2(),
          _normalDivider(),
          _expandedRow3(),
          _expandedRow32(),
          _normalDivider(),
          _expandedRow4(),
          _sectionDivider(),
          _sectionTypeListTile('Wrap', widgetType: LearningWidgetType.Wrap),
          _sectionTypeListTile('AnimatedContainer',
              widgetType: LearningWidgetType.AnimatedContainer),
        ],
      ),
    );
  }

  Row _normalRow() {
    return Row(
      children: <Widget>[
        Text(
          '0. Normal Row',
          style: TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
        ),
        Text(
          'Right Text',
          style: TextStyle(fontSize: 32.0, backgroundColor: Colors.yellow),
        ),
      ],
    );
  }

  Row _expandedRow1() {
    return Row(
      children: <Widget>[
        Container(
          width: 212.0,
          child: Text(
            '1. ExpandedRow LeftText',
            style:
                TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
          ),
        ),
        // Expanded(
        //     child: Container(
        //   decoration: BoxDecoration(
        //       color: Colors.blueAccent,
        //       border: Border.all(style: BorderStyle.solid, color: Colors.red)),
        //   child: Center(
        //     child: Text(
        //       '蓝色Expanded',
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ),
        //   // color 不能和 decoration 同时使用
        //   // color: Colors.blueGrey,
        // )),
        Expanded(
            child: Container(
          color: Colors.red,
          height: 20.0,
        )),
        Container(
          width: 150.0,
          child: Text(
            'Right Text',
            style:
                TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
          ),
        )
      ],
    );
  }

  Row _expandedRow2() {
    return Row(
      children: <Widget>[
        Container(
          width: 200.0,
          child: Text(
            '2.Expanded Row LeftText',
            style:
                TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
          ),
        ),
        Expanded(
            child: Container(
          child: Center(child: Text('黄色Expanded')),
          height: 20.0,
          color: Colors.yellow,
        )),
        Text(
          'Right Text',
          style: TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
        )
      ],
    );
  }

  Row _expandedRow3() {
    return Row(
      children: <Widget>[
        Text(
          '3.LeftText',
          style: TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
        ),
        Expanded(
            flex: 2,
            child: Container(
              height: 20.0,
              color: Colors.yellow,
            )),
        Container(
          width: 100.0,
          height: 50.0,
          child: Text(
            'C',
            style:
                TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              height: 20.0,
              color: Colors.yellow,
            )),
        Container(
          width: 100.0,
          height: 50.0,
          child: Text(
            'Right',
            style:
                TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
          ),
        ),
      ],
    );
  }

  Row _expandedRow32() {
    return Row(
      children: <Widget>[
        Container(
          width: 200.0,
          child: Text(
            '3.2 ExpandedRow LeftText',
            style:
                TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
          ),
        ),
        Expanded(
            flex: 2,
            child: Container(
              height: 20.0,
              color: Colors.yellow,
            )),
        Container(
          width: 100.0,
          height: 50.0,
          child: Text(
            'C',
            style:
                TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              height: 20.0,
              color: Colors.yellow,
            )),
        Container(
          width: 100.0,
          height: 50.0,
          child: Text(
            'Right',
            style:
                TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
          ),
        ),
      ],
    );
  }

  Row _expandedRow4() {
    return Row(
      children: <Widget>[
        Container(
          width: 200.0,
          child: Text(
            '4.Expanded Row',
            style:
                TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              height: 20.0,
              color: Colors.yellow,
            )),
        Container(
          width: 100.0,
          height: 50.0,
          child: Text(
            'C',
            style:
                TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              height: 20.0,
              color: Colors.yellow,
            )),
        Container(
          width: 100.0,
          height: 50.0,
          child: Text(
            'Right',
            style:
                TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
          ),
        ),
      ],
    );
  }

  ListView safeArea() {
    return ListView(
      children: <Widget>[
        // _sectionTypeListTile('SafeArea'),
        // _normalDivider(),
        // _safeAreaListTile(status: false),
        // _safeAreaListTile(status: true),
        // _sectionDivider(),
      ],
    );
  }
  // Column _normalColumn() {
  //   return Column(
  //     children: <Widget>[
  //       Text(
  //         '1. Left Text',
  //         style: TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
  //       ),
  //       Text(
  //         'Right Text',
  //         style: TextStyle(fontSize: 32.0, backgroundColor: Colors.yellow),
  //       ),
  //     ],
  //   );
  // }

  // Column _expandedColumn() {
  //   return Column(
  //     children: <Widget>[
  //       Text(
  //         '2. Left Text',
  //         style: TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
  //       ),
  //       Expanded(
  //           child: Container(
  //         decoration: BoxDecoration(
  //             color: Colors.blueAccent,
  //             border: Border.all(style: BorderStyle.solid, color: Colors.red)),
  //         child: Center(
  //           child: Text(
  //             '蓝色Expanded',
  //             style: TextStyle(color: Colors.white),
  //           ),
  //         ),
  //         // color 不能和 decoration 同时使用
  //         // color: Colors.blueGrey,
  //       )),
  //       Text(
  //         'Right Text',
  //         style: TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
  //       )
  //     ],
  //   );
  // }

  // Column otherColumn() {
  //   return Column(children: <Widget>[
  //     Container(
  //       color: Colors.blue,
  //       height: 100,
  //       width: 100,
  //     ),
  //     Expanded(
  //       child: Container(
  //         color: Colors.amber,
  //         width: 100,
  //       ),
  //     ),
  //     Container(
  //       color: Colors.blue,
  //       height: 100,
  //       width: 100,
  //     ),
  //   ]);
  // }

  // Column _expandedColumn2() {
  //   return Column(
  //     children: <Widget>[
  //       Container(
  //         width: 100.0,
  //         height: 100.0,
  //         child: Text(
  //           '3. Left Text',
  //           style:
  //               TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
  //         ),
  //       ),
  //       Expanded(
  //           child: Container(
  //         child: Center(child: Text('黄色Expanded')),
  //         // height: 20.0,
  //         width: 20.0,
  //         color: Colors.yellow,
  //       )),
  //       Container(
  //         width: 100.0,
  //         height: 100.0,
  //         child: Text(
  //           'Right Text',
  //           style:
  //               TextStyle(fontSize: 32.0, backgroundColor: Colors.greenAccent),
  //         ),
  //       )
  //     ],
  //   );
  // }

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

  // Widget _sectionTypeListTile(String title, LearningWidgetType type) {
  //   return ListTile(
  //     title: Text(
  //       title,
  //       style: TextStyle(
  //           backgroundColor: Colors.grey,
  //           fontStyle: FontStyle.italic,
  //           color: Colors.white,
  //           fontSize: 60.0),
  //     ),
  //   );
  // }

  Widget _sectionTypeListTile(String title, {LearningWidgetType widgetType}) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            backgroundColor: Colors.grey,
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontSize: 60.0),
      ),
      onTap: () {
        switch (widgetType) {
          case LearningWidgetType.Wrap:
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) => QiWrap()));
            break;
          case LearningWidgetType.AnimatedContainer:
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => QiAnimatedContainer()));
            break;
          default:
        }
      },
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
