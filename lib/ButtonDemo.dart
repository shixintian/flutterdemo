import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button")
      ),
      body: Column(
      children: [
        Row(
          children: [
            ElevatedButton(
              onPressed: (){},
              child: const Text("按钮"),
            ),
            FloatingActionButton( // https://www.jianshu.com/p/6ced97ac77f3
              elevation: 20,
              onPressed: () => {},
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            TextButton(
              onPressed: (){},
              child: const Text("按钮"),
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.settings), color: Colors.blue),
            ElevatedButton(
              onPressed: (){},
              child: const Text("按钮"),
              style: ButtonStyle(
                // elevation: 20.0,
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(20)
                  )
                )
              )
            ),
            Container(
              height: 60,
              child:
              ElevatedButton(
              onPressed: (){},
              child: const Text("按钮"),
              style: ButtonStyle(
                // elevation: 20.0,
                shape: MaterialStateProperty.all(
                    CircleBorder()
                )
              )
            ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(child: ElevatedButton(
              onPressed: (){},
              child: const Text("按钮"),
            ))
          ],
        ),
        Container(
          height: 60.0,
          width: 100.0,
          child: ElevatedButton(
              onPressed: (){},
              child: const Text("按钮"),
            ),
        )
      ],
    ),
    );
  }
}