import 'package:flutter/material.dart';

extension WidgetHelpers on Widget {
  Widget addSpacing({
    double? left,
    double? right,
    double? top,
    double? bottom,
    double? horizontal,
    double? vertical,
  }) {
    assert(
      (left == null && right == null && top == null && bottom == null) ||
          (horizontal == null && vertical == null),
      'If left, right, top, or bottom are provided, horizontal and vertical must be null, and vice versa',
    );
    assert(
      (horizontal == null && vertical == null) ||
          (left == null && right == null && top == null && bottom == null),
      'If horizontal or vertical are provided, left, right, top, and bottom must be null, and vice versa',
    );

    EdgeInsets padding;
    if (left != null || right != null || top != null || bottom != null) {
      padding = EdgeInsets.only(
        left: (left ?? 0.0),
        right: (right ?? 0.0),
        top: (top ?? 0.0),
        bottom: (bottom ?? 0.0),
      );
    } else {
      padding = EdgeInsets.symmetric(
        horizontal: (horizontal ?? 0.0),
        vertical: (vertical ?? 0.0),
      );
    }

    return Padding(
      padding: padding,
      child: this,
    );
  }
}
