import 'package:flutter_test/flutter_test.dart';
import 'package:movielog/main.dart';

void main() {
  testWidgets('프로필 화면의 주요 내용이 표시된다', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('내 프로필'), findsOneWidget);
    expect(find.text('무비러버'), findsOneWidget);
    expect(find.text('본 영화'), findsOneWidget);
    expect(find.text('평점'), findsOneWidget);
    expect(find.text('즐겨찾기'), findsOneWidget);
    expect(find.text('선호하는 장르'), findsOneWidget);
  });
}
