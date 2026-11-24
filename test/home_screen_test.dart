import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:icon_detectives/app.dart';
import 'package:icon_detectives/i18n/strings.g.dart';

void main() {
  testWidgets('home screen shows title and start button', (tester) async {
    LocaleSettings.setLocale(AppLocale.tr);
    await tester.pumpWidget(ProviderScope(child: TranslationProvider(child: const IconDetectivesApp())));
    await tester.pumpAndSettle();
    expect(find.text('Icon Detectives'), findsOneWidget);
    expect(find.text('Başla'), findsOneWidget);
  });
}
