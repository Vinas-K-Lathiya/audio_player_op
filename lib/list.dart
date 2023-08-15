import 'package:image_picker/image_picker.dart';

List<Map<String, dynamic>> aaaudio = [
  {
    'audio': "lib/audio/audio1.mp3",
    'image': "lib/image/1.webp",
    'title': "teri shikayat kardu",
  },
  {
    'audio': "lib/audio/audio2.mp3",
    'image': "lib/image/2.webp",
    'title': "tu mera hero",
  },
  {
    'audio': "lib/audio/audio3.mp3",
    'image': "lib/image/3.jpg",
    'title': "pata nhi",
  },
  {
    'audio': "lib/audio/audio4.mp3",
    'image': "lib/image/4.png",
    'title': "i dont know",
  },
];


class Global {
  static XFile? pic;
  static ImagePicker picker = ImagePicker();
}