import 'package:get/get.dart';

class LocalDataRepository extends GetxController {
  List<Map<String, dynamic>> porjectsData = [
    {
      'name': 'Medical Application',
      'img':
          'https://ewppkbcteahivyqotzoa.supabase.co/storage/v1/object/public/images/medical.jpg',
    },
    {
      'name': 'Notes Application',
      'img':
          'https://ewppkbcteahivyqotzoa.supabase.co/storage/v1/object/public/images/dark%20theme.jpg',
    },
    {
      'name': 'IoT Application',
      'img':
          'https://ewppkbcteahivyqotzoa.supabase.co/storage/v1/object/public/images/iot.jpg',
    },
    {
      'name': 'Artisan Application',
      'img':
          'https://ewppkbcteahivyqotzoa.supabase.co/storage/v1/object/public/images/artisans.jpg',
    },
  ];
}
