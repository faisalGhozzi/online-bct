import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:online_bct/view/custom_widgets/gmaps_info_window.dart';

class Succursales extends StatefulWidget {
  const Succursales({Key? key}) : super(key: key);

  @override
  State<Succursales> createState() => _SuccursalesState();
}

class _SuccursalesState extends State<Succursales> {
  final Completer<GoogleMapController> _controller = Completer();
  CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(33.4835929, 9.9942638),
    zoom: 6.5,
  );

  @override
  void dispose() {
    _customInfoWindowController.dispose();
    super.dispose();
  }

  final Set<Marker> bct_markers = {};

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        GoogleMap(
          mapType: MapType.normal,
          markers: getmarkers(),
          // zoomControlsEnabled: false,
          // zoomGesturesEnabled: false,
          // scrollGesturesEnabled: false,
          // rotateGesturesEnabled: false,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _customInfoWindowController.googleMapController = controller;
            // _controller.complete(controller);
          },
          onTap: (position) {
            _customInfoWindowController.hideInfoWindow!();
          },
          onCameraMove: (position) {
            _customInfoWindowController.onCameraMove!();
          },
        ),
        CustomInfoWindow(
          controller: _customInfoWindowController,
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.9,
          offset: 50,
        ),
      ]
    );
  }

  Set<Marker> getmarkers(){
    LatLng tunis = LatLng(36.803720, 10.184883);
    LatLng bizerte = LatLng(37.269452, 9.873798);
    LatLng sousse = LatLng(35.827344, 10.641360);
    LatLng sfax = LatLng(34.739216, 10.754797);
    LatLng nabeul = LatLng(36.449926, 10.738150);
    LatLng gabes = LatLng(33.887109, 10.109214);
    LatLng gafsa = LatLng(34.419464, 8.783474);
    LatLng kasserine = new LatLng(35.172105, 8.841186);
    LatLng kairouan = new LatLng(35.670423, 10.100448);
    LatLng medenine = new LatLng(33.343735, 10.491291);
    LatLng jendouba = new LatLng(36.500761, 8.782627);
    LatLng monastir = new LatLng(35.770708, 10.827659);




    setState(() {
      bct_markers.add(
        Marker(
          markerId: MarkerId(tunis.toString()),
          position: tunis,
          draggable: false,
          onTap: () {
            _customInfoWindowController.hideInfoWindow!();
            _customInfoWindowController.addInfoWindow!(
            GmapsInfoWindow(adresse: "25,rue Hédi Nouira 1080 Tunis BP : 777", phone: "+216 71 122 000"),
            tunis,
            );
          },
          icon: BitmapDescriptor.defaultMarker,
      ));

      bct_markers.add(
        Marker(
          markerId: MarkerId(bizerte.toString()),
          position: bizerte,
          draggable: false,
          onTap: () {
            _customInfoWindowController.hideInfoWindow!();
            _customInfoWindowController.addInfoWindow!(
            GmapsInfoWindow(adresse: "Rue Mongi Slim 7000 Bizerte", phone: "+216 72 431 056"),
            bizerte,
            );
          },
          icon: BitmapDescriptor.defaultMarker,
      ));

      bct_markers.add(
        Marker(
          markerId: MarkerId(sousse.toString()),
          position: sousse,
          draggable: false,
          onTap: () {
            _customInfoWindowController.hideInfoWindow!();
            _customInfoWindowController.addInfoWindow!(
            GmapsInfoWindow(adresse: "Place Farhat Hached 4000 Sousse", phone: "+216 73 225 144"),
            sousse,
            );
          },
          icon: BitmapDescriptor.defaultMarker,
      ));
    
      bct_markers.add(
        Marker(
          markerId: MarkerId(sfax.toString()),
          position: sfax,
          draggable: false,
          onTap: () {
            _customInfoWindowController.hideInfoWindow!();
            _customInfoWindowController.addInfoWindow!(
            GmapsInfoWindow(adresse: "Avenue de la liberté 14 Janvier 2011 3029 Sfax", phone: "+216 74 400 500"),
            sfax,
            );
          },
          icon: BitmapDescriptor.defaultMarker,
      ));

      bct_markers.add(
        Marker(
          markerId: MarkerId(nabeul.toString()),
          position: nabeul,
          draggable: false,
          onTap: () {
            _customInfoWindowController.hideInfoWindow!();
            _customInfoWindowController.addInfoWindow!(
            GmapsInfoWindow(adresse: "Rue Taïeb M'Hiri 8000 Nabeul", phone: "+216 72 286 823"),
            nabeul,
            );
          },
          icon: BitmapDescriptor.defaultMarker,
      ));

      bct_markers.add(
        Marker(
          markerId: MarkerId(gabes.toString()),
          position: gabes,
          draggable: false,
          onTap: () {
            _customInfoWindowController.hideInfoWindow!();
            _customInfoWindowController.addInfoWindow!(
            GmapsInfoWindow(adresse: "1, Avenue Mohamed Ali 6000 Gabès", phone: "+216 75 271 477"),
            gabes,
            );
          },
          icon: BitmapDescriptor.defaultMarker,
      ));
    
      bct_markers.add(
        Marker(
          markerId: MarkerId(gafsa.toString()),
          position: gafsa,
          draggable: false,
          onTap: () {
            _customInfoWindowController.hideInfoWindow!();
            _customInfoWindowController.addInfoWindow!(
            GmapsInfoWindow(adresse: "4, Avenue de l'environnement 2100 Gafsa", phone: "+216 76 224 500"),
            gafsa,
            );
          },
          icon: BitmapDescriptor.defaultMarker,
      ));

      bct_markers.add(
        Marker(
          markerId: MarkerId(kasserine.toString()),
          position: kasserine,
          draggable: false,
          onTap: () {
            _customInfoWindowController.hideInfoWindow!();
            _customInfoWindowController.addInfoWindow!(
            GmapsInfoWindow(adresse: "1, Avenue de la révolution 14 Janvier 2011 1200 Kasserine", phone: "+216 77 474 353"),
            kasserine,
            );
          },
          icon: BitmapDescriptor.defaultMarker,
      ));
    
      bct_markers.add(
        Marker(
          markerId: MarkerId(kairouan.toString()),
          position: kairouan,
          draggable: false,
          onTap: () {
            _customInfoWindowController.hideInfoWindow!();
            _customInfoWindowController.addInfoWindow!(
            GmapsInfoWindow(adresse: "1, rue Beit El Hikma 3100 Kairouan", phone: "+216 77 233 777"),
            kairouan,
            );
          },
          icon: BitmapDescriptor.defaultMarker,
      ));

      bct_markers.add(
        Marker(
          markerId: MarkerId(medenine.toString()),
          position: medenine,
          draggable: false,
          onTap: () {
            _customInfoWindowController.hideInfoWindow!();
            _customInfoWindowController.addInfoWindow!(
            GmapsInfoWindow(adresse: "8, Avenue Habib Bourguiba 4100 Médnine", phone: "+216 75 642 244"),
            medenine,
            );
          },
          icon: BitmapDescriptor.defaultMarker,
      ));

      bct_markers.add(
        Marker(
          markerId: MarkerId(jendouba.toString()),
          position: jendouba,
          draggable: false,
          onTap: () {
            _customInfoWindowController.hideInfoWindow!();
            _customInfoWindowController.addInfoWindow!(
            GmapsInfoWindow(adresse: "Rue Aboulkacem Chebbi 8100 Jendouba", phone: "+216 78 603 058"),
            jendouba,
            );
          },
          icon: BitmapDescriptor.defaultMarker,
      ));
    
      bct_markers.add(
        Marker(
          markerId: MarkerId(monastir.toString()),
          position: monastir,
          draggable: false,
          onTap: () {
            _customInfoWindowController.hideInfoWindow!();
            _customInfoWindowController.addInfoWindow!(
            GmapsInfoWindow(adresse: "Rue des Martyrs 5000 Monastir", phone: "+216 73 464 200"),
            monastir,
            );
          },
          icon: BitmapDescriptor.defaultMarker,
      ));

      
    });
    return bct_markers;
  }

}