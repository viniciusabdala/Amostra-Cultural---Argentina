import 'package:flutter/material.dart';

class Turismo extends StatelessWidget {
  const Turismo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 246, 255, 1.0),
      appBar: AppBar(
        title: Text("Turismo"),
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
              Image.asset('assets/Turismo.png'),
              SizedBox(height: 25),
              Center(
                child: Text(
                  "A Argentina possui uma grande diversidade de paisagens naturais e atrações culturais, tornando-se um dos principais destinos turísticos da América do Sul. Sua capital, Buenos Aires, é conhecida pela arquitetura inspirada em cidades europeias, pela vida cultural intensa e por pontos turísticos famosos como o Obelisco, o bairro Caminito e diversos museus. A cidade também é reconhecida como um importante centro do tango, atraindo visitantes interessados em conhecer apresentações musicais e tradições locais. Além da capital, outras regiões oferecem experiências variadas que combinam história, cultura e natureza. Entre os destinos naturais mais famosos estão a Patagônia, conhecida por suas geleiras, lagos e montanhas, e a Cordilheira dos Andes, que oferece belas paisagens e atividades de aventura. No norte do país encontram-se as Cataratas do Iguaçu, consideradas uma das maravilhas naturais do mundo e visitadas por milhões de turistas todos os anos. A Argentina também possui extensas áreas rurais nos Pampas, regiões vinícolas em Mendoza e diversas reservas naturais. Essa variedade de cenários faz com que o país seja um destino turístico capaz de agradar pessoas interessadas em cultura, esportes, gastronomia ou contato com a natureza.",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
