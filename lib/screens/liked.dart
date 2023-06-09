import 'package:vizeodevi/models/booker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../models/bookshelf.dart';
import '../widgets/zoom_menu.dart';

class Liked extends StatelessWidget {
  const Liked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,                                     //renk ayarlandı
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pink,
        leading: ZoomMenu(),
        title: Text("Beğenilenler"),                                            //açıklandı
      ),
      body: Column(
        children: [
          Expanded(
            child: MasonryGridView.count(
              itemCount: bookshelf.where((Book) => Book.kbegen == true).length, //sayfa yönlendirmesi yapıldı
              itemBuilder: (context, index) {
                List likedbooks =
                    bookshelf.where((Book) => Book.kbegen == true).toList();    //sayfa yönlendi (begenildi)
                return Booker(books: likedbooks[index]);
              },
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}
