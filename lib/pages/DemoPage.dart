import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html


class NaviUseBuilderDemo extends StatelessWidget {
  const NaviUseBuilderDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          height: 30,
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DemoPageOne()) // todo 可传参数组件还不行
            );
          },
          color: Colors.blue,
          child: const Text('跳转页面->', textDirection: TextDirection.ltr, style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }
}

class DemoPageOne extends StatelessWidget {
  const DemoPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Text("返回"),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
          title: const Text("DemoPageOne")
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text("我是page 1")
          ),
          ListTile(
            title: Text("我是page 1")
          ),
          ListTile(
            title: Text("我是page 1")
          )
        ],
      )
    );
  }
}