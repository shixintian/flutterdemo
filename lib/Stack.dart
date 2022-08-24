import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html

class DemoDart extends StatelessWidget {
  const DemoDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 400,
      color: Colors.green,
      alignment: Alignment.center,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        clipBehavior: Clip.hardEdge,
        children: <Widget>[
          Container(
            height: 400,
            width: 400,
            color: Colors.red,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.blue,
          ),
          Positioned(
            top: -20,
            left: 20,
            child: Container(
            height: 50,
            width: 50,
            color: Colors.yellow,
          ))
        ],
      )
    );
  }
}