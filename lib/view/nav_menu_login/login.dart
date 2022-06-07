import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>{
  
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            right: 35,
            left: 35
          ),
          child: Column(children: [
            Container(
              padding: const EdgeInsets.only(
                top: 15.0
              ),
              child: Image.asset('assets/images/logo.png')
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: const Text(
                "Online BCT",
                style: TextStyle(fontFamily: 'JosefinSlab', fontSize: 55, fontWeight: FontWeight.w700, color: Color(0xff1a4e70))
              ),
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: 'Login',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              obscureText: _isObscured,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: 'Mot de passe',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: IconButton(
                  icon: Icon(_isObscured ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                  )
              ),
              
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {}, 
              child: const Text(
                'Mot de passe oublié ?',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 18,
                  color: Color(0xff3e49b2),
                ),
              )
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  )
                ),
                onPressed: () {
                
                },
                child: const Text("Connecter"), 
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Ou",
              style: TextStyle(
                color: Color(0x70000000)
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              }, 
              child: const Text(
                'Inscrivez-vous',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 18,
                  color: Color(0xff3e49b2)
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}