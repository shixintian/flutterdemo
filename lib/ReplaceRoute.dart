import 'package:flutter/material.dart';
import 'pages/App.dart';

class ParamLike {
  String description;

  ParamLike({ this.description = "lalla" });
}

class LoginDemo extends StatelessWidget {
  static String routeName = '/login';

  const LoginDemo({super.key});

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as ParamLike;

    return Scaffold(
      appBar: AppBar(
        title: const Text("登录")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("我是登录页面"),
            Text(args.description)
          ],
        ),
      ),
    );
  }
}

class RegistDemo extends StatelessWidget {
  static String routeName = '/register';

  const RegistDemo({super.key});

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as ParamLike;

    return Scaffold(
      appBar: AppBar(
        title: const Text("注册页")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("请输入手机号"),
            Text(args.description),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushReplacementNamed(RegistFinish.routeName);

                // Navigator.pushNamed(context, RegistFinish.routeName);
              },
              child: Text('下一步')
            )
          ],
        ),
      ),
    );
  }
}

class RegistFinish extends StatelessWidget {
  static String routeName = '/registerFinish';

  const RegistFinish({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("注册完成")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("恭喜！注册完成"),
            ElevatedButton(
              onPressed: (){
                // Navigator.of(context).pushNamed('/home');
                Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
              },
              child: const Text('回到子首页')
            ),
            ElevatedButton(
              onPressed: (){
                // Navigator.of(context).pushNamed('/home');
                Navigator.pushNamedAndRemoveUntil(context, '/mainHome', (route) => false);
              },
              child: const Text('回到主首页')
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginDemo.routeName, arguments: ParamLike(description: "我是具体的描述"));
              },
              child: const Text("跳转登陆页面")
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RegistDemo.routeName, arguments: ParamLike(description: "我是具体的描述"));
              },
              child: const Text("跳转注册页面")
            ),
          ],
        ),
      )
    );
  }
}


class ReplaceRouteDemo extends StatelessWidget {
  const ReplaceRouteDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home':(context) =>  const HomeScreen(),
        '/mainHome':(context) =>  const AppDart(),
        LoginDemo.routeName:(context) =>  const LoginDemo(),
        RegistDemo.routeName:(context) =>  const RegistDemo(),
        RegistFinish.routeName:(context) =>  const RegistFinish(),
      },
      home: const HomeScreen()
    );
  }
}