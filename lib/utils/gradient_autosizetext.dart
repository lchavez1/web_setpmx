import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class GradientAutoSizedText extends StatelessWidget {
  const GradientAutoSizedText(
      this.text, {
        required this.gradient,
        this.style, required this.maxLines, required this.minFontSize,
      });

  final String text;
  final TextStyle? style;
  final Gradient gradient;
  final int maxLines;
  final double minFontSize;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: AutoSizeText(text, style: style, maxLines: maxLines, minFontSize: minFontSize,),
    );
  }
}