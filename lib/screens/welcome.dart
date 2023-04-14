import 'package:flutter/material.dart';
import 'package:vizeodevi/main.dart';
import '../widgets/rounded-button.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/arkaplan.png"),              //arkaplan resmi
                  fit: BoxFit.cover,
                  colorFilter:
                    ColorFilter.mode(Colors.brown.shade200,BlendMode.darken)    //arkaplan rengi
                ),
              ),
            ),
            SafeArea(
                child: Scaffold(
              backgroundColor: Colors.transparent,                              //resmin onune kahverengi eklendi
              body: Center(
                child: Column(
                  children: [
                    Spacer(flex: 6),
                    Center(

                        child: Text(
                          "Kitap Bul",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 75,
                            color: Colors.brown.shade100,                       //kahve rengi seçildi
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),


                    Spacer(flex: 3),
                    RoundedButton(                                              //Ana Sayfaya geçen butonum
                      buttonName: 'Okumaya Başla',
                    ),
                    Spacer()
                  ],
                ),
              ),
            )),
          ],
        ),
      ),

    );

  }
}
