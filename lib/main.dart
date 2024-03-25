import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curie',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: StyleProvider(
      style: Style(),
      child: ConvexAppBar(
        items: [
          TabItem(
              icon: Image.asset('assets/icons/elementsCurie.png'),
              title: "Elements"),
          TabItem(
              icon: Image.asset('assets/icons/homeCurie.png'), title: "Home"),
          TabItem(
              icon: Image.asset('assets/icons/scientistsCurie.png'),
              title: "Scientists")
        ],
        onTap: (index) => {
          setState(() {
            _selectedIndex = index;
          }),
        },
        initialActiveIndex: _selectedIndex,
        backgroundColor: Colors.white,
      ),
    ));
  }
}

class Style extends StyleHook {
  @override
  // TODO: implement activeIconMargin
  double get activeIconMargin => 10;

  @override
  // TODO: implement activeIconSize
  double get activeIconSize => 50;

  @override
  // TODO: implement iconSize
  double? get iconSize => null;

  @override
  TextStyle textStyle(Color color, _) {
    return const TextStyle(fontSize: 10, color: Colors.black);
  }
}
