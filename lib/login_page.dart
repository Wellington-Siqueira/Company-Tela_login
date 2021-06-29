import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_simples/botoes.dart';
import 'package:login_simples/input_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    changeStatusBar();
  }

  void changeStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Color(0xff006EDB),
                  Color(0xff14DBDB),
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 300,
                    height: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16, top: 16),
                    child: InputWidget(
                      "Email...",
                      teclado: TextInputType.emailAddress,
                    ),
                  ),
                  InputWidget(
                    "Senha...",
                    teclado: TextInputType.visiblePassword,
                    ocultarTexto: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Botao(
                          "Entrar",
                          largura: MediaQuery.of(context).size.width * 0.4,
                        ),
                        Botao(
                          "Cadastrar",
                          largura: MediaQuery.of(context).size.width * 0.4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
