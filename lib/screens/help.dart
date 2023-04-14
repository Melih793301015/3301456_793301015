import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/zoom_menu.dart';

class Help extends StatelessWidget {
  const Help({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade100,                                    //arkaplan rengi
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KoyuYesilRenk,                                         //özel mainde olusturdugum final renklerimden
        leading: ZoomMenu(),
        title: Text(
          "Yardım",                                                             //appbar texti
        ),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),                          //tum kenarlara 16pixel bosluk eklendi
                  child: Text(
                    "Bu sayfada uygulamayı nasıl kullanacağınız konusunda bilgi vermektedir. "
                        "\n \n Öncelikle sol üstteki buton yardımı ile sayfalar arası geçiş yapabilirsiniz "
                        "\n \n Ararken kaybetmek istemediğiniz kitapları Beğenilenler adlı sekmede görebilirsiniz :) ",
                    style: TextStyle(
                      fontSize: 18,
                      color: KoyuYesilRenk,                                     //özel mainde olusturdugum final renklerimden
                      fontWeight: FontWeight.bold,                              //font kalınlıgı ayarlandı
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
