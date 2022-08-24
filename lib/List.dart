import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html

class ListDart extends StatelessWidget {
  const ListDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      alignment: Alignment.topLeft,
      color: Colors.pink[50],
      child: ListView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.vertical, // 决定children的自适应，例如当vertical children的container的 width是自适应的，height是有效的
        children: <Widget>[
          // ListTile(
          //   // leading: Icon(Icons.settings, color: Colors.green[400], size: 20, shadows: const [Shadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 10.0)],),
          //   leading: Image.asset("images/daotian.png"),
          //   title: const Text(
          //     "标题",
          //     style: TextStyle(
          //       fontWeight: FontWeight.w800,
          //       color: Colors.blue,
          //     )
          //   ),
          //   subtitle: const Text("新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容"),
          // ),
          // Container(
          //   padding: const EdgeInsets.all(10),
          //   child: const Text(
          //     '-------------我是分割线----------------',
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       color: Color.fromARGB(255, 61, 48, 52)
          //     )
          //   ),
          // ),
          // ListTile(
          //   leading: const Icon(Icons.home),
          //   title: const Text("标题"),
          //   subtitle: const Text("新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容"),
          //   trailing: Image.asset("images/daotian.png"),
          // ),
          Container(
            width: 100.0,
            height: 50.0,
            color: Colors.red
          ),
          Container(
            width: 100.0,
            height: 50.0,
            color: Colors.blue
          ),
          Container(
            width: 100.0,
            height: 50.0,
            color: Colors.yellow
          ),
          Container(
            width: 100.0,
            height: 50.0,
            color: Colors.blue
          ),
          Container(
            width: 100.0,
            height: 50.0,
            color: Colors.yellow
          ),
          Container(
            width: 100.0,
            height: 50.0,
            color: Colors.blue
          ),
        ],
      )
    );
  }
}