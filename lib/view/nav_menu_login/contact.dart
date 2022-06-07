import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

_callNumber(String number) async {
  String num = 'tel:$number';
  if (await canLaunchUrlString(num)){
    await launchUrlString(num);
  }else{
    throw 'Impossible d\'appeler ce numéro'; 
  }
}

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            left: 35,
            right: 35
          ),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const Text(
                    "Contactez-nous",
                    style: TextStyle(fontFamily: 'JosefinSlab', fontSize: 45, fontWeight: FontWeight.w700, color: Color(0xff1a4e70))
                  ),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.centerLeft, 
                child: Text(
                  "Par téléphone : ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(onPressed: () => _callNumber("71122387"), 
                label: const Align(alignment: Alignment.centerLeft, child: Text("\t\t71 122 387")), icon: const Icon(Icons.phone_outlined),)
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(onPressed: () => _callNumber("71122319"), label: const Align(alignment: Alignment.centerLeft, child: Text("\t\t71 122 319")), icon: const Icon(Icons.phone_outlined),)
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(onPressed: () => _callNumber("71122324"), label: const Align(alignment: Alignment.centerLeft, child: Text("\t\t71 122 324")), icon: const Icon(Icons.phone_outlined),)
              ),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.centerLeft, 
                child: Text(
                  "Par mail : ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(onPressed: () async {
                  final Uri params = Uri(
                    scheme: "mailto",
                    path: "online@bct.gov.tn"
                  );

                  var url = params.toString();
                  if (await canLaunchUrlString(url)){
                    await launchUrlString(url);
                  }else{
                    throw "Impossible d'envoyer un email en ce moment";
                  }
                }, label: const Align(alignment: Alignment.centerLeft, child: Text("\t\tonline@bct.gov.tn")), icon: const Icon(Icons.mail_outline,))
              ),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.centerLeft, 
                child: Text(
                  "Ou, visiter notre siège : ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(onPressed: () async {
                  var mapSchema = "geo:36.8037194,10.1826936,17z";
                  if (await canLaunchUrlString(mapSchema)) {
                    await launchUrlString(mapSchema);
                  } else {
                    throw 'Could not launch $mapSchema';
                  }
                }, label: const Text("25, Rue Hédi Nouira BP 777 - 1080 Tunis"), icon: const Icon(Icons.pin_drop_outlined))
              ),
            ]
          )
        )
      )
    );
  }
}