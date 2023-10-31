import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
          
      child: 
      Column(crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      child: Icon(Icons.upload, size: 24, color: Colors.grey),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Catat Pengeluaran",
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Rp. 3.000.000",
                            style: GoogleFonts.montserrat(color: Colors.white)),
                      ],
                    )
                  ],
                )
              ],
            ),
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(18)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            "Transaksi",
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 8,
            child: ListTile(
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: Icon(Icons.delete), onPressed: () {}),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                ],
              ),
              title: Text("Rp. 20.000"),
              subtitle: Text("Makan Siang"),
              leading: Container(
                child: Icon(Icons.upload, size: 24, color: Colors.grey),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 8,
            child: ListTile(
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: Icon(Icons.delete), onPressed: () {}),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                ],
              ),
              title: Text("Rp. 20.000"),
              subtitle: Text("Minum Kopi"),
              leading: Container(
                child: Icon(Icons.upload, size: 24, color: Colors.grey),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        )
      ]),
    ));
  }
}
