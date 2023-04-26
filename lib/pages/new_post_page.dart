import 'package:flutter/material.dart';

class NewPostPage extends StatelessWidget {
  const NewPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('สร้างโพสใหม่'),
      ),
      body: Form(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                autofocus: true,
                maxLines: 3,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'กรุณากรอกข้อมูล'
                ),
              ),
            ),
            const Expanded(
              child: SizedBox() 
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.maxFinite, //กำหนดความกว้าง สุดหน้าจอ
                child: ElevatedButton(
                  onPressed: () {  
                    Navigator.pop(context);      
                  }, 
                  child: const Text('โพส'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
