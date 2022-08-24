import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html

class DemoDart extends StatelessWidget {
  const DemoDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset('images/daotian.png', fit:BoxFit.cover),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.asset('images/daotian.png', width: 60, height: 60,
                       fit: BoxFit.cover),
                ),
                title: Text("lalla"),
                subtitle: Text("lalla"),
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset('images/daotian.png', fit:BoxFit.cover),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/daotian.png'),
                ),
                title: Text("lalla"),
                subtitle: Text(
                  "lallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalallalalla",
                  maxLines: 2,
                  style: TextStyle(overflow: TextOverflow.ellipsis)
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}