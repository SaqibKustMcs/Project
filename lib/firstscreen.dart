import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(icon: Icon(Icons.add_alert_outlined), onPressed: () {}),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                height: 3,
                width: 35,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Image.asset('assets/images/student.png'),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.1),
              child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, right: 15.0, top: 35.0, bottom: 3.0),
                          child: Text(
                            'Hi, Saqib',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 3.0, bottom: 3.0),
                          child: Text(
                            'Welcome Back',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 15),
                          child: Container(
                            height: 50,
                            width: 270,
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 13.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Search",
                                    disabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, right: 10),
                          child: Container(
                            height: 50,
                            width: 60,
                            child: Card(
                              elevation: 5,
                              color: Colors.indigoAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.search_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Category',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 10),
                          child: Text(
                            'See all',
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          color: Colors.indigoAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 35.0, top: 10),
                                      child: Icon(
                                        Icons.contact_phone_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, top: 10),
                                        child: Text(
                                          'Dental',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Card(
                                        color: Colors.blueAccent,
                                        child: Container(
                                          height: 15,
                                          width: 90,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              '22 doctors',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.indigoAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 35.0, top: 10),
                                      child: Icon(
                                        Icons.contact_phone_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, top: 10),
                                        child: Text(
                                          'Heart',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Card(
                                        color: Colors.blueAccent,
                                        child: Container(
                                          height: 15,
                                          width: 90,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              '18 doctors',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.indigoAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 35.0, top: 10),
                                      child: Icon(
                                        Icons.contact_phone_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0, top: 10),
                                        child: Text(
                                          'Brain',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Card(
                                        color: Colors.blueAccent,
                                        child: Container(
                                          height: 15,
                                          width: 90,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              '20 doctors',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Top Rate',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 10),
                          child: Text(
                            'See all',
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70.0)),
                        child: ListTile(
                            tileColor: Colors.white,
                            leading: Image.asset('assets/images/student.png'),
                            title: Text('Dr Fareed Mask',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text('Heart Sergon'),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.yellow,
                                  ),
                                  onPressed: () {},
                                ),
                                Text('5.3 km')
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70.0)),
                        child: ListTile(
                            tileColor: Colors.white,
                            leading: Image.asset('assets/images/student.png'),
                            title: Text('Dr Fareed Mask',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text('Heart Sergon'),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Divider(
                                  height: 10,
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.yellow,
                                  ),
                                  onPressed: () {},
                                ),
                                Text('5.3 km')
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70.0)),
                        child: ListTile(
                            tileColor: Colors.white,
                            leading: Image.asset('assets/images/student.png'),
                            title: Text('Dr Fareed Mask',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text('Heart Sergon'),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Divider(
                                  height: 10,
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.yellow,
                                  ),
                                  onPressed: () {},
                                ),
                                Text('5.3 km')
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 300,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
