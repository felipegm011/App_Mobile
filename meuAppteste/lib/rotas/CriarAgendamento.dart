import 'package:flutter/material.dart';

import 'Agendamento.dart';

class CriarAgendamento extends StatelessWidget {
  // This widget is the root of your application.
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorCurso = TextEditingController();
  final TextEditingController _controladorData = TextEditingController();
  final TextEditingController _controladorMatricula = TextEditingController();
  final TextEditingController _controladorAssunto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Criando o agendamento '),
          backgroundColor: Colors.indigo,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controladorNome,
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorCurso,
                  decoration: InputDecoration(labelText: 'Curso'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorMatricula,
                  decoration: InputDecoration(labelText: 'Matricula'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorData,
                  decoration: InputDecoration(labelText: 'Data'),
                ),
              ), 
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorAssunto,
                  decoration: InputDecoration(labelText: 'Assunto ou título'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                  child: Text('Criar'),
                  onPressed: () {
                    final String nome = _controladorNome.text;
                    final String curso = _controladorCurso.text;
                    final String matricula = _controladorMatricula.text;
                    final String data = _controladorData.text;
                    final String assunto = _controladorAssunto.text;
                    if (nome != "" &&
                        curso != "" &&
                        matricula != "" &&
                        data != "" &&
                        assunto != "") {
                      Navigator.pushNamed(context, 'lista');
                    } else if (matricula == "" &&
                        nome == "" &&
                        curso != "" &&
                        data == "" &&
                        assunto == "") {
                      AlertDialog alert = AlertDialog(
                        title: Text("Erro"),
                        content: Text("Preencha os campos."),
                        backgroundColor: Colors.red,
                      );
                      // show the dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    } else if (matricula == "") {
                      AlertDialog alert = AlertDialog(
                        title: Text("Erro"),
                        content: Text("Preencha os campos"),
                        backgroundColor: Colors.red,
                      );
                      // show the dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    } else if (nome == "") {
                      AlertDialog alert = AlertDialog(
                        title: Text("Erro"),
                        content: Text("Preencha os campos"),
                        backgroundColor: Colors.red,
                      );
                      // show the dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    } else if (data == "") {
                      AlertDialog alert = AlertDialog(
                        title: Text("Erro"),
                        content: Text("Preencha os campos"),
                        backgroundColor: Colors.red,
                      );
                      // show the dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    } else if (assunto == "") {
                      AlertDialog alert = AlertDialog(
                        title: Text("Erro"),
                        content: Text("Preencha os campos"),
                        backgroundColor: Colors.red,
                      );
                      // show the dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                      //final Agendamento usuarioNovo =
                          Agendamento(nome,curso, data, matricula, assunto);
                      //print(usuarioNovo);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

