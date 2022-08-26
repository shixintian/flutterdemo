import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html

class PicContainer extends StatelessWidget {
  const PicContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("图片")
      ),
      body: Container(
        width: 400.0,
        height: 400.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.red,
            width: 2.0
          )
          // 方法一
          // image: const DecorationImage(
          //   image: NetworkImage("https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png"),
          //   fit: BoxFit.contain,
          // )
        ),
        padding: const EdgeInsets.all(20),
        // child: const Text("lalla"),
        // 方法二 - 圆形图片推荐
        // child: ClipOval(
        //   child: Image.network(
        //     "https://tenfei04.cfp.cn/creative/vcg/veer/1600water/veer-304974478.jpg",
        //     width: 10,
        //     height: 10,
        //     fit: BoxFit.cover
        //   ),
        // ),
        // 方法三
        // child: Image.network(
        //   "https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
        //   // color: Colors.pink,
        //   // colorBlendMode: BlendMode.difference, // 混合颜色
        //   // alignment: Alignment.bottomRight,
        //   // fit: BoxFit.contain,
        //   // repeat: ImageRepeat.repeat
        //   )
        child: Image.asset(
          "images/daotian.png",
          width: 30.0,
          height: 30.0,
          fit: BoxFit.cover
        ),
      )
    );
  }
}