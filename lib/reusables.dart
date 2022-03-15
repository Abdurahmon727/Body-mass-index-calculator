import 'package:flutter/material.dart';

Color backgroundColor = const Color.fromARGB(0xFF, 0x0A, 0x0E, 0x21);
Color activatedButton = const Color(0xFF1D1E33);
Color inactivateButton = const Color(0xFF111328);
Color buttonColor = const Color(0xFFEB1555);

class circleButton extends StatelessWidget {
  circleButton(this.icon, this.sign);
  final IconData icon;
  final Function sign;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      onPressed: sign(),
      child: Icon(
        icon,
        color: Colors.white,
      ),
      constraints: const BoxConstraints.tightFor(width: 50, height: 50),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
    );
  }
}

class Child extends StatelessWidget {
  Child(this.c, this.t);

  final IconData c;
  final String t;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(c, size: 80, color: Colors.white),
        const SizedBox(height: 15),
        Text(
          t,
          style: const TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}

class ReusableCode extends StatelessWidget {
  ReusableCode(
      {required this.colour, required this.codeChild, required this.onPress});
  final Color colour;
  final Widget codeChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: codeChild,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
