import 'package:web_api_app/controllers/pessoa.controller.dart';
import 'package:web_api_app/views/pessoa_list.view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<PessoaController>.value(
            value: PessoaController(),
          )
        ],
        child: MaterialApp(
          title: 'PUC APP',
          debugShowCheckedModeBanner: false,
          home: PessoaListView(),
        ));
  }
}
