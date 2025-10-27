abstract class Routes {
  static const home = '/home';
  static const characterDetail = '/characterDetail/:id';
  static const favorites = '/favorites';

  // Helper method to generate the character detail route with ID
  static String characterDetailWithId(String id) => '/characterDetail/$id';
}
