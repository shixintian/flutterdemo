import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html

class BasicStyle extends StatelessWidget {
  const BasicStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("基础样式")
      ),
      body: Container(
          // margin: const EdgeInsets.all(10.0),
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.pink,
              width: 2.0,
            ),
            // borderRadius: BorderRadiusGeometry.lerp(a, b, t)
            borderRadius: const BorderRadius.all(
              Radius.circular(8)
            ),
          ),
          // padding: const EdgeInsets.all(10),
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
          alignment: Alignment.topLeft,
          // transform: Matrix4.translationValues(10, 10, 30),
          // transform: Matrix4.rotationY(90),
          // transform: Matrix4.skew(0.2, 0.5), //倾斜
          // transform: Matrix4.diagonal3Values(1, 1, 1), // 缩放
          child: const Text(
            "我是文本111",
            textAlign: TextAlign.left,
            style: TextStyle( // 设置字体
              fontSize: 16.0,
              color: Color.fromARGB(200, 0, 0, 0),
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              decorationStyle: TextDecorationStyle.dashed,
              decoration: TextDecoration.underline,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textScaleFactor: 1,
          )
        ),
    );
  }

}