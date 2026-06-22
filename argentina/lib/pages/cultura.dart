import 'package:flutter/material.dart';

void cultura() {
  runApp(const Cultura());
}

class Cultura extends StatelessWidget {
  const Cultura({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 246, 255, 1.0),
      appBar: AppBar(
        title: Text("Cultura"),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(40.0),
          child: Column(
            children: [
              Image.asset('assets/Cultura.png'),
              SizedBox(height: 25),
              Center(
                child: Text(
                  "A cultura argentina é resultado da combinação entre as tradições dos povos indígenas e a forte influência dos imigrantes europeus que chegaram ao país principalmente durante os séculos XIX e XX. Espanhóis e italianos contribuíram significativamente para a formação dos costumes, da culinária, da arquitetura e até mesmo da forma de falar dos argentinos. Um dos maiores símbolos culturais do país é o tango, dança e gênero musical que surgiu nos bairros populares de Buenos Aires e que, com o tempo, conquistou reconhecimento internacional. Além do tango, a Argentina possui uma rica tradição literária, artística e cinematográfica, sendo berço de escritores, músicos e artistas que alcançaram destaque mundial. Outro elemento muito importante da cultura argentina é o mate, bebida preparada a partir da erva-mate e consumida diariamente por milhões de pessoas. Mais do que uma simples bebida, o mate representa amizade, convivência e compartilhamento, sendo comum em encontros familiares e entre amigos. A cultura argentina também valoriza festivais, celebrações populares, música folclórica e tradições gaúchas ligadas aos Pampas. Essa diversidade de influências e costumes ajudou a construir uma identidade cultural única, que continua sendo uma das mais reconhecidas da América do Sul.",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
