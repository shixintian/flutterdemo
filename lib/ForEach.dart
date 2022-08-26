import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html

class ForEachDart extends StatelessWidget {

  const ForEachDart({Key? key}) : super(key: key);

  // List<Widget> _getData() {
  //   List data = [
  //     { "title": "我是标题1", "content": "我是正文1" },
  //     { "title": "我是标题2", "content": "我是正文2" },
  //     { "title": "我是标题3", "content": "我是正文3" },
  //   ];

  //   // var list = <Widget>[];

  //   // for(int i = 0; i < data.length; i++) {
  //   //   Map d = data[i];
  //   //   list.add(ListTile(
  //   //     leading: const Icon(Icons.dashboard),
  //   //     title: Text(d["title"]),
  //   //     subtitle: Text(d["content"]),
  //   //   ));
  //   // }
  //   var list = data.map((d) => ListTile(
  //       leading: const Icon(Icons.dashboard),
  //       title: Text('${d["title"]}----lalla'),
  //       subtitle: Text(d["content"]),
  //   ));

  //   return list.toList();
  // }

  ListView _getData() {
    List data = [
      { "title": "我是标题1", "content": "我是正文1" },
      { "title": "我是标题2", "content": "我是正文2" },
      { "title": "我是标题3", "content": "我是正文3" },
    ];
    // return ListView.builder(
    return ListView.separated(
      itemCount: data.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (ctx, i){
        return ListTile(
          leading: const Icon(Icons.dashboard),
          title: Text('${data[i]["title"]}----test2222'),
          subtitle: Text(data[i]["content"]),
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: _getData(),
    // );
    return Scaffold(
      appBar: AppBar(
        title: const Text("foreach")
      ),
      body: _getData()
    );
  }
}