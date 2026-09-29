import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
// import 'package:path/path.dart';


void main() async {
  // Future<void> tarikdata() async {
  //   var response = await http.get(
  //     Uri.parse('https://jsonplaceholder.typicode.com/users'),
  //   );
  //   var data = jsonDecode(response.body);

  //   print('nama saya ${data[1]['name']} , username saya ${data[1]['username']} kota saya ${data[1]['address']['city']}');
  //   // print(data[1]['name']);
  //   // print(data[1]['email']);
  //   // print(data[1]['address']['city']);
  // }
  // //print nama Ervin Howell, email shanna@melissa.tv,kota wisokyburgh
  // await tarikdata();

   Future<Map<dynamic,dynamic>> tarikdata() async {
    try {
      var response = await http.get(
      Uri.parse('https://dummyjson.com/products'),
      );

      var data = jsonDecode(response.body);

      return data;
    } catch (e) {
      print(e);
      return {};
    }
    
  }
 
  var hasil = await tarikdata();

  // for, for in , for each

  // for (var i = 0; i < hasil.length; i++) {
  //   print('==============================================================');
  //   print('${hasil[i]['name']}    ${hasil[i]['username']}    ${hasil[i]['address']['city']}');
    
  // }
  
  // for (var element in hasil) {
  //   print('==============================================================');
  //   print('${element['name']}    ${element['username']}    ${element['address']['city']}');
  // }

  // hasil.forEach((element){
  //   print('==============================================================');
  //   print('${element['name']}    ${element['username']}    ${element['address']['city']}');

  // });

 
  for (var i = 0; i < hasil['products'].length; i++) {
    print('=====================================================================');
    print ('${(hasil['products'][i]['title'])}      ${hasil['products'][i]['price']}       ${hasil['products'][i]['stock']}');
  }

  

}