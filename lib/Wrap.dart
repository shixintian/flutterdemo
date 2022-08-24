import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html

class DemoDart extends StatelessWidget {
  const DemoDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      // direction: Axis.vertical,
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      children: List.generate(10, (i) {
        double w = 50.0 + 10 * i;
        return Container(
          height: 50,
          width: w,
          child: MaterialButton(
            //背景颜色
            color: Colors.primaries[i],
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
            onPressed: () {},
            child: const Text(
              "查找",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          )
        );
      }),
    );
  }
}