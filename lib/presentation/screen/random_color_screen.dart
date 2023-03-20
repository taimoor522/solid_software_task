import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_software_task/presentation/notifier/random_color_notifier.dart';

/// This is the application's root widget.
class RandomColorScreen extends StatelessWidget {
  /// const constructor optionally takes a [Key].
  const RandomColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// selector is used to select a value from the notifier.
    /// The selector is called whenever
    /// a specific value of a notifier is changed
    return Selector<RandomColorNotifier, Color>(
      selector: (_, colorNotifier) => colorNotifier.currentColor,
      builder: (context, color, child) {
        return Material(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            color: color,
            child: child,
          ),
        );
      },

      /// the child value is passed to the builder.
      /// this will not rebuild when the color changes.
      /// so, performance is improved.
      child: InkWell(
        onTap: context.read<RandomColorNotifier>().changeColor,
        child: Center(
          child: Text(
            'Hello there',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}
