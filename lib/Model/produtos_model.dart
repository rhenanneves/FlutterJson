class Produto{
  //atributos
  final String nome;
  final double preco;
  final String categoria;


  //construtor
  Produto({required this.nome, required  this.preco,required this.categoria});

  get valor => null;
  //métodos(toJson e FromJSON)
  Map<String, dynamic> toJson() => {
    'nome': nome,
    'preco': preco,
    'categoria': categoria
  };
  
    factory Produto.fromJson(Map<String, dynamic> json){
      return Produto (
        nome: json['nome'],
        preco: json['preco'],
        categoria: json['categoria']
      );
    }
}