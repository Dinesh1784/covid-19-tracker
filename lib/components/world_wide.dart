import 'package:flutter/material.dart';
import './status_pannel.dart';

class WorldWideData extends StatelessWidget {
  final Map worldData;

  const WorldWideData({Key key, this.worldData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
        ),
        children: [
          StatusPannel(
            title: "CONFIRMED",
            panelColor: Colors.red[100],
            textColor: Colors.red,
            count: worldData['cases'].toString(),
          ),
          StatusPannel(
            title: "ACTIVE",
            panelColor: Colors.blue[100],
            textColor: Colors.blue[900],
            count: worldData['active'].toString(),
          ),
          StatusPannel(
            title: "RECOVERED",
            panelColor: Colors.green[100],
            textColor: Colors.green,
            count: worldData['recovered'].toString(),
          ),
          StatusPannel(
            title: "DEATHS",
            panelColor: Colors.grey[400],
            textColor: Colors.grey[900],
            count: worldData['deaths'].toString(),
          ),
        ],
      ),
    );
  }
}
