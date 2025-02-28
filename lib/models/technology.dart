import 'package:my_portfolio/core/utils/constants.dart';

class TechnologyModel {
  final String name;
  final String logo;

  TechnologyModel(this.name, this.logo);
}

class TechnologyConstants {
  static TechnologyModel python =
      TechnologyModel("Python", AppConstants.pythonImage);
  static TechnologyModel php = TechnologyModel("Python", AppConstants.phpImage);
  static TechnologyModel flutter =
      TechnologyModel("Flutter", AppConstants.flutterImage);
  static TechnologyModel flask =
      TechnologyModel("Flask", AppConstants.flaskImage);
  static TechnologyModel firebase =
      TechnologyModel("Firebase", AppConstants.firebaseImage);
  static TechnologyModel razorPay =
      TechnologyModel("Razor Pay", AppConstants.razorPayImage);
  static TechnologyModel cPlus =
      TechnologyModel("C++", AppConstants.cPlusImage);
  static TechnologyModel javascript =
      TechnologyModel("Javascript", AppConstants.javascriptImage);
  static TechnologyModel swift =
      TechnologyModel("Swift", AppConstants.swiftImage);
  static TechnologyModel sceneKit =
      TechnologyModel("SceneKit", AppConstants.sceneKitImage);

  static TechnologyModel java =
      TechnologyModel("Java", AppConstants.javaImage);
  static TechnologyModel nodejs =
      TechnologyModel("Node.js", AppConstants.nodejsImage);

  static TechnologyModel databaseImage =
      TechnologyModel("Mongo/MySQL", AppConstants.databaseImage);

  static List<TechnologyModel> technologyLearned = [
    flutter,
    java,
    javascript,
    nodejs,
    databaseImage,
    firebase,
    cPlus,
    python,
    flask
  ];
}
