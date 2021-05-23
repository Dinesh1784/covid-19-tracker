import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../helper/datasource.dart';

class FaqScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ExpansionTile(
            title: Text(
              DataSource.questionAnswers[index]['question'],
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  DataSource.questionAnswers[index]['answer'],
                  softWrap: true,
                ),
              ),
            ],
          );
        },
        itemCount: DataSource.questionAnswers.length,
      ),
    );
  }
}
