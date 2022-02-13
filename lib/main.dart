import 'package:aog/widget/input.widget.dart';
import 'package:aog/widget/loading-button.widget.dart';
import 'package:aog/widget/logo.widget.dart';
import 'package:aog/widget/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gastCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Success(
            reset: (){},
            result: "Compensa utilizar x"
          ),
          Input(
            label: "Gasolina",
            ctrl: _gastCtrl,
          ),
          Input(
            label: "Álcool",
            ctrl: _alcCtrl,
          ),
          LoadingButton(
            busy: false,
            invert: false,
            func: () {},
            text: "CALCULAR",
          ),
        ],
      ),
    );
  }
}
