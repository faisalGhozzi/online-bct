import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Professionnel extends StatefulWidget {
  const Professionnel({Key? key}) : super(key: key);

  @override
  State<Professionnel> createState() => _ProfessionnelState();
}

class _ProfessionnelState extends State<Professionnel> {
  TextEditingController _cinController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        TextField(
          controller: _cinController,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade100,
            filled: true,
            hintText: 'N° CIN',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
        const SizedBox(height: 20,),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: ElevatedButton.icon(
            onPressed: () {}, 
            icon: const Icon(Icons.check), 
            label: const Text("Créer compte")
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}