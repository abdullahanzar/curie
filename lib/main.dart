import 'package:curie/screens/elements/elements_screen.dart';
import 'package:curie/screens/home/home_screen.dart';
import 'package:curie/screens/scientists/scientists_screen.dart';
import 'package:curie/widgets/convex_bottom_bar.dart';
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
  final PageController _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          physics: const NeverScrollableScrollPhysics(), // Future: remove this and see why _selectedIndex update is not reflecting in ConvexBottomBar
          children: const [ElementsScreen(), HomeScreen(), ScientistsScreen()],
        ),
        bottomNavigationBar: ConvexBottomBar(
            selectedIndex: _selectedIndex,
            onItemTapped: (index) =>
            {
              setState(() {
                _selectedIndex = index;
                _pageController.animateToPage(
                    index, duration: const Duration(milliseconds: 300),
                    curve: Curves.ease);
              }),
            }));
  }
}