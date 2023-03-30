import 'dart:math';
import 'package:flutter/material.dart';
import 'package:noiapp/model/search_button_model.dart';

import '../widget/white_line.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String attivitaSelezionata = '';

  void attivitaRandom() {
    setState(() {
      final random = Random();
      attivitaSelezionata = attivita[random.nextInt(attivita.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          elevation: 20,
          centerTitle: true,
          title: const Text(
            'NOIApp',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(24),
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'La tua attività del giorno è:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 20,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: attivitaSelezionata.isNotEmpty
                          ? Text(
                              attivitaSelezionata,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            )
                          : const Text(''),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WhiteLine(),
                    SearchButtonModel(
                      titleButton: 'Cerca',
                      colorButton: Colors.blue.shade800,
                      functionButton: attivitaRandom,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<String> attivita = [
  'Fai una passeggiata nel bosco',
  'Impara una nuova lingua',
  'Fai un giro in bici',
  'Prepara un dolce',
  'Rimuovi dal telefono le app inutilizzate',
  'Chiudi gli occhi e disegna ciò che immagini',
  'Crea il tuo albero genealogico',
  'Guarda un film',
  'Inizia una nuova serie tv',
  'Segui un corso su Udemy.com',
  'Organizza un pic-nic con chi vuoi',
  'Visita una nuova città',
  "Allenati con l'app HomeWorkout VG",
  'Visita un museo',
  'Prenota le vacanze',
  'Vai a prendere un gelato',
  'Cerca una persona che non vedi da tanto',
  'Prepara la pizza',
  'Stampa una cartina del mondo e colora dove hai visitato',
  'Vai al mare',
  'Vai in montagna',
  'Leggi un libro',
  'Ordina la tua camera',
  'Gioca con il tuo cane',
  'Vendi i vestiti che non usi più su Vinted.it',
  'Crea giochi da tavolo in casa su greenMe.it',
  'Fai meditazione',
  'Scrivi un diario personale',
  'Fai yoga tramite YouTube.com',
  'Gioca con il tuo gatto',
  'Prenditi cura del tuo viso',
  'Sistema il giardino',
  'Rimuovi dal pc file e programmi inutilizzati',
  'Cerca un panorama e dipingilo su carta',
  'Fai un puzzle',
  'Fai un cruciverba',
  'Fai origami tramite YouTube.com',
  'Ascolta musica con Spotify',
  'Impara ad utilizzare uno strumento musicale',
];
