import 'package:vizeodevi/screens/info.dart';
import 'package:flutter/material.dart';
import 'book.dart';

class Booker extends StatefulWidget {
  final Book books;

  const Booker({required this.books, Key? key}) : super(key: key);

  @override
  State<Booker> createState() => _BookerState();
}

class _BookerState extends State<Booker> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Info(
                    books: widget.books,
                  )),
        );
      }),
      child: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                        child: Image(
                      image: AssetImage(
                        widget.books.kfoto,
                      ),
                      fit: BoxFit.cover,
                    )),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.books.kbegen = !widget.books.kbegen;
                      });
                    },
                    icon: Icon(
                        widget.books.kbegen ? Icons.favorite : Icons.favorite),
                    iconSize: 26,
                    color: widget.books.kbegen ? Colors.pink : Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.books.kadi,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.books.kyazar,
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ),
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
