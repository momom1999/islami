import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/sura_details/sura_details_args.dart';
import 'package:islami/sura_details/verse_widget.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsScreenArgs args =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsScreenArgs;
    if (verses.isEmpty) readFile(args.index + 1);

    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_background.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.name),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Card(
                  elevation: 12,
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: ListView.separated(
                    itemBuilder: (_, index) {
                      return VerseWidget(verses[index], index + 1);
                    },
                    itemCount: verses.length,
                    separatorBuilder: (_, __) {
                      return Container(
                        color: Theme.of(context).primaryColor,
                        height: 1,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                      );
                    },
                  ),
                ),
        ));
  }

  void readFile(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/files/$fileIndex.txt');

    List<String> lines = fileContent.split('\n');
    setState(() {
      verses = lines;
    });
  }
}
