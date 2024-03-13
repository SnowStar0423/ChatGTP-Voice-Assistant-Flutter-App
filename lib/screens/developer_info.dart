
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/models_provider.dart';


class DeveloperInfo extends StatefulWidget {
  static const String routeName = '/developer_info';
  const DeveloperInfo({Key? key}) : super(key: key);

  @override
  State<DeveloperInfo> createState() => _HomePageState();
}

class _HomePageState extends State<DeveloperInfo> {
  @override
  Widget build(BuildContext context) {

    final modelsProvider = Provider.of<ModelsProvider>(context);

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        alignment: Alignment.center,
        //color: const Color(0xFFCCCCFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color(0xFFCCCCFF),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(4, 4),
                          blurRadius: 15,
                          spreadRadius: 1
                      ),
                      const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4, -4),
                          blurRadius: 15,
                          spreadRadius: 1
                      ),
                    ]
                ),
                child: Image.asset('assets/images/user.jpg',width: 150,),
            ),
            const SizedBox(height: 5,),
            const Text(
              'Snow Star',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: const Color(0xFFCCCCFF),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade500,
                                offset: const Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1
                            ),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1
                            ),
                          ]
                      ),
                      child: Image.asset('assets/images/facebook.png',
                        width: 50,color: Colors.blueAccent,),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: const Color(0xFFCCCCFF),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade500,
                                offset: const Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1
                            ),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1
                            ),
                          ]
                      ),
                      child: Image.asset('assets/images/instagram.png',
                          width: 50,color: Colors.pinkAccent,),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: const Color(0xFFCCCCFF),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade500,
                                offset: const Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1
                            ),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1
                            ),
                          ]
                      ),
                      child: Image.asset('assets/images/linkedin.png',
                        width: 50,color:  Colors.blue,),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      modelsProvider.webContact("https://github.com/SnowStar0423");
                    },
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: const Color(0xFFCCCCFF),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade500,
                                offset: const Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1
                            ),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(4, 4),
                                blurRadius: 15,
                                spreadRadius: 1
                            ),
                          ]
                      ),
                      child: Image.asset('assets/images/github.png',width: 50),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
