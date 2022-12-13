import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Navigation'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'vbshvbfkvfjvvfbvfdvbvhdsfbvhvbfvnbdfjvbdfjkvnfdjvdfkvdfnvkfdvndflkvfdnvdfkvnvkdfnvdflvldfkvdfvkdfvnfdklvfdnvkfdvndfkvdnvfklvndfvifjvbdfibnfddbklfdnnckdcndskndscndscndscdsicndcniidshvvvfbvfvbdfivbvnknfvnivnivhivhfivsfivihihvidsvisfhvivhjifjdkjfksdcndsnvufvbbvbvbvfdfjbfbjbbvjvbdjvbjkfbdkvdvnsdkndsvbfjvfjvfjvnfnvjfnvvnvjvnjvnfdjkvnfjvnsdjfndsjvnfvfjvnfjvnbfvfjkvbfjkvbjfbvjfbvjfdbvjbfjvbfbvjfdbvfdbjvfdbvfdbvfdbvjfdvbjvfbvbvjbvbfvbfdvfvvbfdvb'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  Get.back();
                },
                child: Text('Go to homepage')),
          )
        ],
      ),
    );
  }
}
