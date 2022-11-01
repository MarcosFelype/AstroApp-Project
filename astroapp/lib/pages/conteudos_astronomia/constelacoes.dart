import 'package:astroapp/pages/assuntosQuest_page.dart';
import 'package:astroapp/widget/card_assuntos.dart';
import 'package:flutter/material.dart';

import '../../data/assuntos_dao.dart';
import '../../domain/menu_astro.dart';

class Constelacoes extends StatefulWidget {
  const Constelacoes({Key? key}) : super(key: key);

  @override
  ConstelacoesState createState() => ConstelacoesState();
}

class ConstelacoesState extends State<Constelacoes> {

  Future<List<Menu_astro>> lista = AssuntosDao.listarAssuntos('Constelacoes()');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'AstroApp',
          style: TextStyle(fontSize: 24),
        ),
      ),


      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      

                      children: [
                        Center(
                            child: Text(
                          "Constelações",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),


                        const SizedBox(height: 16),
                        Container(
                          child: Image.asset(
                             'assets/const.jpg',
                          ),
                        ),


                        AssuntoListView(),

                        
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          child: Text(
                            "IR PARA QUESTÕES",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const AssuntosQuestoes()),
                              );
                          },
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AssuntoListView() {
    
    return FutureBuilder<List<Menu_astro>>(
      future: lista,
      builder: ((context, snapshot) {

        if (snapshot.hasData) {
          List<Menu_astro> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return CardAssuntos(menu_astro: lista[index]);
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
