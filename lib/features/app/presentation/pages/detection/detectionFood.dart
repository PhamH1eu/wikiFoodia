// ignore_for_file: file_names

import 'dart:io';
import 'package:tflite_v2/tflite_v2.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../const.dart';
import 'fastSearch.dart';

class DetectionFood extends StatefulWidget {
  const DetectionFood({Key? key}) : super(key: key);

  @override
  State<DetectionFood> createState() => _DetectionFood();
}

class _DetectionFood extends State<DetectionFood> {

  File? imageFile;
  String recognizedFood = '';


  @override
  void initState() {
    super.initState();
    loadModel();
  }
  Future<void> loadModel() async {
    await Tflite.loadModel(
      model: 'assets/tflite/model_unquant.tflite',
      labels: 'assets/tflite/labels.txt',
    );
  }
  
  void recognizeFood() async {
    if (imageFile != null) {
      var recognitions = await Tflite.runModelOnImage(
        path: imageFile!.path,
          imageMean: 0.0, // defaults to 117.0
          imageStd: 255.0, // defaults to 1.0
          numResults: 2, // defaults to 5
          threshold: 0.2
      );
      setState(() {
        recognizedFood = recognitions![0]['label'];
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find by Image'),
        backgroundColor: Color(0xfff97350),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            if(recognizedFood.isNotEmpty)
            TextButton(
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
                backgroundColor: Colors.lime.shade100,
                elevation: 5, // Đặt độ nâng của BoxShadow là 5
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FastSearch(
                      initialFoods: allFoods,
                      foodName: recognizedFood,
                    ),
                  ),
                );
              },
              child: Text(recognizedFood),
            ),
            if(recognizedFood.isEmpty)
              SizedBox(height: 30),
            SizedBox(
              height: 12,
            ),
            if(imageFile != null)
              Container(
                width: 640,
                height: 480,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xfff8f8f8),
                  image: DecorationImage(
                      image: FileImage(imageFile!),
                      fit: BoxFit.cover
                  ),
                  border: Border.all(width: 5, color: Colors.black),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              )
            else
              Container(
                width: 640,
                height: 480,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xfff8f8f8),
                  border: Border.all(width: 5, color: Colors.black12),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Text('Image should appear here', style: TextStyle(fontSize: 26),),
              ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfff97350),
                      ),
                      onPressed: ()=> getImage(source: ImageSource.camera),
                      child: const Text('Capture Image', style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // màu chữ là màu trắng
                      ) )
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfff97350),
                      ),
                      onPressed: ()=> getImage(source: ImageSource.gallery),
                      child: const Text('Select Image', style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // màu chữ là màu trắng
                      ))
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void getImage({required ImageSource source}) async {

    final file = await ImagePicker().pickImage(
        source: source,
        maxWidth: 640,
        maxHeight: 480,
        imageQuality: 70 //0 - 100
    );

    if(file?.path != null){
      setState(() {
        imageFile = File(file!.path);
      });
      recognizeFood();
    }
  }
}