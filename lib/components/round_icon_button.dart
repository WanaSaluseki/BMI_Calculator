import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({@required this.icon, @required this.press, Key? key})
      : super(key: key);

  final IconData? icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: press,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
    );
  }
}
