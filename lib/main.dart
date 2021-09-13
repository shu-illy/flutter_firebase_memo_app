import 'package:flutter/material.dart';

import 'pages/top_page.dart';

void main() {
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

// TODO: メモクラスを定義
// TODO: Android Firebaseプロジェクト
// TODO: iOS Firebaseプロジェクトの作成
// TODO: Cloud Firestoreを設定
// TODO: FlutterとFirebaseを連携
// TODO: TopPageにメモのリストを表示
// TODO: リストをタップでメモの詳細を確認可能に
// TODO: メモ追加画面のUIを作成
// TODO: 追加ボタンタップでメモを追加加納に
// TODO: 追加したメモをリアルタイム取得表示
// TODO: リストの右側のボタンタップでボトムシートを表示
// TODO: 編集画面を作成しメモを更新可能に
// TODO: メモを削除可能に