import 'package:flutter/material.dart';
import 'package:online_bct/reusable_functions/call_number.dart';

class GmapsInfoWindow extends StatefulWidget {
  final String adresse;
  final String phone;
  const GmapsInfoWindow({Key? key, required this.adresse, required this.phone}) : super(key: key);

  @override
  State<GmapsInfoWindow> createState() => _GmapsInfoWindowState();
}

class _GmapsInfoWindowState extends State<GmapsInfoWindow> {
  final CallNumber _callNumber = CallNumber();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(4),
            ),
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Text(
                              widget.adresse,
                              style: const TextStyle(color: Colors.white)
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton.icon(
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                              onPressed: () {
                                _callNumber.callThisNumber(widget.phone);
                              }, 
                              icon: const Icon(
                                Icons.phone_outlined,
                                color: Colors.blue,), 
                              label: Text(
                                widget.phone,
                                style: const TextStyle(
                                  color: Colors.blue 
                                  ),
                                )
                              )
                            ],
                          )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}