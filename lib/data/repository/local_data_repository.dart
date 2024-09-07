import 'package:get/get.dart';

class LocalDataRepository extends GetxController {
  List<Map<String, dynamic>> porjectsData = [
    {
      'name': 'Medical Application',
      'img':
          'https://ewppkbcteahivyqotzoa.supabase.co/storage/v1/object/public/images/medical.jpg',
      'des':
          "Nowadays medical fields are emerging with technology thus creating a medical app to take care of patients 24/7",
    },
    {
      'name': 'Notes Application',
      'img':
          'https://ewppkbcteahivyqotzoa.supabase.co/storage/v1/object/public/images/dark%20theme.jpg',
      'des':
          "User needs more attractive interface in every source. It creates a valuable interest in the user to make them interactive as much as possible",
    },
    {
      'name': 'IoT Application',
      'img':
          'https://ewppkbcteahivyqotzoa.supabase.co/storage/v1/object/public/images/iot.jpg',
      'des':
          "Home automation is now becoming more popular over the world. This app makes them easy to cover and control all tech in the house",
    },
    {
      'name': 'Artisan Application',
      'img':
          'https://ewppkbcteahivyqotzoa.supabase.co/storage/v1/object/public/images/artisans.jpg',
      'des':
          "the backbone of india is villages said the father of our nation hence making an app for the cuktural creators fo india to make them a source ahead of financials",
    },
    {
      'name': 'Quran Application',
      'img':
          'https://ewppkbcteahivyqotzoa.supabase.co/storage/v1/object/public/images/quran.jpg',
      'des':
          "Prayer gives the person a sense of relief and peace in life. This app UI is designed for islamic religious source that make them remember each and prayer",
    },
    {
      'name': 'Chatbot Application',
      'img':
          'https://ewppkbcteahivyqotzoa.supabase.co/storage/v1/object/public/images/chatbot.jpg',
      'des':
          "Artificial intelligence is merely used in every sector. In this era to help humans to achieve their needs and this app keep track of their daily basis",
    },
  ];

// tech stack images
  List<Map<String, String>> techData = [
    {
      'name': 'Flutter',
      'img':
          'https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png',
      'alt': 'Flutter',
    },
    {
      'name': 'React js',
      'img':
          'https://cdn4.iconfinder.com/data/icons/logos-3/600/React.js_logo-512.png',
      'alt': 'React js',
    },
    {
      'name': 'Next js',
      'img':
          'https://marcbruederlin.gallerycdn.vsassets.io/extensions/marcbruederlin/next-icons/0.1.0/1723747598319/Microsoft.VisualStudio.Services.Icons.Default',
      'alt': 'Next js',
    },
    {
      'name': 'MERN',
      'img': 'https://arkinfosoft.com/media/vxylqtub/group-1321316476.png',
      'alt': 'MERN',
    },
    {
      'name': 'MongoDB',
      'img':
          'https://seeklogo.com/images/M/mongodb-logo-D13D67C930-seeklogo.com.png',
      'alt': 'MongoDB',
    },
    {
      'name': 'Node js',
      'img':
          'https://static-00.iconduck.com/assets.00/node-js-icon-454x512-nztofx17.png',
      'alt': 'Node js',
    },
    {
      'name': 'Firebase',
      'img': 'https://brandeps.com/logo-download/F/Firebase-logo-02.png',
      'alt': 'Firebase',
    },
    {
      'name': 'Supabase',
      'img':
          'https://seeklogo.com/images/S/supabase-logo-DCC676FFE2-seeklogo.com.png',
      'alt': 'Supabase',
    },
  ];
}
