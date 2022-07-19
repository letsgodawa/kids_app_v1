

import 'package:flutter/material.dart';

nav(BuildContext context, Widget widget) =>  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => widget,),
                              );