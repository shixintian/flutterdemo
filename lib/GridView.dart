import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html
import './mockdata.dart';

class DemoDart extends StatelessWidget {
  const DemoDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


  List<Widget> _getData() {

    var list = mockData.map((d) => Container(
      // height: 100, // 这是没有用的
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Color.fromARGB(100, 0, 0, 0), offset: Offset(5.0, 5.0), blurRadius: 1)],
        border: Border.all(
          width: 1,
          color: const Color.fromARGB(255, 250, 250, 250)
        )
      ),
      child: Column(
        children: <Widget>[
          Image.asset('images/daotian.png'),
          const SizedBox(
            height: 12
          ),
          Text(
            d["content"],
            style: const TextStyle(
              color: Colors.black
            ),
          )
        ],
      )
    ));

    return list.toList();
  }

  Widget _getBuilderData(ctx, idx) {
      return Container(
        // height: 100, // 这是没有用的
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [BoxShadow(color: Color.fromARGB(100, 0, 0, 0), offset: Offset(5.0, 5.0), blurRadius: 1)],
          border: Border.all(
            width: 1,
            color: const Color.fromARGB(255, 250, 250, 250)
          )
        ),
        child: Column(
          children: <Widget>[
            Image.asset('images/daotian.png'),
            const SizedBox(
              height: 12
            ),
            Text(
              mockData[idx]["content"],
              style: const TextStyle(
                color: Colors.black
              ),
            )
          ],
        )
      );
  }
    // return GridView.count(
    //   crossAxisCount: 2,
    //   crossAxisSpacing: 20.0, // 水平间距
    //   mainAxisSpacing: 20.0,
    //   // childAspectRatio: 0.7, // width / height = 0.7
    //   padding: const EdgeInsets.all(20.0),
    //   children: _getData(),
    // );
    return GridView.builder(
      itemBuilder: _getBuilderData,
      itemCount: mockData.length,
      padding: const EdgeInsets.all(20.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0, // 水平间距
          mainAxisSpacing: 20.0,
      ),
    );
  }
}