import 'package:flutter/material.dart';

dawaDialog(BuildContext context, String imageUrl, void func, int index) => showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                content: Image(
                                    image: AssetImage("img/nepali/${index + 1}.jpg")),
                                actions: [
                                  Center(
                                    child: CircleAvatar(
                                        backgroundColor: Colors.orangeAccent,
                                        radius: 35,
                                        child: IconButton(
                                            onPressed: () {
                                              func;
                                            },
                                            icon: Icon(
                                              Icons.play_arrow,
                                              color: Colors.white,
                                              size: 30,
                                            ))),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 139, 131)),
                                      ))
                                ],
                              ));