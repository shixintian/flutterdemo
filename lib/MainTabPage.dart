import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/basicStyle');
            },
            child: Text("基础样式")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/picContainer');
            },
            child: Text("加载图片-Image")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/listDart');
            },
            child: Text("列表-ListView")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/foreachdart');
            },
            child: Text("列表-ListView + forEach")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/gridviewdart');
            },
            child: Text("布局-GridView")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/paddingdart');
            },
            child: Text("间距-Padding")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/rowdart');
            },
            child: Text("行-Row")
          ),
          // ------
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/stackdart');
            },
            child: Text("绝对定位-Stack")
          ),ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/ascarddart');
            },
            child: Text("卡片和比例-Card & AspectRatio")
          ),ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/wrapdart');
            },
            child: Text("平铺-Wrap")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/statefuldemo');
            },
            child: Text("状态组件-StatefulWidget")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/navigationpage');
            },
            child: Text("路由及参数路由-Navigation")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/replaceroutedemo');
            },
            child: Text("路由跳转-Navigation.pushNamed")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/apptabbardemo');
            },
            child: Text("顶部切换-AppBar-Tab")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/tabcontrollerdemo');
            },
            child: Text("TabController")
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/buttondemo');
            },
            child: Text("按钮 - Button")
          ),
        ],
      );
  }
}


class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text("111")
        )
      ],
    );
  }
}

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: Column(
            children: const <Widget>[
              ListTile(
                title: Text("电话: xxxx")
             ),
             ListTile(
                title: Text("地址: xxxx")
             ),
            ],
          ),
        )
      ],
    );
  }
}