import 'package:astroapp/domain/menu_astro.dart';
import 'package:astroapp/pages/conteudos_astronautica/angulos_de_euler.dart';
import 'package:astroapp/pages/conteudos_astronautica/aplicacoes_da_astronautica.dart';
import 'package:astroapp/pages/homePage.dart';
import 'package:flutter/material.dart';

import '../pages/conteudos_astronautica/introducao_astronautica.dart';
import '../pages/conteudos_astronomia/constelacoes.dart';
import '../pages/conteudos_astronomia/introducao_astronomia.dart';
import '../pages/conteudos_astronomia/planetas.dart';

class CardAssuntos extends StatefulWidget {
  final Menu_astro menu_astro;

  const CardAssuntos({Key? key, required this.menu_astro}) : super(key: key);

  @override
  State<CardAssuntos> createState() => _CardAssuntos();
}

class _CardAssuntos extends State<CardAssuntos> {
  @override
  Widget build(BuildContext context) {

    return Container(
                          padding: const EdgeInsets.only(top: 16),
                            child: Text(
                          widget.menu_astro.conteudo,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ));
  }
}
