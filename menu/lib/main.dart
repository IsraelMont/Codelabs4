import 'package:flutter/material.dart';

void main() {
  runApp(const Menu()); // Inicia la aplicación Flutter
}

// Widget reutilizable para un elemento de menú
class MenuItem extends StatelessWidget {
  const MenuItem(this.icon, this.itemText,
      {super.key}); // Constructor de MenuItem
  final String icon; // Icono del elemento de menú
  final String itemText; // Texto del elemento de menú

  @override
  Widget build(BuildContext context) {
    // Método de construcción del widget
    return ListTile(
      // Devuelve un ListTile que muestra el icono y el texto del elemento de menú
      leading: Text(
        // Muestra el icono del elemento de menú
        icon,
        style: const TextStyle(
          fontSize: 30.0,
        ),
      ),
      title: Text(itemText), // Muestra el texto del elemento de menú
    );
  }
}

// Pantalla principal del menú
class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    // Método de construcción del widget
    return MaterialApp(
      // Devuelve un MaterialApp para proporcionar un contexto de Material Design
      title: 'Flutter Demo', // Título de la aplicación
      home: Scaffold(
        // Devuelve un Scaffold que proporciona la estructura básica de la pantalla
        appBar: AppBar(
          // Muestra una barra de aplicación con un título
          title: const Text('Menu'), // Título de la barra de aplicación
        ),
        body: const Padding(
          // Agrega un relleno al cuerpo de la pantalla
          padding: EdgeInsets.all(20.0), // Define el tamaño del relleno
          child: Column(
            // Devuelve una columna que organiza los widgets en una sola columna
            children: [
              Example1(), // Ejemplo 1: Mensaje de introducción
              Expanded(child: Example2()), // Ejemplo 2: Lista de elementos de menú
              Example3(), // Ejemplo 3: Botones de acción con divisor vertical
            ],
          ),
        ),
      ),
    );
  }
}

// Ejemplo 1: Mensaje de introducción
class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    // Método de construcción del widget
    return const Padding(
      // Devuelve un widget con relleno
      padding: EdgeInsets.all(20.0), // Define el tamaño del relleno
      child: Text(
        // Muestra un mensaje de introducción
        '¡Explore los deliciosos elementos del menú del restaurante a continuación!', // Mensaje de introducción
        style: TextStyle(
          fontSize: 18.0,
        ),
      ),
    );
  }
}

// Ejemplo 2: Lista de elementos de menú
class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    // Método de construcción del widget
    return ListView(
      // Devuelve un ListView para mostrar una lista de elementos
      children: const [
        MenuItem('🍔', 'Burger'), // Elemento de menú: Burger
        MenuItem('🌭', 'Hot Dog'), // Elemento de menú: Hot Dog
        MenuItem('🍟', 'Fries'), // Elemento de menú: Fries
        MenuItem('🥤', 'Soda'), // Elemento de menú: Soda
        MenuItem('🍦', 'Ice Cream'), // Elemento de menú: Ice Cream
      ],
    );
  }
}

// Ejemplo 3: Botones de acción con divisor vertical
class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    // Método de construcción del widget
    return const Row(
      // Devuelve una fila que organiza los widgets en una sola fila
      mainAxisAlignment: MainAxisAlignment
          .spaceEvenly, // Distribuye los widgets de manera uniforme a lo largo del eje principal
      children: [
        Text(
          // Texto del botón
          'Pickup',
        ),
        SizedBox(
          // Espacio con ancho fijo para el divisor vertical
          width: 5.0, // Ancho del divisor vertical
          child: VerticalDivider(
            thickness: 5.0, // Grosor del divisor vertical
          ),
        ),
        Text(
          // Texto del botón
          'Delivery',
        )
      ],
    );
  }
}
