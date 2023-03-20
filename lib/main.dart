import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_software_task/presentation/notifier/random_color_notifier.dart';
import 'package:solid_software_task/presentation/screen/random_color_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => RandomColorNotifier(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RandomColorScreen(),
      ),
    ),
  );
}
