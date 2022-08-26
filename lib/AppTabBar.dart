import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html

class AppTabBarDemo extends StatelessWidget {
  const AppTabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    List list = List.generate(6,(i) => i);

    return DefaultTabController(
      length: list.length,
      child: Scaffold(
        appBar:
        AppBar(
          backgroundColor: Colors.pink,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: TabBar( // 这里不用Expande还会报错
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
          children: list.map((i) => ListView(
              children: list.map((i) => ListTile(
                  title: Text("姓名：$i"),
                  subtitle: Text("地址：${i + 1}"),
                )).toList(),
            )).toList(),
        ),
      )
    );
  }
}