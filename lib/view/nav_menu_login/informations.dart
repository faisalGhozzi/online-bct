import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Informations extends StatelessWidget {
  const Informations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(
          left: 35,
          right: 35
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const Text(
                    "Online BCT",
                    style: TextStyle(fontFamily: 'JosefinSlab', fontSize: 55, fontWeight: FontWeight.w700, color: Color(0xff1a4e70))
                  ),
            const SizedBox(
              height: 40,
            ),
            const Text("Bienvenue à l'application mobile des services de consultation à distance de la Centrale d'informations de la Banque Centrale de Tunisie.\n\n" +
                "Les services de consultation de la Centrale d'Informations permettent aux bénéficiaires des crédits professionnels et non professionnels  de consulter les données qui les concernent :\n\n" +
                "\t • L'encours des crédits professionnels (Centrale des Risques).\n" +
                "\t • L'encours des crédits non professionnels (Centrale des Crédits aux Particuliers).\n" +
                "\t • L’encours des crédits octroyés par les institutions de micro-finance (Centrale des Risques de la Micro-finance).\n" +
                "\t • La classe de risque selon la règlementation bancaire (Centrale des Créances Classées).\n" +
                "\t • L'encours des créances cédées aux sociétés de recouvrement pour les personnes physiques (Centrale des Crédits aux Particuliers), les professionnels et les entreprises (Centrale des Risques).\n" +
                "\t • Les incidents de paiements en matière de chèque (Centrale des Chèques Impayés). \n" +
                "\t • Les états financiers, les ratios et le positionnement sectoriel à travers les déciles (Centrale des Bilans).\n\n" +
                " L'accès aux services de consultation  nécessite une inscription préalable et sa validation par la BCT (siège ou succursales) ou auprès des agences bancaires en présence de l'intéressé ou de son représentant légal."
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05)
          ],
        ),
      ),
    ));
  }
}