import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_tab.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/radio/radio_tab.dart';
import 'package:islami/home/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (newlySelectedIndex) {
              selectedIndex = newlySelectedIndex;
              setState(() {
                selectedIndex = newlySelectedIndex;
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon:
                      const ImageIcon(AssetImage('assets/images/ic_quran.png')),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(
                      AssetImage('assets/images/ic_hadeth.png')),
                  label: 'Hadeth'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon:
                      const ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                  label: 'Sebha'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon:
                      const ImageIcon(AssetImage('assets/images/ic_radio.png')),
                  label: 'Radio'),
            ]),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [QurabTab(), HadethTab(), SebhaTab(), RadioTab()];
}
