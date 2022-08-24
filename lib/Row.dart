import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html
import 'mockdata.dart';

class IconContainer extends StatelessWidget {
  IconData icon = Icons.settings;
  double? size = 20.0;
  Color? color = Colors.white;
  IconContainer(this.icon, { this.size, this.color });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Icon(this.icon, color: Colors.white, size: this.size),
    );
  }
}

class DemoDart extends StatelessWidget {
  const DemoDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      width: 400.0,
      color: Colors.blue[50],
      // child: Row( // 水平布局
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: <Widget>[
      //     IconContainer(Icons.settings, color: Colors.pink),
      //     IconContainer(Icons.settings, color: Colors.yellow),
      //     IconContainer(Icons.settings, color: Colors.green),
      //   ],
      // )
      // child: Column( // 垂直布局
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: <Widget>[
      //     IconContainer(Icons.settings, color: Colors.pink),
      //     IconContainer(Icons.settings, color: Colors.yellow),
      //     IconContainer(Icons.settings, color: Colors.green),
      //   ],
      // )
      child: Row( // 垂直布局
        children: <Widget>[
          Expanded(flex: 1, child: IconContainer(Icons.settings, color: Colors.pink)),
          // Expanded(flex: 2, child: IconContainer(Icons.settings, color: Colors.yellow))
          IconContainer(Icons.settings, color: Colors.yellow)
        ],
      )
    );
  }
}