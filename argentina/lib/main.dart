import 'package:flutter/material.dart';
import 'package:argentina/pages/cultura.dart';
import 'package:argentina/pages/futebol.dart';
import 'package:argentina/pages/gastronomia.dart';
import 'package:argentina/pages/turismo.dart';

void main() {
  runApp(const MaterialApp(title: "Argentina",
    home: MainApp(),));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAPP createState() => MainAPP();
}

class MainAPP extends State<MainApp> {
 
@override
  void initState() {
    super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Conheça a Argentina!"),
          backgroundColor: const Color.fromARGB(255, 117, 170, 219),
          leading: Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: Image.asset('assets/Sol.png'),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: Column(
              children: [
                Text("Argentina", textScaler: TextScaler.linear(2)),
                Image.asset('assets/Bandeira.png'),

                SizedBox(height: 25),
                Text(
                  "A Argentina é um dos países mais importantes da América do Sul. Conhecida pelo futebol, pelo tango, pelo mate e por suas belas paisagens, ela possui uma cultura rica e reconhecida mundialmente. Explore neste aplicativo alguns dos principais aspectos da identidade argentina",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                Text("Sobre a bandeira:", textScaler: TextScaler.linear(1.5)),
                SizedBox(height: 25),
                Text(
                  "A bandeira da Argentina é um dos principais símbolos nacionais do país. Ela é formada por três faixas horizontais: duas faixas azuis nas partes superior e inferior e uma faixa branca no centro. No meio da faixa branca está o Sol de Maio, um símbolo que representa a liberdade e a independência da nação. A bandeira foi criada por Manuel Belgrano em 1812, durante o processo de independência da Argentina em relação à Espanha. Desde então, tornou-se um importante elemento da identidade nacional argentina. As cores azul e branco estão associadas ao céu e às nuvens, embora existam diferentes interpretações históricas sobre seu significado. Atualmente, a bandeira é utilizada em eventos oficiais, celebrações patrióticas e competições esportivas, representando o orgulho e a união do povo argentino. Ela é reconhecida mundialmente e está fortemente ligada à história, à cultura e às conquistas do país.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Card(
                      elevation: 4,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Futebol(),));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.sports_soccer, size: 40),
                            SizedBox(height: 8),
                            Text("Futebol"),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Gastronomia(),));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.restaurant, size: 40),
                            SizedBox(height: 8),
                            Text("Gastronomia"),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Turismo(),));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.flight, size: 40),
                            SizedBox(height: 8),
                            Text("Turismo"),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Cultura(),));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.celebration, size: 40),
                            SizedBox(height: 8),
                            Text("Cultura"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Text(
                  "Como surgiu?",
                  textScaler: TextScaler.linear(1.5),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 25),
                Text("A história da Argentina começou com os povos indígenas que habitavam a região antes da chegada dos europeus. No século XVI, os espanhóis colonizaram o território, que permaneceu sob domínio da Espanha por vários séculos. Em 1810, teve início o processo de independência com a Revolução de Maio, e em 1816 a Argentina declarou oficialmente sua independência. Durante o século XIX, o país passou por conflitos internos e um período de organização política. No final do século XIX e início do século XX, a Argentina recebeu milhões de imigrantes, principalmente da Itália e da Espanha, o que influenciou fortemente sua cultura. Nesse período, o país se tornou uma das economias mais prósperas do mundo. Ao longo do século XX, a Argentina enfrentou crises políticas, governos militares e dificuldades econômicas. Um dos líderes mais conhecidos foi Juan Domingo Perón, cuja influência marcou a história do país. Atualmente, a Argentina é uma das principais nações da América do Sul, reconhecida por sua rica cultura, pelo tango, pelo futebol e por sua importância econômica e histórica na região",
                textAlign: TextAlign.justify,),
                SizedBox(height: 75),
                Text(
                  "Referências",
                  textScaler: TextScaler.linear(1.5),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 25),
                Text("ARGENTINA. Gobierno de la República Argentina. Disponível em: <https://www.argentina.gob.ar>. Acesso em: 21 jun. 2026.",
                textAlign: TextAlign.justify),
                Text("ENCYCLOPAEDIA BRITANNICA. Argentina. Disponível em: <https://www.britannica.com/place/Argentina>. Acesso em: 21 jun. 2026.",
                textAlign: TextAlign.justify),
                Text("ARGENTINA TURISMO. Portal Oficial de Turismo da Argentina. Disponível em: <https://www.argentina.travel>. Acesso em: 21 jun. 2026.",
                textAlign: TextAlign.justify)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
