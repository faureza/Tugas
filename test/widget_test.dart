import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/main.dart';
import 'package:myapp/home_page.dart';
import 'package:myapp/detail_page.dart';
import 'package:myapp/gallery_page.dart';
import 'package:myapp/profile_page.dart';

void main() {
  testWidgets('Smoke test: Main app loads', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.byType(HomePage), findsOneWidget);
  });

  testWidgets('HomePage loads and displays list items', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));
    expect(find.text('Resep Masakan 1'), findsOneWidget);
    expect(find.text('Resep Masakan 2'), findsOneWidget);
  });

  testWidgets('Navigation to DetailPage works', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    expect(find.text('Resep Masakan 1'), findsOneWidget);
    await tester.tap(find.text('Resep Masakan 1'));
    await tester.pumpAndSettle();

    expect(find.byType(DetailPage), findsOneWidget);
    expect(find.text('Resep Masakan 1'), findsOneWidget);
  });

  testWidgets('DetailPage navigates to GalleryPage', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: DetailPage(resep: 'Resep Masakan 1', detail: 'Detail Resep Masakan 1')));

    expect(find.text('Lihat Galeri Foto'), findsOneWidget);
    await tester.tap(find.text('Lihat Galeri Foto'));
    await tester.pumpAndSettle();

    expect(find.byType(GalleryPage), findsOneWidget);
  });

  testWidgets('ProfilePage changes username', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ProfilePage()));

    expect(find.text('Nama: User'), findsOneWidget);
    await tester.tap(find.text('Ubah Nama'));
    await tester.pump();

    expect(find.text('Nama: New User'), findsOneWidget);
  });

  testWidgets('Adding detail in DetailPage works', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: DetailPage(resep: 'Resep Masakan 1', detail: 'Detail Resep Masakan 1')));

    expect(find.text('Tambah Detail Resep'), findsOneWidget);
    await tester.tap(find.text('Tambah Detail Resep'));
    await tester.pumpAndSettle();

    expect(find.byType(AlertDialog), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'Detail tambahan');
    await tester.tap(find.text('Tambahkan'));
    await tester.pumpAndSettle();

    // Cek apakah detail tambahan muncul
    // Anda perlu memperbarui logika di DetailPage untuk benar-benar menampilkan detail tambahan
  });
}
