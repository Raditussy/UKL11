import 'package:flutter/material.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 10))
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: 180,
      // color: Colors.blue,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/1.png'), // Ganti dengan path gambar Anda
                fit: BoxFit.cover,
              ),
            ),
            padding: const EdgeInsets.all(8.0), // Add padding here
            width: 350.0,
            child: const Center(child: Text('')),
          ),
          const SizedBox(width: 20.0), // Add spacing between containers
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/2.png'), // Ganti dengan path gambar Anda
                fit: BoxFit.cover,
              ),
            ),
            padding: const EdgeInsets.all(8.0), // Add padding here
            width: 350.0,
            child: const Center(child: Text('')),
          ),
          const SizedBox(width: 20.0), // Add spacing between containers
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/3.png'), // Ganti dengan path gambar Anda
                fit: BoxFit.cover,
              ),
            ),
            padding: const EdgeInsets.all(8.0), // Add padding here
            width: 350.0,
            child: const Center(child: Text('')),
          ),
        ],
      ),
    );
  }
}
