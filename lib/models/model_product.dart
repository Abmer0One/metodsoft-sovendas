import 'package:flutter/material.dart';

class ModelsMoreListen extends ChangeNotifier {
  final List<ModelProduct> moreListen = [
    ModelProduct(
        position: 1,
        imageSinger: "assets/image/logoSoVendas.jpg",
        nameSinger: "Anselmo Ralph",
        songSinger: "Já Fui",
        numExecution: 15116
    ),
    ModelProduct(
        position: 2,
        imageSinger: "assets/image/logoSoVendas.jpg",
        nameSinger: " Yola Semedo",
        songSinger: "Say Oh",
        numExecution: 14116
    ),
    ModelProduct(
        position: 3,
        imageSinger: "assets/image/logoSoVendas.jpg",
        nameSinger: "Bruno M",
        songSinger: "60 Segundos",
        numExecution: 13116
    ),
    ModelProduct(
        position: 4,
        imageSinger: "assets/image/logoSoVendas.jpg",
        nameSinger: "Zona 5",
        songSinger: "Abana o Vestdo",
        numExecution: 12116
    ),
    ModelProduct(
        position: 5,
        imageSinger: "assets/image/logoSoVendas.jpg",
        nameSinger: "Perola",
        songSinger: "Ninguém",
        numExecution: 11116
    ),
    ModelProduct(
        position: 6,
        imageSinger: "assets/image/logoSoVendas.jpg",
        nameSinger: "Matias Damasio",
        songSinger: "Loucos",
        numExecution: 10116
    ),
    ModelProduct(
        position: 7,
        imageSinger: "assets/image/logoSoVendas.jpg",
        nameSinger: "NGA",
        songSinger: "Somos Campeões",
        numExecution: 9116
    ),
  ];
}

class ModelProduct {
  final int position;
  final String imageSinger;
  final String nameSinger;
  final String songSinger;
  final int numExecution;

  ModelProduct(
      {
        this.position,
        this.imageSinger,
        this.nameSinger,
        this.songSinger,
        this.numExecution,
      }
      );
}