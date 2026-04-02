import 'package:flutter/material.dart'; // <--- OBLIGATORIO

class CrearUsuarioPage extends StatelessWidget {
  const CrearUsuarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF163E49)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Registro",
          style: TextStyle(
            color: Color(0xFF163E49),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Cree su cuenta",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Complete sus datos para comenzar.",
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
              const SizedBox(height: 30),

              // Fila de Nombre y Apellido
              Row(
                children: [
                  Expanded(child: _buildInput("Nombre", "John")),
                  const SizedBox(width: 15),
                  Expanded(child: _buildInput("Apellido", "Doe")),
                ],
              ),
              const SizedBox(height: 20),

              // Correo
              _buildInput(
                "Correo electrónico",
                "nombre@ejemplo.com",
                icon: Icons.email_outlined,
              ),
              const SizedBox(height: 20),

              // Contraseña
              _buildInput(
                "Contraseña",
                "••••••••",
                isPass: true,
                icon: Icons.lock_outline,
              ),
              const SizedBox(height: 40),

              // Botón de Registro
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    // Aquí iría la lógica de creación de usuario
                    Navigator.pop(context); // Por ahora solo regresa al login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF163E49),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 2,
                  ),
                  child: const Text(
                    "Registrarse",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget de ayuda para construir los campos de texto
  Widget _buildInput(
    String label,
    String hint, {
    bool isPass = false,
    IconData? icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF163E49),
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          obscureText: isPass,
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: icon != null ? Icon(icon, color: Colors.grey) : null,
            filled: true,
            fillColor: const Color(0xFFF5F8F8),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 18,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
          ),
        ),
      ],
    );
  }
}
