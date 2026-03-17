class AppRoutes {
  static const String home = '/home';
  static const String directories = '/directories';
  static const String segments = '/segments';
  static const String profile = '/profile';

  // directories
  static const String directoriesDetails = '$directories/item/:id';
  static  String directoriesDetailsHelper (String id) =>  '$directories/item/$id';

  static const String createDirectory = '$directories/new';
}