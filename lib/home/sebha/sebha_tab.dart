import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: mediaQuery.height * 0.34,
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/images/head of seb7a.png',
                    height: mediaQuery.height * 0.1,
                  ),
                  left: mediaQuery.width * 0.46,
                ),
                Positioned(
                  child: Image.asset(
                    'assets/images/body of seb7a.png',
                    height: mediaQuery.height * 0.28,
                  ),
                  top: 55,
                  left: mediaQuery.width * 0.2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
