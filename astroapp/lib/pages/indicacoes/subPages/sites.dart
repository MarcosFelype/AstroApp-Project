// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher.dart';

class Sites extends StatefulWidget {
  const Sites({Key? key}) : super(key: key);


  @override
  State<Sites> createState() => _SitesState();
}

class _SitesState extends State<Sites> {
  
/*Future<void> _launchLink(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: false, forceSafariVC: false);
  } else {
    print('Não pode acessar o link $url');
  }
}*/

Future<void> abrirSite() async{
  final Uri _url = Uri.parse('http://www.oba.org.br/site/');

  if (!await launchUrl(
    _url,
    mode: LaunchMode.externalApplication,
    )){
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
            
          ],
        ),
      ),
    );
  }

  

  void obaOnTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Center(
          child: Text('Aqui terão sites'),
        ),
      ),
    );
  }
}
