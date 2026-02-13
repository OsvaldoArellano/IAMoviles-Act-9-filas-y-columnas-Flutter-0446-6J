import 'package:flutter/material.dart';

void main() => runApp(const AppPapeleria());

class AppPapeleria extends StatelessWidget {
  const AppPapeleria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Productos(),
    );
  }
}

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Papeleria Arellano",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.shopping_cart),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            // Primera fila
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(
                        Colors.orange, "Cuadernos", Colors.white, Icons.menu_book),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: buildContainer(
                        const Color.fromARGB(255, 8, 77, 14),
                        "Lápices",
                        Colors.white,
                        Icons.edit),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Segunda fila
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(
                        Colors.pink, "Marcadores", Colors.white, Icons.brush),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: buildContainer(
                        const Color.fromARGB(255, 55, 37, 136),
                        "Carpetas",
                        Colors.white,
                        Icons.folder),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Tercera fila
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildContainer(
                        const Color.fromARGB(255, 24, 20, 243),
                        "Colores",
                        Colors.white,
                        Icons.color_lens),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: buildContainer(
                        const Color.fromARGB(255, 190, 26, 14),
                        "Reglas",
                        Colors.white,
                        Icons.straighten),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(
      Color color, String text, Color textColor, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: textColor,
              size: 40,
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
