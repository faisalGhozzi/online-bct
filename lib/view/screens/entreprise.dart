import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Entreprise extends StatefulWidget {
  const Entreprise({Key? key}) : super(key: key);

  @override
  State<Entreprise> createState() => _EntrepriseState();
}

class _EntrepriseState extends State<Entreprise> {
  TextEditingController _matfiscalController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        const Align(alignment: Alignment.centerLeft, child: Text("Veuillez introduire uniquement les 7 chiffres de la matricule fiscale:")),
        const SizedBox(height: 20,),
        TextField(
          controller: _matfiscalController,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade100,
            filled: true,
            hintText: 'Matricule Fiscale',
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
