import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.send,
              size: 80,
              color: const Color(0xFF163E49).withOpacity(0.3),
            ),
            const SizedBox(height: 20),
            const Text(
              "Transfer Page",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF163E49),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Coming soon...",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
