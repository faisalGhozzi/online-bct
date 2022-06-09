import 'package:url_launcher/url_launcher_string.dart';


class CallNumber {
  callThisNumber(String number) async {
    String num = 'tel:$number';
    if (await canLaunchUrlString(num)){
      await launchUrlString(num);
    }else{
      throw 'Impossible d\'appeler ce numéro'; 
    }
}
}

