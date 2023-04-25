import 'package:crypto_events/main.dart';
import 'package:crypto_events/pages/settings.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:crypto_events/crypto_event_icons.dart';
import 'package:crypto_events/my_icons.dart';
import 'profile_page.dart';
import 'home_page.dart';
import 'wallet.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedItem = 0;

  final List<Widget> pages = [
    const HomePage(),
    const ProfilePage(),
    const WalletPage(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: pages[_selectedItem],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              foregroundDecoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromARGB(26, 53, 40, 40)),
                  borderRadius: BorderRadius.circular(20)),
              child: NavigationBarTheme(
                data:
                    const NavigationBarThemeData(indicatorColor: Colors.white),
                child: GNav(
                    backgroundColor: kColorScheme.background,
                    selectedIndex: _selectedItem,
                    onTabChange: (value) {
                      setState(() {
                        _selectedItem = value;
                      });
                    },
                    tabs: const [
                      GButton(icon: MyIcons.home),
                      GButton(icon: CryptoEvent.account),
                      GButton(icon: CryptoEvent.wallet),
                      GButton(icon: MyIcons.setting),
                    ]),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // shape: ShapeBorder.lerp(, , 0.5),
          onPressed: () {},
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.add,
            color: Colors.white70,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

// Padding(
//         padding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(30),
//           child: Container(
//             foregroundDecoration: BoxDecoration(
//                 border: Border.all(color: const Color.fromARGB(26, 53, 40, 40)),
//                 borderRadius: BorderRadius.circular(30)),
//             child: NavigationBarTheme(
//               data: const NavigationBarThemeData(indicatorColor: Colors.white),
//               child: NavigationBar(
//                   height: 60,
//                   backgroundColor: Colors.white,
//                   labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
//                   onDestinationSelected: (int index) {
//                     setState(() {
//                       _selectedItem = index;
//                     });
//                   },
//                   selectedIndex: _selectedItem,
//                   destinations: const [
//                     NavigationDestination(
//                         selectedIcon: Icon(MyIcons.home),
//                         icon: Icon(
//                           MyIcons.home,
//                           color: Colors.black26,
//                         ),
//                         label: 'home'),
//                     NavigationDestination(
//                         selectedIcon: Icon(CryptoEvent.account),
//                         icon: Icon(
//                           CryptoEvent.account,
//                           color: Colors.black26,
//                         ),
//                         label: 'files'),
//                     SizedBox(width: 10),
//                     NavigationDestination(
//                         selectedIcon: Icon(CryptoEvent.wallet),
//                         icon: Icon(
//                           CryptoEvent.wallet,
//                           color: Colors.black26,
//                         ),
//                         label: 'Wallet'),
//                     NavigationDestination(
//                         selectedIcon: Icon(MyIcons.setting),
//                         icon: Icon(
//                           MyIcons.setting,
//                           color: Colors.black26,
//                         ),
//                         label: 'settings'),
//                   ]),
//             ),
//           ),
//         ),
//       ),