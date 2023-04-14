import 'package:flutter/material.dart';
import 'package:vizeodevi/main.dart';

class MenuItems {
  static const books = ItemForMenu("Kitaplarım", Icons.book);
  static const liked = ItemForMenu("Beğenilenler", Icons.favorite);
  static const help = ItemForMenu("Yardım", Icons.help);

  static const all = <ItemForMenu>[books, liked, help];
}

class ItemForMenu {
  final String title;
  final IconData icon;

  const ItemForMenu(this.title, this.icon);
}

class MenuPage extends StatelessWidget {
  final ItemForMenu currentItem;
  final ValueChanged<ItemForMenu> onSelectedItem;
  const MenuPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(                               //widget geçisi
        backgroundColor: Colors.brown.shade400,                                 //arkaplan rengi
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(
              flex: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(                                                    //kitapbul simgem
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/kitapbullogo.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.height * 0.15,
                    child: Center(
                      child: Text(
                        'KitapBul',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.brown.shade100,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            ...MenuItems.all.map(buildMenuItem).toList(),
            Spacer(
              flex: 9,
            ),
          ],
        )),
      );

  Widget buildMenuItem(ItemForMenu item) => ListTile(                           //bu fonksiyonun bir sınıf içinde tanımlandığı bir widget ayarlandı
        selected: currentItem == item,
        selectedTileColor: Colors.black12,
        minLeadingWidth: 20,
        leading: Icon(
          item.icon,
          color: Colors.brown.shade100,
        ),
        title: Text(
          item.title,
          style: TextStyle(color: Colors.brown.shade100),
        ),
        onTap: () => onSelectedItem(item),
      );
}
