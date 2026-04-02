import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          _headerProfile(),
          const SizedBox(height: 30),
          _informacionPersonal(),
          const SizedBox(height: 25),
          _informacionContacto(),
          const SizedBox(height: 25),
          _opcionesSeguridad(),
          const SizedBox(height: 25),
          _botonCerrarSesion(context),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _headerProfile() {
    return Column(
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundColor: Color(0xFFD1E9EA),
          child: Icon(
            Icons.person,
            size: 60,
            color: Color(0xFF163E49),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          "Alberto Guzman",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF163E49),
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "Usuario Verificado",
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _informacionPersonal() {
    return _seccion(
      titulo: "Información Personal",
      mostrarBotonEditar: true,
      children: [
        _itemInfoConIcono(
          icono: Icons.person,
          label: "Nombre Completo",
          valor: "Alberto Guzman",
        ),
        _itemInfoConIcono(
          icono: Icons.badge,
          label: "Cédula/DNI",
          valor: "1234567890",
        ),
        _itemInfoConIcono(
          icono: Icons.cake,
          label: "Fecha de Nacimiento",
          valor: "15 de Marzo de 1990",
        ),
      ],
    );
  }

  Widget _informacionContacto() {
    return _seccion(
      titulo: "Información de Contacto",
      mostrarBotonEditar: true,
      children: [
        _itemInfoConIcono(
          icono: Icons.email,
          label: "Correo Electrónico",
          valor: "alberto.guzman@email.com",
        ),
        _itemInfoConIcono(
          icono: Icons.phone,
          label: "Teléfono",
          valor: "+593 962945753",
        ),
        _itemInfoConIcono(
          icono: Icons.location_on,
          label: "Dirección",
          valor: "Calle 10 #5-30, Guayaquil, Ecuador",
        ),
      ],
    );
  }


  Widget _opcionesSeguridad() {
    return _seccion(
      titulo: "Opciones de Seguridad",
      children: [
        _itemBoton(
          icono: Icons.lock,
          label: "Cambiar Contraseña",
          onTap: () {},
        ),
        _itemBoton(
          icono: Icons.security,
          label: "Autenticación de Dos Factores",
          onTap: () {},
        ),
        _itemBoton(
          icono: Icons.history,
          label: "Historial de Sesiones",
          onTap: () {},
        ),
      ],
    );
  }

  Widget _botonCerrarSesion(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/login');
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.logout, color: Colors.white, size: 20),
            SizedBox(width: 10),
            Text(
              "Cerrar Sesión",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _seccion({
    required String titulo,
    required List<Widget> children,
    bool mostrarBotonEditar = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF163E49),
              ),
            ),
            if (mostrarBotonEditar)
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Editar",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF163E49),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 15),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF5F8F8),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(children: children),
        ),
      ],
    );
  }

  Widget _itemInfo({required String label, required String valor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            valor,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF163E49),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemInfoConIcono({
    required IconData icono,
    required String label,
    required String valor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icono,
            color: const Color(0xFF163E49),
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  valor,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF163E49),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemBoton({
    required IconData icono,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Icon(
              icono,
              color: const Color(0xFF163E49),
              size: 20,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF163E49),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: Colors.grey,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
