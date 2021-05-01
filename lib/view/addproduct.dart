import 'package:firebaseproject/constants/colors.dart';
import 'package:firebaseproject/view/helper.dart';
import 'package:firebaseproject/view/ownerdashboard.dart';
import 'package:firebaseproject/view/userdashboard.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddProduct extends StatefulWidget {
  final bool isUpdateMode;
  final QueryDocumentSnapshot snapshot;

  AddProduct({this.isUpdateMode, this.snapshot});

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => OwnerDashboard()));
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Add Product",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: MyAppColors.appColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('assets/images/logo8.jpg'),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 19,
                        ),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: MyAppColors.appColor,
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  controller: _nameController,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: TextFormField(
                  controller: _priceController,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      labelText: "Price",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  controller: _descriptionController,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      labelText: "Description",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      FirebaseFirestore.instance.collection('productData').add({
                        'productName': _nameController.text,
                        'productPrice': _priceController.text,
                        'productDescription': _descriptionController.text,
                        'uid': getUserID()
                      }).whenComplete(() => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OwnerDashboard())));
                    },

                    child: Container(
                      width: 335,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.pink,
                            Colors.deepOrange[200],
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(5, 5),
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Add Product',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    // style: ButtonStyle(
                    //   backgroundColor: MaterialStateProperty.all<Color>(Color(0xfff4325c)),
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
