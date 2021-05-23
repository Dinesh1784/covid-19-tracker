import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostAffected extends StatelessWidget {
  final List countryData;

  const MostAffected({Key key, this.countryData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (ctx, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                Image.network(
                  countryData[index]['countryInfo']['flag'],
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  countryData[index]['country'],
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Deaths:' + countryData[index]['deaths'].toString(),
                  style: GoogleFonts.poppins(
                      color: Colors.red, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
