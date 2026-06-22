import 'package:flutter/material.dart';

class Gastronomia extends StatelessWidget {
  const Gastronomia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 246, 255, 1.0),
      appBar: AppBar(
        title: Text("Gastronomia"),
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
              Image.asset('assets/Gastronomia.png'),
              SizedBox(height: 25),
              Center(
                child: Text(
                  "A gastronomia argentina é uma das mais conhecidas da América do Sul e reflete a combinação entre ingredientes locais e influências trazidas por imigrantes europeus. O prato mais famoso é o asado, tradicional churrasco argentino preparado com diferentes cortes de carne bovina, considerado um símbolo nacional e frequentemente associado a reuniões familiares e encontros sociais. Outro alimento muito popular são as empanadas, massas recheadas com carne, queijo ou outros ingredientes, consumidas em diversas regiões do país. A culinária argentina também é conhecida pelos alfajores, pelo doce de leite e pelas massas, que demonstram a forte influência italiana presente na sociedade argentina. Além dos pratos tradicionais, o mate ocupa uma posição especial na gastronomia e na cultura do país. Consumido diariamente por milhões de pessoas, ele representa hospitalidade e convivência social. A Argentina também se destaca pela produção de vinhos, especialmente na região de Mendoza, reconhecida internacionalmente por seus vinhedos. A variedade de sabores e tradições gastronômicas faz com que a culinária argentina seja uma importante expressão da identidade nacional, atraindo turistas e admiradores de diferentes partes do mundo.",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
