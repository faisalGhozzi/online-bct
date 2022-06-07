import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class PersonnePhysique extends StatefulWidget {
  const PersonnePhysique({Key? key}) : super(key: key);

  @override
  State<PersonnePhysique> createState() => _PersonnePhysiqueState();
}

class _PersonnePhysiqueState extends State<PersonnePhysique> {
  TextEditingController _controller = new TextEditingController();
  TextEditingController _cinController = new TextEditingController();
  TextEditingController _passeportController = new TextEditingController();
  String carteSejours = "";
  int length = 15;
  int val = 1;
  DateTime selectedDate = DateTime.now().subtract(const Duration(days: 18*365));
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("CIN"),
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
          title: const Text("Passeport"),
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
          title: const Text("Carte de séjour"),
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
        val == 1 ? 
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
          ) : 
        val == 2 ?
          TextFormField(
            validator: (value) {
              RegExp regExp = RegExp(r'[A-Z]{1}[0-9]{6}$');
              if (value!.isEmpty) {
                return "check";
              }else if(regExp.hasMatch(value)){
                return null;
              }
            },
            controller: _passeportController,
            decoration: InputDecoration(
              fillColor: Colors.grey.shade100,
              filled: true,
              hintText: 'N° Passeport',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            keyboardType: TextInputType.text,
            // inputFormatters: [
            //   FilteringTextInputFormatter.allow(RegExp(r'[A-Z]([0-9]{6})$'))
            // ],
          ) :
        val == 3 ?
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              fillColor: Colors.grey.shade100,
              filled: true,
              hintText: 'N° Carte Séjours',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            keyboardType: TextInputType.text,
            onChanged: (String newVal) {
              if(newVal.length <= length){
                carteSejours = newVal;
              }else{
                _controller.text = carteSejours;
              }
            },
          ) : 
        const Spacer(),
        const SizedBox(height: 30,),
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton.icon(
            onPressed: (() {
            _selectDate(context);
          }), 
          label: const Text("Date de naissance"),
          icon: const Icon(Icons.calendar_month_outlined),),
        ),
        const SizedBox(
          height: 30,
        ),
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

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now().subtract(const Duration(days: 18*365)), 
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
  }
}
