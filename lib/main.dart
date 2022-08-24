import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html
// import 'basicStyle.dart' show BasicStyle;
// import 'loadPic.dart' show PicContainer;
// import 'List.dart' show ListDart;
// import 'ForEach.dart' show DemoDart;
// import 'GridView.dart' show DemoDart;
// import 'Padding.dart' show DemoDart;
// import 'Row.dart' show DemoDart;
// import 'Stack.dart' show DemoDart;
// import 'AspectRatio&Card.dart' show DemoDart;
import 'Wrap.dart' show DemoDart;
import 'StatefulDemo.dart' show Counter;

void main() {
  runApp(const StatefulDemo());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("title")
        ),
        // body: const HomeContent()
        body: const DemoDart()
      )
    );
  }
}

class StatefulDemo extends StatefulWidget {
  const StatefulDemo({super.key});

  @override
  State<StatefulDemo> createState() => _StatefulDemoState();
}

class _StatefulDemoState extends State<StatefulDemo> {
  @override
  Widget build(BuildContext context) {
    return const Counter();
  }
}
