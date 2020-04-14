import 'package:flutter/cupertino.dart';

/*
 * AQUI VÃO FICAR TODAS CONSTANTES
 * QUE EU VOU PRECISAR DE FORMA GLOBAL
 * 13.04.2020
 */


/* COLORS */
const Color COLOR_CARD = Color(0xff526585);
const Color COLOR_BAI  = Color(0xff043673);


/* FONTS */
const String FONT_1 = "font_1";
const String FONT_2 = "font_2";
const String FONT_3 = "font_3";
const String FONT_4 = "font_4";
const String FONT_5 = "font_5";
const String FONT_6 = "font_6";

/* IMAGES */
const String KUBINGA = "assets/kubiga.png";
const String MERCADO = "assets/mercado.png";
const String GARSON  = "assets/garson.jpg";
const String SOCIA   = "assets/socia.jpg";
const String LOGO    = "assets/logo.png";
const String CHIP    = "assets/chip.png";
const String ME      = "assets/me.jpg";
const String BAI     = "assets/bai.png";


class Transacoes {
  String entidade, tipo, valor, img;
  Transacoes({
    this.entidade,
    this.tipo,
    this.valor,
    this.img
  });
}

/* LISTA DAS TRANSAÇÕES */
List<Transacoes> trancoes1 = [
  Transacoes(
    entidade: "Mercado 3.0",
    tipo: "E-Commerce",
    valor: "-10.000,00 kz",
    img: MERCADO
  ),
  Transacoes(
    entidade: "Socia",
    tipo: "E-Commerce",
    valor: "-5.000,00 kz",
    img: SOCIA
  ),
  Transacoes(
    entidade: "Garçom",
    tipo: "Entregas",
    valor: "-8.500,00 kz",
    img: GARSON
  ),
  Transacoes(
    entidade: "Kubinga",
    tipo: "Mobilidade",
    valor: "-3.500,00 kz",
    img: KUBINGA
  )
];

List<Transacoes> trancoes2 = [
  
  Transacoes(
    entidade: "Garçom",
    tipo: "Entregas",
    valor: "-8.500,00 kz",
    img: GARSON
  ),
  Transacoes(
    entidade: "Kubinga",
    tipo: "Mobilidade",
    valor: "-3.500,00 kz",
    img: KUBINGA
  ),
  Transacoes(
    entidade: "Mercado 3.0",
    tipo: "E-Commerce",
    valor: "-10.000,00 kz",
    img: MERCADO
  ),
  Transacoes(
    entidade: "Socia",
    tipo: "E-Commerce",
    valor: "-5.000,00 kz",
    img: SOCIA
  ),
];


class Percentagem {
  double size;
  String dayOfWeek;
  Color color;
  Percentagem({this.dayOfWeek, this.size, this.color});
}

List<Percentagem> everyWeek = [
  Percentagem(
    dayOfWeek: "Seg",
    size: 180,
    color: Color(0xff6246FF)
  ),

  Percentagem(
    dayOfWeek: "Ter",
    size: 70,
    color: Color(0xff6246FF) 
  ),

  Percentagem(
    dayOfWeek: "Qua",
    size: 130,
    color: Color(0xff9BA6B5)
  ),

  Percentagem(
    dayOfWeek: "Sui",
    size: 150,
    color: Color(0xff9BA6B5)
  ),

  Percentagem(
    dayOfWeek: "Sex",
    size: 90,
    color: Color(0xff9BA6B5)
  ),

  Percentagem(
    dayOfWeek: "Sab",
    size: 50,
    color: Color(0xff6246FF)
  ),

  Percentagem(
    dayOfWeek: "Dom",
    size: 30,
    color: Color(0xff9BA6B5)
  )
];