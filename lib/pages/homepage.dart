import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final String url ='https://pixabay.com/api/videos/?key=18251346-fa9f084bd34fc8886ff43bfce&q=yellow+flowers';
  List data;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async {
    var response = await http.get(
        Uri.encodeFull(url),
        headers: {'Accept': 'application/json'}
    );
    print(response.body);
    setState(() {
      var convertDataToJson = jsonDecode(response.body);
      data = convertDataToJson['hits'];
    });
    return 'Success';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Card(
                      child: Container(
                        child: Text('hhg'),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
