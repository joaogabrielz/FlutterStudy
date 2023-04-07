import 'package:flutter/material.dart';
import 'package:hello_world/app_widget.dart';

//DECLARATIVE
// Widget = componente, flutter tudo é widget
// cada widget tem 1 ou mais child q é um widget
// Widgets -> Stateless / Statefull

//estado global Container todo
// estado local estado text, se estiver mudando o

// pai = ancestral

//stateless - sem estado - nao tem alertação, nao animacao

//statefull - com estado - pode alterar, enquanto o aplicativo esta rodando diferente do stateless


main() {
  runApp(AppWidget(title: 'Parametro Text'));
}



