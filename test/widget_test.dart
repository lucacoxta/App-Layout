import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myapp/main.dart'; // Substitua 'myapp' pelo nome correto do seu projeto.

void main() {
  testWidgets('Floating Action Button test', (WidgetTester tester) async {
    // Construa o aplicativo e acione um quadro (frame).
    await tester.pumpWidget(const App()); // Substitua App() pelo widget correto, se necessário.

    // Verifique se o texto 'Layout Superior' está presente.
    expect(find.text('Layout Superior'), findsOneWidget);

    // Verifique se o texto 'Layout Inferior' está presente.
    expect(find.text('Layout Inferior'), findsOneWidget);

    // Verifique se o texto 'Meu Aplicativo' está presente no centro.
    expect(find.text('Meu Aplicativo'), findsOneWidget);

    // Verifique se o FloatingActionButton está visível.
    expect(find.byType(FloatingActionButton), findsOneWidget);

    // Toque no botão de ação flutuante e acione o quadro novamente.
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump(); // Aguarda a atualização do estado.

    // Após o clique no botão, aqui você pode verificar se algum estado do app mudou.
    // Como não há alterações visuais no código original, vamos verificar se o botão ainda existe.
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
