import 'package:flutter/material.dart';
import 'package:kuis_prakmobile/detail_barang.dart';
import 'package:kuis_prakmobile/groceries.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Groceries"),
        ),
        body: ListView.builder(
          itemCount: groceryList.length,
          itemBuilder: (context, index) {
            Groceries groceries = groceryList[index];
            return Card(
              child: ListTile(
                title: Text(groceries.name),
                subtitle: Text(groceries.storeName),
                leading: Image.network(groceries.productImageUrls[0]),
                //edit dari productUrl
                trailing: Icon(Icons.arrow_right),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return GroceriesDetail(groceries: groceries);
                    // return detail(tourismPlace);
                  }));
                },
              ),
            );
          },
        )
    );
  }
}
