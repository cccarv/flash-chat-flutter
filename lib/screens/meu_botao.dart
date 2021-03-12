import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MeuBotao extends StatelessWidget {
  Color buttonColour;
  String buttonText;
  Function onPressed;

  MeuBotao({Color colour, String text, Function onPressed}) {
    this.buttonColour = colour;
    this.buttonText = text;
    this.onPressed = onPressed;
  }

  // static Color setMeuBotao({Color colour}) {
  //   Color buttonColour = colour;
  //   return buttonColour;
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: MeuBotao(
                colour: buttonColour, text: buttonText, onPressed: onPressed)
            .buttonColour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: MeuBotao(
                  colour: buttonColour, text: buttonText, onPressed: onPressed)
              .onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            MeuBotao(
                    colour: buttonColour,
                    text: buttonText,
                    onPressed: onPressed)
                .buttonText,
          ),
        ),
      ),
    );
  }
}
