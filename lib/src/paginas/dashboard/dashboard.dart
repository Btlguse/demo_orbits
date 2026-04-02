import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            _header(),
            const SizedBox(height: 25),
            _balance(),
            const SizedBox(height: 30),
            const Text(
              "Mis Tarjetas",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF163E49),
              ),
            ),
            _card(),
            const SizedBox(height: 30),
            const Text(
              "Recent Activity",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF163E49),
              ),
            ),
            const SizedBox(height: 10),
            _transactions(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF163E49),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Cards",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xFFD1E9EA),
          child: Icon(Icons.person, color: Color(0xFF163E49)),
        ),
        const SizedBox(width: 12),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "BIENVENIDO!",
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Alberto",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF163E49),
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_outlined,
            color: Color(0xFF163E49),
          ),
        ),
      ],
    );
  }

  Widget _balance() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: const Color(0xFF163E49),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF163E49).withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Balance Total",
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          SizedBox(height: 8),
          Text(
            "\$124,560.00",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _card() {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: 200,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF2A5C66), Color(0xFF163E49)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "PREMIUM TITANIUM",
            style: TextStyle(
              color: Colors.white60,
              fontSize: 10,
              letterSpacing: 1.5,
            ),
          ),
          const Spacer(),
          const Text(
            "**** **** **** 8824",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 3,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Alberto Guzman",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const Icon(Icons.contactless, color: Colors.white, size: 28),
            ],
          ),
        ],
      ),
    );
  }

  Widget _transactions() {
    return Column(
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            color: const Color(0xFFF5F8F8),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Color(0xFF163E49),
              ),
            ),
            title: Text(
              "Apple Store",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("May 12 • Subscription"),
            trailing: Text(
              "-\$14.99",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF163E49),
              ),
            ),
          ),
        );
      }),
    );
  }
}
