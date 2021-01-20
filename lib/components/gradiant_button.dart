import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  final Gradient gradient;
  final double radius;

  GradientButton({
    @required this.onPressed,
    @required this.child,
    @required this.gradient,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Ink(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(radius==null?5.0:radius),
        ),
        child: Container(
            constraints: BoxConstraints(maxWidth: 200.0, minHeight: 40.0),
            alignment: Alignment.center,
            child: child),
      ),
      splashColor: Colors.black12,
      padding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
    );
  }
}
