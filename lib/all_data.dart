import 'package:ezpay/dashboard/contact_list.dart';
import 'package:ezpay/model_classes/contacts_lsit.dart';

class Mydata{

  List<contact_list> list=new List<contact_list>();
  List<company_list> complist=new List<company_list>();







  List<contact_list> getcontactlist(){
    list.add(contact_list("Nafees P", "+91 3534 3443"));
    list.add(contact_list("Usman Abbas", "+91 8349 12313"));
    list.add(contact_list("Ashir Ali", "+91 1231 12313"));
    list.add(contact_list("Saqib Ali", "+91 1231 12313"));
    list.add(contact_list("Hamza Ali", "+91 1231 12313"));
    list.add(contact_list("Muhammad Ali", "+91 1231 12313"));
    list.add(contact_list("Hamad Ali", "+91 1231 12313"));
    list.add(contact_list("Ali", "+91 1231 12313"));
    list.add(contact_list("Sabir Ali", "+91 1231 12313"));
    list.add(contact_list("Fahad Ali", "+91 1231 12313"));
    return list;
  }




  List<company_list> getcompanieslist(){
    complist.add(company_list("NXB", "NextBridge Pvt Ltd."));
    complist.add(company_list("Google", "Google INC."));
    complist.add(company_list("Dribble", "Dribble Pvt Ltd."));
    complist.add(company_list("FizPay", "FizPay Pvt Ltd."));
    complist.add(company_list("MyComp.", "Cop Pvt Ltd."));
    complist.add(company_list("Ezpay", "Ezpay Pvt Ltd."));
    complist.add(company_list("Furture Tec.", "TF Pvt Ltd."));
    complist.add(company_list("PUBG", "PUBG Pvt Ltd."));
    complist.add(company_list("ALI Sons.", "as Pvt Ltd."));
    complist.add(company_list("JS ", "Jalal Sons Pvt Ltd."));


    return complist;

  }



}