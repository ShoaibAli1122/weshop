import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeMapsScreen extends StatefulWidget {
  @override
  _HomeMapsScreenState createState() => _HomeMapsScreenState();
}

class _HomeMapsScreenState extends State<HomeMapsScreen> {
  GoogleMapController mapController;
  Set<Marker> markers = new Set<Marker> ();
  double _zoom = 16.8;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _googlemap(context),
          _searchPlace(context),
          // _rangeRadius(context),
          // _pontoInitial(context)
        ]
      ),
    );
  }

  Widget _googlemap(BuildContext context){
    return Container(
      child: GoogleMap(
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        onMapCreated: _onMapCreated,
        onTap: (value){
          print('${value}');
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(-28.2893383, -52.4479862),
          zoom: _zoom
        ),
        markers: markers,
      )
    );
  }

  Widget _searchPlace(BuildContext context){
    return Positioned(
      top: 40,
      right: 15,
      left: 15,
      child: Container(

        child: Row(
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.circular(5)
              ),
              padding: EdgeInsets.fromLTRB(10, 6, 10, 5),
              child: Center(
                child: Icon(
                  Icons.sort, size: 27,
                  color:Theme.of(context).primaryColor,
                ),
              )
            ),
            SizedBox(width: 15,),
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.circular(5)),
                  padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo não pode estar vazio!';
                      }
                      return null;
                    },
                    // controller: cidadeSearchController,
                    onTap: () async {
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Pesquisar cidade',
                      suffixIcon: GestureDetector(
                        child: Icon(
                          Icons.search,
                          color: Colors.black45,
                        ),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(5.0, 12.0, 0.0, 9.0),
                    ),
                  ),
                )
            ),
            // SizedBox(width: 15,),
          ]
        )
      )
    );
  }

  // Metodos para utilizacao do mapa
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    _addImovelMaker();
  }

  void _addImovelMaker(){
    LatLng position = new LatLng(-28.2893383, -52.4479862);
    mapController.moveCamera(CameraUpdate.newLatLng(position),);
    final Marker marker = Marker(
      markerId: new MarkerId('home-imovel'),
      position: position,
      infoWindow: InfoWindow(
        title: 'Dados de exemplo',
        snippet: 'Endereco',
      )
    );
    setState(() {
      markers.add(marker);
    });
  }
}

