import 'package:flutter/material.dart';
import 'package:flutter_routing/animations/animated_button.dart';
import 'package:flutter_routing/themes/themeGuide.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.gradient,
    required this.child,
    this.onPress,
  }) : super(key: key);

  final Gradient gradient;
  final Widget child;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return AnimButton(
      onTap: (){
        if(onPress != null)
          onPress!();
      },
      child: Container(
        padding: ThemeGuide.padding16,
        decoration: BoxDecoration(
          borderRadius: ThemeGuide.borderRadius,
          color: Colors.transparent.withAlpha(220),
          gradient: gradient,
        ),
        child: child,
      ),
    );
  }
}
