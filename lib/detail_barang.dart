import 'package:flutter/material.dart';
import 'package:kuis_prakmobile/groceries.dart';

class GroceriesDetail extends StatelessWidget {
  final Groceries groceries;

  GroceriesDetail({required this.groceries});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: [
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ))),
                        //FavoriteButton()
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                groceries.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.attach_money_sharp),
                      SizedBox(height: 8.0),
                      Text(
                        groceries.discount,
                       // style: informationTextStyle,
                      ),
                    ],
                  ),
                  //tambahan ikon
                  Column(
                    children: <Widget>[
                      Icon(Icons.price_change_rounded),
                      SizedBox(height: 8.0),
                      Text(
                        groceries.price,
                       // style: informationTextStyle,
                      )
                    ],
                  ),
                  //tambahan ikon
                  Column(
                    children: <Widget>[
                      Icon(Icons.sticky_note_2),
                      SizedBox(height: 8.0),
                      Text(
                        groceries.stock,
                        //style: informationTextStyle,
                      ),
                    ],
                  ),
                  //tambahan ikon
                  Column(
                    children: <Widget>[
                      Icon(Icons.reviews_rounded),
                      SizedBox(height: 8.0),
                      Text(
                        groceries.reviewAverage,
                        //style: informationTextStyle,
                      ),
                    ],
                  ),
                  //tambahan ikon
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                groceries.description,
                textAlign: TextAlign.justify,
                //edit posisi teks
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                groceries.storeName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              height: 200, width: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: groceries.productImageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class GroceriesDetail extends StatelessWidget {
//   final Groceries groceries;
//
//   GroceriesDetail(this.groceries);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(groceries.name),
//
//       ),
//       body: Padding (padding: const EdgeInsets.all(9.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Padding(
//             //   padding:const EdgeInsets.all(9.0),
//             //   child:
//             //   Image.network(groceries.productImageUrls.),
//             ),
//             Padding(
//               padding:const EdgeInsets.all(9.0),
//               child: Image.network(groceries.productImageUrls.toString()),
//             ),
//             Padding(
//               padding:const EdgeInsets.all(9.0),
//               child: Text(
//                 groceries.description,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.normal, fontFamily: 'Staatliches'),
//               ),
//             ),
//             Padding(
//               padding:const EdgeInsets.all(9.0),
//               child: Text(
//                 groceries.price,
//                 textAlign: TextAlign.justify,
//                 style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.normal),
//               ),
//             ),
//             Padding(
//               padding:const EdgeInsets.all(9.0),
//               child: Text(
//                 groceries.stock,
//                 textAlign: TextAlign.justify,
//                 style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
//               ),
//             ),
//             Padding(
//               padding:const EdgeInsets.all(9.0),
//               child: Text(
//                 groceries.discount,
//                 textAlign: TextAlign.justify,
//                 style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
//               ),
//             ),
//             Padding(
//               padding:const EdgeInsets.all(9.0),
//               child: Text(
//                 groceries.storeName,
//                 textAlign: TextAlign.justify,
//                 style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.normal),
//               ),
//             ),
//             Padding(
//               padding:const EdgeInsets.all(9.0),
//               child: Text(
//                 groceries.reviewAverage,
//                 textAlign: TextAlign.justify,
//                 style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.normal),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }