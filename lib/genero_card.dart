import 'package:flutter/material.dart';

class GeneroCard extends StatelessWidget {
  GeneroCard(this.icon, this.generoUser);

  final IconData icon;
  final String generoUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 95.0,
        ),
        SizedBox(height: 15.0),
        Text(
          generoUser,
          style: TextStyle(color: Colors.black,
          fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ],
    );
  }
} 