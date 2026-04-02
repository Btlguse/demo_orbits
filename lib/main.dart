import 'package:flutter/material.dart';

// Imports corregidos (sin el punto inicial para evitar conflictos de ruta)
import 'package:test_orbits/src/paginas/dashboard/dashboard.dart';
import 'package:test_orbits/src/paginas/dashboard/load/loading.dart';
import 'package:test_orbits/src/paginas/usuario/createuser/crearusuario.dart';
import 'package:test_orbits/src/paginas/usuario/login/iniciosesion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banco Orbix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF163E49)),
      ),
      initialRoute: '/',
      routes: {
        // AQUÍ ESTÁ EL CAMBIO CRÍTICO: Se eliminó la palabra 'const'
        '/': (context) => LoadingPage(),
        '/login': (context) => InicioSesionPage(),
        '/registro': (context) => CrearUsuarioPage(),
        '/dashboard': (context) => DashboardPage(),
      },
    );
  }
}
