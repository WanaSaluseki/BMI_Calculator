import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    @required this.onPress,
    @required this.buttonTitle,
    Key? key,
  }) : super(key: key);

  final VoidCallback? onPress;
  final String? buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle!,
            style: kLargeButtonStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomContainerColour,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
