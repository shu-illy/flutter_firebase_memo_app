import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_memo_app/model/memo.dart';
import 'add_memo_page.dart';
import 'memo_page.dart';

class TopPage extends StatefulWidget {
  TopPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  List<Memo> memoList = [];

  Future<void> getMemo() async {
    var snapshot = await FirebaseFirestore.instance.collection('memo').get();
    var docs = snapshot.docs;
    docs.forEach((doc) {
      memoList.add(Memo(
        title: doc.data()['title'],
        detail: doc.data()['detail'],
      ));
    });
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMemo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter×Firebase'),
      ),
      body: ListView.builder(
          itemCount: memoList.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(memoList[index].title),
                onTap: () {
                  // 確認画面に遷移
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MemoPage(memoList[index])));
                });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddMemoPage()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
