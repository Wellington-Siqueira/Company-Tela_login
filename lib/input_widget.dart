import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String texto;
  final TextInputType teclado;
  final bool ocultarTexto;

  const InputWidget(this.texto, {this.teclado, this.ocultarTexto = false})
      : super();

  @override
  Widget build(BuildContext context) {
    double _largura = MediaQuery.of(context).size.width;
    return Container(
      width: _largura * 0.9 > 370 ? 370 : _largura * 0.9,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: TextField(
          obscureText: ocultarTexto,
          keyboardType: teclado,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: texto,
            hintStyle: TextStyle(
              color: Colors.white60,
            ),
          ),
        ),
      ),
    );
  }
}
