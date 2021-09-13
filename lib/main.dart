import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'pages/top_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopPage(title: 'Flutter Demo Home Page'),
    );
  }
}

// TODO: TopPageにメモのリストを表示
// TODO: リストをタップでメモの詳細を確認可能に
// TODO: メモ追加画面のUIを作成
// TODO: 追加ボタンタップでメモを追加加納に
// TODO: 追加したメモをリアルタイム取得表示
// TODO: リストの右側のボタンタップでボトムシートを表示
// TODO: 編集画面を作成しメモを更新可能に
// TODO: メモを削除可能に