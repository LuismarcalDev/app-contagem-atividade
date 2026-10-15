import 'package:flutter_test/flutter_test.dart';

import 'package:aplicativo01/main.dart';

void main() {
  testWidgets('deve aumentar e zerar o contador', (tester) async {
    await tester.pumpWidget(const MeuAplicativo());

    expect(find.text('Comece concluindo sua primeira tarefa!'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.text('Concluir uma tarefa'));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
    expect(find.text('Muito bem, continue estudando!'), findsOneWidget);

    await tester.ensureVisible(find.text('Zerar contador'));
    await tester.tap(find.text('Zerar contador'));
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
  });
}
