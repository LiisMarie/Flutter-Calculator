import 'package:HW2/widgets/button_delete_history.dart';
import 'package:HW2/widgets/display_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        actions: <Widget>[
          ButtonDeleteHistory(),
        ],
      ),
      body: DisplayHistory(),
    );
  }
}
