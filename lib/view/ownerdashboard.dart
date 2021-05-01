import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebaseproject/constants/colors.dart';
import 'package:firebaseproject/view/addproduct.dart';
import 'package:firebaseproject/view/updateproduct.dart';
import 'package:firebaseproject/view/userdashboard.dart';
import 'package:firebaseproject/view/userprofile.dart';
import 'package:flutter/material.dart';

import 'helper.dart';

class OwnerDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyAppColors.appColor,
        title: Text(
          "DashBoard",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.blur_on,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => UserProfile()));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.baby_changing_station_sharp,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => UserDashboard()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.add,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => AddProduct()));
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: IconButton(
              icon: Icon(
                Icons.exit_to_app_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => OwnerDashboard()));
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "My Products",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('productData')
                  .where('uid', isEqualTo: getUserID())
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data.docs.length,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Card(
                            elevation: 4,
                            child: ListTile(
                              isThreeLine: true,
                              title: Text(
                                  snapshot.data.docs[i].data()['productName']),
                              subtitle: Text(
                                  "Price: \$${snapshot.data.docs[i].data()['productPrice']}"),
                              leading: CircleAvatar(
                                child: Image.asset("assets/images/logo8.jpg"),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.edit,
                                      color: Colors.blue,
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  UpdateProduct(
                                                    productID: snapshot
                                                        .data.docs[i].id,
                                                    productName: snapshot
                                                        .data.docs[i]
                                                        .data()['productName'],
                                                    productDescription: snapshot
                                                            .data.docs[i]
                                                            .data()[
                                                        'productDescription'],
                                                    productPrice: snapshot
                                                        .data.docs[i]
                                                        .data()['productPrice'],
                                                  )));
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {
                                      deleteProduct(snapshot.data.docs[i].id);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  //delete product
  deleteProduct(String productID) {
    FirebaseFirestore.instance
        .collection('productData')
        .doc(productID)
        .delete()
        .whenComplete(() {});
  }
}
