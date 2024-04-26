import 'package:exemplo_json/Controller/produto_controller.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late ProdutoController _produtoController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Produtos"),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: _produtoController.produtos.length,
                itemBuilder: (context, index) {
                  final produto = _produtoController.produtos[index];
                  return ListTile(
                    title: Text(produto.nome),
                    subtitle: Text('Preço: ${produto.preco.toStringAsFixed(2)} - Categoria: ${produto.categoria}'),
                  );
                },
              ),
            ),

        ],
      ),
    );
  }
}