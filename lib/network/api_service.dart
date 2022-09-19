import 'dart:convert';
import 'dart:io';

import 'package:flutter_template/constants/app_constant.dart';
import 'package:flutter_template/models/model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

apiHeader() {
  return {'Content-Type': 'application/json'};
}

apiEnconder()
{
  return  Encoding.getByName("utf-8");
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
    // encoding: apiEnconder()
  );
}


Future<String?> getTokenSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  return prefs.getString('Token');
}

//For Multipart Request

Future<String> UploadProfilePicture(String Fullname,String Phone,String image) async {
  String? token =await getTokenSF();
  Map<String, String> body = {
    "full_name" : Fullname,
    "phone" : Phone,
    "image" : image,
  };

  //-------new
  var postUri = Uri.parse("${END_POINT}/profile/update");

  http.MultipartRequest request = new http.MultipartRequest("POST", postUri);
   print("image1 $image");
  if(!image.isEmpty) {
    http.MultipartFile multipartFile = await http.MultipartFile.fromPath(
        'profile_picture', image);

    request.files.add(multipartFile);
  }
  request.fields["full_name"] = Fullname;
  request.fields["phone"] = Phone;
  print(request);
  request.headers.addAll({'Content-Type': 'application/json',
    'Authorization': 'bearer'+token!
  });

  var res = await request.send();
  http.Response response = await http.Response.fromStream(res);

  return response.body;

}

//for Query String 

getQueryString(map)
async {
  String queryString = Uri(queryParameters: map).query;
  var res= await http.get(Uri.parse("$END_POINT?$queryString"));
}

//For VPN Bypass 

class MyHttpOverrides extends HttpOverrides{
  // @override
  // HttpClient createHttpClient(SecurityContext context){
  //   return super.createHttpClient(context)
  //     ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  // }
}

/*void main(){
  HttpOverrides.global = new MyHttpOverrides();
  runApp(new MyApp());
}*/