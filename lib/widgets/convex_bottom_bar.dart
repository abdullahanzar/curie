import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class ConvexBottomBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;

  const ConvexBottomBar({
    required this.selectedIndex,
    required this.onItemTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StyleProvider(
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
        onTap: onItemTapped,
        initialActiveIndex: selectedIndex,
        backgroundColor: Colors.white,
      ),
    );
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
  TextStyle textStyle(Color color, fontFamily) {
    return const TextStyle(fontSize: 10, color: Colors.black);
  }
}

