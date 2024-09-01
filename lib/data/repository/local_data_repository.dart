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
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png',
      'alt': 'Flutter',
    },
    {
      'name': 'React js',
      'img':
          'https://cdn.icon-icons.com/icons2/2699/PNG/512/reactjs_logo_icon_170805.png',
      'alt': 'React js',
    },
    {
      'name': 'Next js',
      'img':
          'https://cdn.freelogovectors.net/wp-content/uploads/2023/09/next-js-logo-freelogovectors.net_.png',
      'alt': 'Next js',
    },
    {
      'name': 'MERN',
      'img':
          'https://upload.wikimedia.org/wikipedia/commons/9/94/MERN-logo.png',
      'alt': 'MERN',
    },
    {
      'name': 'MongoDB',
      'img':
          'https://seeklogo.com/images/M/mongodb-logo-3659963037-seeklogo.com.png',
      'alt': 'MongoDB',
    },
    {
      'name': 'Node js',
      'img': 'https://img.icons8.com/?size=512&id=54087&format=png',
      'alt': 'Node js',
    },
    {
      'name': 'Firebase',
      'img':
          'https://1000logos.net/wp-content/uploads/2024/05/Firebase-Logo.png',
      'alt': 'Firebase',
    },
    {
      'name': 'Supabase',
      'img': 'https://lsvp.com/wp-content/uploads/2023/03/Supabase.png',
      'alt': 'Supabase',
    },
  ];
}
