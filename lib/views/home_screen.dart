import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ravi_cs/models/products_model.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductModel _products;
  @override
  void initState() {
    loadProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _products == null
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Home page",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: _products.products.length,
                        itemBuilder: (BuildContext context, int i) {
                          var pd = _products.products[i];
                          return Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Image.network(
                                    pd.mainPair.detailed.imagePath),
                              ),
                              title: Text(
                                pd.product,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              trailing: Text(
                                "\$${pd.price}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
      ),
    );
  }

  Future loadProduct() async {
    ProductModel productModel;
    //https://shopperrs.com@gmail.com:379D8ay4284P3Slwg50t0V03oCkp66p3@generalbazar.cf/api/products
    String username = "shopperrs.com@gmail.com";
    String password = "379D8ay4284P3Slwg50t0V03oCkp66p3";
    String url = "https://generalbazar.cf/api/products";
    String auth = 'Basic ' + base64Encode(utf8.encode("$username:$password"));
    var response =
        await http.get(Uri.parse(url), headers: {'authorization': auth});

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      productModel = productModelFromJson(response.body);
      setState(() {
        _products = productModel;
      });
    }

    //return productModel;
  }
}
