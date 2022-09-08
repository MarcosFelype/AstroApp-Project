import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class OutrasRedes extends StatefulWidget {
  const OutrasRedes({Key? key}) : super(key: key);

  @override
  State<OutrasRedes> createState() => _OutrasRedesState();
}

class _OutrasRedesState extends State<OutrasRedes> {

  Future<void> chamarInsta() async{
  final Uri _url = Uri.parse('https://www.instagram.com/abf_astrobiofisica/');

  if (!await launchUrl(
    _url,
    mode: LaunchMode.externalApplication,
    )){
      throw 'Could not launch $_url';
    }
  }

  Future<void> chamarTelegram() async{
  final Uri _url = Uri.parse('https://t.me/s/astronomia_abf');

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
        title: const Text('AstroAPP'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 18, 30, 138),
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
}
