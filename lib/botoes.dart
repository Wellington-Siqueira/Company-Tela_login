import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String nome;
  final double altura;
  final double largura;
  final double tamfonte;

  const Botao(this.nome,
      {this.altura = 50, this.largura = 370, this.tamfonte = 24})
      : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: altura,
      width: largura,
      decoration: BoxDecoration(
        color: Color(0xff1FBFBB),
        borderRadius: BorderRadius.circular(altura / 2),
      ),
      child: Center(
        child: Text(
          nome,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: tamfonte,
          ),
        ),
      ),
    );
  }
}
