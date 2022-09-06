import 'dart:convert';

import 'package:flutter_template/constants/app_constant.dart';
import 'package:flutter_template/models/model.dart';
import 'package:http/http.dart' as http;

apiHeader() {
  return {'Content-Type': 'application/json'};
}

getData() async {
  var url = Uri.parse(END_POINT);
  var response = await http.get(url);
  var responseData = jsonDecode(response.body);
  return UserModel.fromJson(responseData);
}

postData(Data model) async {
  var uri = Uri.parse(END_POINT);

  await http.post(uri, headers: apiHeader(), body: jsonEncode(model.toJson()));
}

updateData({required Data model, required id}) async {
  var uri = Uri.parse(END_POINT + '/${id}');

  await http.put(uri, headers: apiHeader(), body: jsonEncode(model.toJson()));
}

deleteData({required id}) async {
  var uri = Uri.parse(END_POINT + '/${id}');
  await http.delete(
    uri,
    headers: apiHeader(),
  );
}
