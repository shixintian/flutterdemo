import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html
import '../MainTabPage.dart';
import '../mockdata.dart';

class AppDart extends StatefulWidget {
  const AppDart({super.key});

  @override
  State<AppDart> createState() => _AppDartState();
}

class _AppDartState extends State<AppDart> {
  int curIdx = 0;

  List pageList = const [
    PageOne(),
    PageTwo(),
    PageThree()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("title")
        ),
        body: pageList[curIdx],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: curIdx,
          onTap: (idx){
            setState(() {
              curIdx = idx;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "latl"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "lal"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "lal"
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(child: UserAccountsDrawerHeader(
                    accountName: Text("心心"),
                    accountEmail: Text("8093fa3@qq.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('images/daotian.png'),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/daotian.png'), fit: BoxFit.cover)
                    ),
                  ))
                ],
              ),
              ListTile(
                title: Text("姓名: 心心"),
              ),
              Divider(),
              ListTile(
                title: Text("姓名: 心心"),
              ),
            ],
          ),
        ),
        endDrawer:Drawer(
          child:  Center(
            child: Text("更多内容...."),
          )
        ),
      );
  }
}