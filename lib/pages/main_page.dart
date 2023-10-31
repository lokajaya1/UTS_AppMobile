import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category_page.dart';
import 'package:flutter_application_1/pages/transaction_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';
import 'package:flutter_application_1/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _children = [HomePage(), CategoryPage()];
  int currentIndex = 0;

  void onTapTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
          .push(MaterialPageRoute(
            builder: (context) => TransactionPage(),
            ))
          .then((value) {
            setState(() {
              
            });
          }
          );
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                onTapTapped(0);
              },
              icon: Icon(
                Icons.home,
                color: currentIndex == 0 ? Colors.blue : Colors.grey,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {
                onTapTapped(1);
              },
              icon: Icon(
                Icons.list,
                color: currentIndex == 1 ? Colors.blue : Colors.grey,
              ),
            ),
          ],
        ),
      ),
      appBar: (currentIndex == 1)
          ? PreferredSize(
              preferredSize: const Size.fromHeight(100),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 36, horizontal: 16),
                  child: Text(
                    "Categories",
                    style: GoogleFonts.montserrat(fontSize: 20),
                  ),
                ),
              ),
            )
          : null,
      body: Column(
        children: <Widget>[
              if (currentIndex == 0)
      Container(
        margin: EdgeInsets.only(bottom: 60.0), // Menambahkan margin pada bagian bawah kalender
        child: HorizontalCalendar(
          date: DateTime.now(),
          textColor: Colors.black45,
          backgroundColor: Colors.white,
          selectedColor: Colors.blue,
          showMonth: true,
          locale: Localizations.localeOf(context),
          onDateSelected: (date) {
            print(date.toString());
          },
        ),
      ),
    _children[currentIndex], // Tampilan "Catat Pengeluaran" atau halaman yang sesuai
        ],
      ),
    );
  }
}
