import 'dart:convert';
import 'dart:io';

import 'package:ezpay/model_classes/contact_list_json.dart';
import 'package:ezpay/model_classes/contacts_lsit.dart';
import 'package:ezpay/model_classes/spending_model_class.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class Json_Datafetch{



  // base functions to get the list
   Future<String> getcontact() {
    return rootBundle.loadString('assets/contact_list.json');
  }
   Future<String> getcompanies() {
     return rootBundle.loadString('assets/company_list.json');
   }
   Future<String> getspendings() {
     return rootBundle.loadString('assets/spending.json');
   }


   filecreators() async {
     var spendings = await getspendings();
     List<Spendinglistjson> spendinglist= spendinglistjsonFromJson(spendings);
     Directory directory = await getApplicationDocumentsDirectory();
     var dbPath = join(directory.path, "spending.json");
     print(dbPath);
     await File(dbPath).writeAsStringSync(spendinglistjsonToJson(spendinglist));
     print("Local spending File created");

   }


// fetch the contact list from json
 Future<List<ContactListJson>> getcontaclist() async{
   var my_data = await getcontact();
   return contactListJsonFromJson(my_data);

 }
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/spending.json');
  }
// fetch the companies list form json
   Future<List<ContactListJson>> getcompanieslist() async{
     var my_data = await getcompanies();
     return contactListJsonFromJson(my_data);

   }


  Future<List<Spendinglistjson>> getspendinglist() async{
    final file = await _localFile;
    String contents = await file.readAsString();
    return spendinglistjsonFromJson(contents);

  }

 showdata()async{
   var my_data = json.decode(await getcontact()).toString();
   print( my_data);
   print("mylist");

 }


  add_spending_data(String name,int amount,String type) async {
    final file = await _localFile;
    String date=DateTime.now().toString().substring(0,10);



    var orderLines = <Map>[]; // creates an empty List<Map>
   orderLines.add(
     {
       "name" : name,
       "date" : date,
       "amount" : amount,
       "left": 539,
       "type": type
     }
   );

    print(orderLines);
    String contents = await file.readAsString();
    List<Spendinglistjson> list = spendinglistjsonFromJson(json.encode(orderLines));
    list.addAll(spendinglistjsonFromJson(contents));
    Directory directory = await getApplicationDocumentsDirectory();
    var dbPath = join(directory.path, "spending.json");
    print(dbPath);
    await File(dbPath).writeAsStringSync(spendinglistjsonToJson(list));
   }

}