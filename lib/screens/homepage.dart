import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../models/booker.dart';
import '../models/bookshelf.dart';
import '../widgets/zoom_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(                                                           //appbar ile zoommenu olusturuldu
        leading: ZoomMenu(),
        backgroundColor: Colors.brown.shade300,                                 //appbarın renk ayarı yapıldı
        title: Text("Kitaplarım"),                                              //appbar açıklaması
        elevation: 0,
      ),
      backgroundColor: Colors.brown.shade100,                                   //arkaplan renk ayarı yapıldı
      body: Column(
        children: [
          Expanded(
            child: MasonryGridView.count(
              itemCount: bookshelf.length,
              itemBuilder: (context, index) {
                return Booker(books: bookshelf[index]);                         //book classı çekildi
              },
              crossAxisCount: 2,                                                //kutular için ;
              mainAxisSpacing: 8,                                               // dikey aralık
              crossAxisSpacing: 8,                                              // yatay aralık
            ),
          ),
        ],
      ),
    );
  }
}
