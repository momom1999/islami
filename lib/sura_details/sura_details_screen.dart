import 'package:flutter/material.dart';
import 'package:islami/sura_details/sura_details_args.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura-details';

  @override
  Widget build(BuildContext context) {
    SuraDetailsScreenArgs args =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsScreenArgs;

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_background.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.name),
          ),
        ));
  }
}
