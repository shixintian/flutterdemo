import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html
import 'mockdata.dart';

class PaddingDart extends StatelessWidget {
  const PaddingDart({Key? key}) : super(key: key);

  Widget _getData(ctx, idx) {
    return Container(
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   border: Border.all(
      //     width: 1,
      //     color: const Color.fromARGB(255, 230, 230, 230)
      //   )
      // ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Image.asset('images/daotian.png', fit: BoxFit.cover),
          ),
          Text(
            mockData[idx]["content"]
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding"),
      ),
      body: Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0 ,10, 0), // 有的元素没有padding
        child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 20,
          // mainAxisSpacing: 20,
        ),
        itemBuilder: _getData
      )
      )
    )
    );
  }
}