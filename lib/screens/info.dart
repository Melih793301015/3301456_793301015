import 'package:vizeodevi/models/book.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  final Book books;

  const Info({Key? key, required this.books}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();                                    //Info sayfasına geçiş
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar( leading: IconButton(
          icon:
          const Icon(Icons.arrow_back, color: Colors.black),                    //geri butonu
          onPressed: () => Navigator.of(context).pop(),
        ), elevation: 0,backgroundColor: Colors.brown.shade200,),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 500,
                        //MediaQuery.of(context).size.height * 0.55,
                        color: Colors.brown.shade300,                           //arkaplan rengi
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 75,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 300,
                                      decoration: BoxDecoration(boxShadow: [    //gölge eklendi
                                        BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.3),
                                            spreadRadius: 5,
                                            blurRadius: 5,
                                            offset: Offset(4, 4))
                                      ]),

                                      child: Image(
                                        height: Image(
                                                image:

                                                AssetImage(widget.books.kfoto)).height,      //kitap widgeti
                                        image: AssetImage(widget.books.kfoto),
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      widget.books.kadi,                        //kullanıcı adı widgeti
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),

                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      widget.books.kyazar,                      //yazar widgeti
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Kitap Hakkında",                                   //Giriş texti
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            widget.books.aciklama,                              //kitap açıklaması
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.topLeft,                         //konum
                          child: Text(
                            widget.books.kisim,                                 //kısım açıklaması
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,                                //sayfanın altına geçildi.
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 12.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(                                                //begen butonu
                        height: MediaQuery.of(context).size.height * 0.075,
                        width: MediaQuery.of(context).size.height * 0.075,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.pink.shade300,                          //buton rengi
                        ),
                        child: GestureDetector(
                          onTap: (() {
                            setState(() {
                              widget.books.kbegen = !widget.books.kbegen;
                            });
                          }),
                          child: Icon(
                            widget.books.kbegen ? Icons.favorite : Icons.favorite,
                            size: 28,
                            color:
                                widget.books.kbegen ? Colors.pink : Colors.white,
                          ),
                        ),
                      ),
                      Container(                                                //sayfaya git butonu
                        height: MediaQuery.of(context).size.height * 0.075,
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.brown.shade400,
                        ),
                        child: Center(
                          child: Text(
                            "Sayfaya Git",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.brown.shade50,
                                height: 1.5,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
