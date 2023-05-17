import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:room_ye/components/fullwidth_button.dart';
import 'package:room_ye/config/constants.dart';
import 'package:room_ye/screens/tabs/home_tab.dart';

final homeTabKey = GlobalKey<NavigatorState>();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedIndex = 0;

  final tabs = <Widget>[
    HomeTab(
      homeTabKey: homeTabKey,
    ),
    _FavoritesTab()
  ];
  final menuOptions = const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "",
    ),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
  ];

  onTap(int index) {
    if (index == selectedIndex) {
      if (homeTabKey.currentState!=null&&homeTabKey.currentState!.canPop()){
        homeTabKey.currentState?.pop();
      }
      return;
    }
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/avatar.png"),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.solidPaperPlane,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        body: IndexedStack(index: selectedIndex, children: tabs),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          onTap: onTap,
          selectedIconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.primary,
          ),
          backgroundColor: Colors.red,
          currentIndex: selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Theme.of(context).colorScheme.primaryContainer,
          items: menuOptions,
        ),
      ),
    );
  }
}

class _FavoritesTab extends StatefulWidget {
  const _FavoritesTab({
    super.key,
  });

  @override
  State<_FavoritesTab> createState() => _FavoritesTabState();
}

class _FavoritesTabState extends State<_FavoritesTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Placeholder(),
      ),
    );
  }
}
