import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html
import 'package:date_format/date_format.dart';

class DemoDart extends StatefulWidget {
  const DemoDart({super.key});
  @override
  State<DemoDart> createState() => _DemoDartState();
}

class _DemoDartState extends State<DemoDart> {
  // List list = [];

  // void add() {
  //   setState(() {
  //               list.add("11");
  //             });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text("12"),
        ),
        MaterialButton(
            //边框样式
            shape: const RoundedRectangleBorder(
              //边框颜色
              side: BorderSide(
                color: Colors.deepPurple,
                width: 1,
              ),
              //边框圆角
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            //按钮高度
            height: 32,
            //按钮最小宽度
            minWidth: 60,
            //点击事件
            onPressed: () {
            },
            child: const Text(
              "查找",
              style: TextStyle(fontSize: 12),
            ),
          )
      ],
    );
  }
}