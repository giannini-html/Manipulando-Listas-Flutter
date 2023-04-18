import 'package:aula/contatos.dart';
import 'package:flutter/material.dart';

class ListaContatos extends StatefulWidget {
  const ListaContatos({Key? key}) : super(key: key);

  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  List<Contato> contatos = [
    Contato('Gustavo Giannini', 'gustavo@email.com'),
    Contato('Marcos', 'marcos@email.com'),
    Contato('Maria', 'maria@email.com'),
    Contato('João', 'joao@email.com'),
    Contato('Roberta', 'roberta@email.com'),
    Contato('Paulo', 'paulo@email.com'),
    Contato('Marcia', 'marcia@email.com'),
    Contato('James', 'james@email.com'),
    Contato('Henrique', 'henrique@email.com'),
    Contato('Shelby', 'shelby@email.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(
                contatos.elementAt(index).nomeCompleto.substring(0, 1),
              ),
            ),
            title: Text(
              contatos.elementAt(index).nomeCompleto,
            ),
            subtitle: Text(
              contatos.elementAt(index).email,
            ),
          );
        },
      ),
    );
  }
}
