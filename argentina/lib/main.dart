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
                  "A Argentina é um dos países mais importantes da América do Sul. Conhecida pelo futebol, pelo tango, pelo mate e por suas belas paisagens, ela possui uma cultura rica e reconhecida mundialmente. Explore neste aplicativo alguns dos principais aspectos da identidade argentina",
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
                Text("COLOCA O TEXTO AI só que roxo",
                textAlign: TextAlign.justify,),
                SizedBox(height: 75),
                Text(
                  "Referências",
                  textScaler: TextScaler.linear(1.5),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 25),
                Text("COLOCA O sabor referencias AI só que roxo",
                textAlign: TextAlign.justify),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
