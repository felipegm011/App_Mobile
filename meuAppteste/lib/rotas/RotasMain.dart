import 'package:flutter/material.dart';
//import 'package:meuAppteste/rotas/CadastroUsuarios.dart';
// 'package:meuAppteste/rotas/Agendamentos.dart';
import 'package:meuAppteste/rotas/inicio.dart';

import 'package:meuAppteste/rotas/CriarAgendamento.dart';

import 'Lista.dart';

class RotasMain extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'inicio',
        routes: {
          'inicio': (context) => inicio(),
          'CriarAgendamento': (context) => CriarAgendamento(),
          'lista': (context) => Lista(),
          //'Agendamentos': (context) => Agendamentos(),
          //'CadastroUsuarios': (context) => CadastroUsuarios(),
        });
  }
}
