import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../i18n/strings.g.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(t.appTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 8),
            Text(t.home.tagline),
            const SizedBox(height: 24),
            FilledButton(onPressed: () {}, child: Text(t.home.start)),
          ],
        ).animate().fadeIn(duration: 400.ms),
      ),
    );
  }
}
