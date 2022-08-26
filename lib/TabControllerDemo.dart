import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html

class TabControllerDemo extends StatefulWidget {
  const TabControllerDemo({super.key});

  @override
  State<TabControllerDemo> createState() => _TabControllerDemoState();
}

class _TabControllerDemoState extends State<TabControllerDemo> with SingleTickerProviderStateMixin {
  List list = List.generate(6,(i) => i);

  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: list.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
          backgroundColor: Colors.pink,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: TabBar( // 这里不用Expande还会报错
                controller: _controller,
                isScrollable: true,
                tabs: list.map((idx) => Tab(text: "$idx ab")).toList(),
              ))
            ]
          ),
          // 1.利用AppBar自带的bottom
          // title: const Text(""),
          // bottom: const TabBar(
          //   tabs: [
          //     Tab(text: "tab1"),
          //     Tab(text: "tab2"),
          //   ],
          // ),
        ),
        body: TabBarView(
          controller: _controller,
          children: list.map((i) => ListView(
              children: list.map((i) => ListTile(
                  title: Text("姓名：$i"),
                  subtitle: Text("地址：${i + 1}"),
                )).toList(),
            )).toList(),
        ),
      );
  }
}