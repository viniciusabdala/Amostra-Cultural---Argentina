import 'package:flutter/material.dart';

class Futebol extends StatelessWidget{
  const Futebol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Futebol"),
        backgroundColor: const Color.fromARGB(255, 117, 170, 219),
        leading: Padding(
          padding: EdgeInsetsGeometry.all(8.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 25,),
          Image.asset('assets/Futebol.png'),
          SizedBox(height: 25,),
          Center(child: Text("O futebol é considerado a maior paixão nacional da Argentina e ocupa um papel central na vida de grande parte da população. Desde cedo, muitas crianças sonham em se tornar jogadores profissionais, e os estádios costumam receber torcidas extremamente apaixonadas. O país possui uma longa tradição no esporte e revelou alguns dos maiores jogadores da história, como Diego Maradona e Lionel Messi. A seleção argentina conquistou diversos títulos importantes, incluindo Copas do Mundo, e é reconhecida por seu estilo de jogo competitivo e pela qualidade de seus atletas. O futebol também está presente no cotidiano dos argentinos por meio de clubes tradicionais, rivalidades históricas e eventos esportivos que mobilizam milhões de pessoas. Além de sua importância esportiva, o futebol faz parte da identidade cultural argentina. Grandes estádios, como os de Buenos Aires, tornaram-se pontos turísticos visitados por pessoas do mundo inteiro. As conquistas da seleção e de seus jogadores são frequentemente celebradas como momentos de orgulho nacional, fortalecendo o sentimento de união entre os argentinos. A influência do futebol pode ser observada na mídia, na música, nas conversas do dia a dia e até mesmo em manifestações artísticas, demonstrando que o esporte vai muito além dos gramados e se tornou um dos principais símbolos do país.")),
        ],
      ),
    );
  }
}