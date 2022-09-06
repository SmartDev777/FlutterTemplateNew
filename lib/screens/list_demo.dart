import 'package:flutter/material.dart';
import 'package:flutter_template/models/model.dart';
import 'package:flutter_template/network/api_service.dart';

class ListDemo extends StatefulWidget {
  const ListDemo({Key? key}) : super(key: key);

  @override
  State<ListDemo> createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getData(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
                itemCount: snapshot.data.data.length,
                itemBuilder: ((context, index) =>
                    getListCart(snapshot.data.data[index])));
          }),
    );
  }
}

Widget getListCart(Data model) {
  return Card(
    child: ListTile(
      leading: Icon(
        Icons.email,
        color: Colors.grey,
      ),
      title: Text(
        model.email!,
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        model.name!,
        style: TextStyle(
            color: Colors.blueGrey, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      trailing: Icon(Icons.arrow_forward, color: Colors.black),
    ),
  );
}
