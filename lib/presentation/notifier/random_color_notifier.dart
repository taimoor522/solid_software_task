// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

/// This notifier is responsible for changing the color of the screen.
class RandomColorNotifier extends ChangeNotifier {
  /// the opacity of the color. (0.0 - 1.0).
  final double _opacity = 1;

  /// the maximum value of the color intensity (0 - 255).
  final int _maximumColorIntensity = 255;

  Color _currentColor = Colors.white;

  /// getter for [_currentColor].
  Color get currentColor => _currentColor;

  /// setter for [_currentColor].
  /// whenever the color is changed, the listeners are notified.
  set currentColor(Color value) {
    _currentColor = value;
    notifyListeners();
  }

  /// constructor generates a random color as soon as the notifier is created.
  RandomColorNotifier() {
    changeColor();
  }

  /// generate a random color and assign it to [_currentColor].
  void changeColor() {
    final random = Random();

    /// rgbo constructor takes 4 parameters to generate a color.
    /// red, green, blue, opacity.
    /// 1 is added to the maximum color intensity
    /// because last value is exclusive.
    currentColor = Color.fromRGBO(
      random.nextInt(_maximumColorIntensity + 1),
      random.nextInt(_maximumColorIntensity + 1),
      random.nextInt(_maximumColorIntensity + 1),
      _opacity,
    );
  }
}
