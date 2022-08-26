import 'package:flutter/material.dart'; // https://api.flutter.dev/flutter/material/material-library.html
import 'pages/App.dart';
import 'basicStyle.dart' show BasicStyle;
import 'loadPic.dart' show PicContainer;
import 'List.dart' show ListDart;
import 'ForEach.dart' show ForEachDart;
import 'GridView.dart' show GridViewDart;
import 'Padding.dart' show PaddingDart;
import 'Row.dart' show RowDart;
import 'Stack.dart' show StackDart;
import 'AspectRatio&Card.dart' show AsCardDart;
import 'Wrap.dart' show WrapDart;
import 'StatefulDemo.dart' show StatefulDemo;
import 'Navigation.dart';
import 'ReplaceRoute.dart' show ReplaceRouteDemo;
import 'AppTabBar.dart' show AppTabBarDemo;
import 'TabControllerDemo.dart' show TabControllerDemo;
import 'ButtonDemo.dart' show ButtonDemo;

void main() {
  runApp(const MyAppS());
}

// 无状态APP
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("title"),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings)
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home)
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.dangerous)
            )
          ],
        ),
        // body: const HomeContent(
        body: const StatefulDemo(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (idx){
            print(idx);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "lal"
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
      )
    );
  }
}


// 有状态APP
class MyAppS extends StatefulWidget {
  const MyAppS({super.key});

  @override
  State<MyAppS> createState() => _MyAppSState();
}

class _MyAppSState extends State<MyAppS> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/buttondemo',
      routes: {
        '/basicStyle':(context) => const BasicStyle(),
        '/picContainer':(context) => const PicContainer(),
        '/listDart':(context) => const ListDart(),
        '/foreachdart':(context) => const ForEachDart(),
        '/gridviewdart':(context) => const GridViewDart(),
        '/paddingdart':(context) => const PaddingDart(),
        '/rowdart':(context) => const RowDart(),
        '/stackdart':(context) => const StackDart(),
        '/ascarddart':(context) => const AsCardDart(),
        '/wrapdart':(context) => const WrapDart(),
        '/statefuldemo':(context) => const StatefulDemo(),
        '/navigationpage':(context) => const NavigationPage(),
        '/replaceroutedemo':(context) => const ReplaceRouteDemo(),
        '/apptabbardemo':(context) => const AppTabBarDemo(),
        '/tabcontrollerdemo':(context) => const TabControllerDemo(),
        '/buttondemo':(context) => const ButtonDemo(),

        ExtractArgumentsScreen.routeName: (context) =>
            const ExtractArgumentsScreen(),
      },
      onGenerateRoute: (settings) {
        // If you push the PassArguments route
        if (settings.name == PassArgumentsScreen.routeName) {
          // Cast the arguments to the correct
          // type: ScreenArguments.
          final args = settings.arguments as ScreenArguments;

          // Then, extract the required data from
          // the arguments and pass the data to the
          // correct screen.
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title: args.title,
                message: args.message,
              );
            },
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      home: const AppDart(),
    );
  }
}