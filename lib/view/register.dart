import 'package:flutter/material.dart';
import 'package:online_bct/view/screens/entreprise.dart';
import 'package:online_bct/view/screens/personne_physique.dart';
import 'package:online_bct/view/screens/professionnel.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() =>_RegisterState();
  
}

class _RegisterState extends State<Register> {
  bool _value = false;
  int val = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.blue,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Stack(children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(
                right: 35,
                left: 35,
              ),
              child: Column(
                children: [
                Container(
                padding: const EdgeInsets.only(
                  top: 15.0),
                child: Image.asset('assets/images/logo.png')
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Qui êtes vous ?",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    )
                ),
                Column(
                  children: [
                    ListTile(
                      title: const Text("Personne Physique"),
                      leading: Radio(
                        value: 1,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        },
                        activeColor: Colors.blue,
                      ),
                    ),
                    ListTile(
                      title: const Text("Professionnel"),
                      leading: Radio(
                        value: 2,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        },
                        activeColor: Colors.blue,
                      ),
                    ),
                    ListTile(
                      title: const Text("Entreprise"),
                      leading: Radio(
                        value: 3,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        },
                        activeColor: Colors.blue,
                      ),
                    ),    
                  ],
                ),
                Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Références :",
                        style: TextStyle(fontSize: 16),),
                    ),
                    val == 1 ? 
                      PersonnePhysique() : 
                    val == 2 ? 
                      Professionnel() : 
                    val == 3 ? 
                      Entreprise() : 
                    Text("None")
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  child: const Text("Si vous avez déjà un compte, connectez-vous!"),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/nav_menu_login');
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                )
              ]),
            ),
          ),
        ])
    );
  }
}