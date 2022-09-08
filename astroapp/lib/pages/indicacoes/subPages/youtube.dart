import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class YouTube extends StatefulWidget {
  const YouTube({Key? key}) : super(key: key);

  @override
  State<YouTube> createState() => _YouTubeState();
}

class _YouTubeState extends State<YouTube> {
  Future<void> abrirCanal() async {
    final Uri _url =
        Uri.parse('https://www.youtube.com/c/ABFAstroBioF%C3%ADsica');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 30, 138),
        centerTitle: true,
        title: const Text('AstroAPP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: ListView(
          children: [
            //Canal 4
          ],
        ),
      ),
    );
  }
}
