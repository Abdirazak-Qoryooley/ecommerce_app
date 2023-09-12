// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'testing_provider.dart';

class itempage extends StatelessWidget {
  const itempage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(spreadRadius: 2, color: Colors.grey)
                          ]),
                      child: InkWell(
                        onTap: (() {
                          Navigator.of(context).pop();
                        }),
                        child: Icon(
                          CupertinoIcons.back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'product Details',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(spreadRadius: 2, color: Colors.grey)
                              ]),
                          child: Icon(Icons.card_travel)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Color(0xff0EDEFF1),
                    ),
                    child: Image.asset(
                      'images/airpodsmax.png',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Airpods Max",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red.shade500,
                    ),
                  )
                ],
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    '4.8',
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      '193 reviews',
                      style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Combining premium materials and advanced audio technology the sky blue apple airpods max wireless over-earheadphones are a confortable way to emmerse yourself in your favorite audio',
                  style: TextStyle(fontSize: 15, color: Colors.black45),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Consumer<testingprovider>(
                        builder: (context, testingprovider, child) {
                      return Text(
                        '\$549.9',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      );
                    }),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.all(12),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              color: Colors.lightBlue,
                              spreadRadius: 2),
                        ]),
                    child: GestureDetector(
                      onTap: (() =>
                          context.read<testingprovider>().decreament()),
                      child: Icon(
                        CupertinoIcons.minus,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                  Text(
                    ('${context.watch<testingprovider>().count}'),
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(50)),
                    child: GestureDetector(
                      onTap: () => context.read<testingprovider>().increament(),
                      child: Icon(
                        CupertinoIcons.plus,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black38,
                endIndent: 2,
                height: 5,
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.only(right: 290, top: 20),
                child: Text(
                  'promo Code',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Promo Code',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black38,
                endIndent: 2,
                height: 5,
                thickness: 1,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.card_travel,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Add item to bag',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(left: 50)),
                    VerticalDivider(
                      width: 8,
                      color: Colors.white,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        '\$549.99',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
