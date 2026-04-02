import 'dart:async';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  // El constructor const ayuda al rendimiento
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();

    // Iniciamos el temporizador para la navegación
    Timer(const Duration(seconds: 3), () {
      // Verificamos si el widget sigue "montado" para evitar errores de memoria
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/login');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Eliminamos el backgroundColor para que el Container con gradiente sea el que mande
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFD1E9EA), // Tu color de marca (verde agua)
              Colors.white, // Transición a blanco
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icono de Escudo de tu diseño
            const Icon(
              Icons.shield_rounded,
              size: 80,
              color: Color(0xFF163E49),
            ),
            const SizedBox(height: 20),
            // Texto del Banco
            const Text(
              "Banco Orbix",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF163E49),
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 40),
            // Indicador de carga sutil
            const CircularProgressIndicator(
              strokeWidth: 3,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF163E49)),
            ),
          ],
        ),
      ),
    );
  }
}
