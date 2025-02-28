import 'package:my_portfolio/core/routes/routes.dart';
import 'package:my_portfolio/core/utils/constants.dart';
import 'package:my_portfolio/models/link.dart';
import 'package:my_portfolio/models/technology.dart';

class ProjectModel {
  final String project;
  final String title;
  final String description;
  final String? appPhotos;
  final String projectLink;
  final bool internalLink;
  final List<TechnologyModel> techUsed;
  List<LinkModel>? links = [];
  final String? buttonText;

  ProjectModel({
    required this.project,
    required this.title,
    required this.description,
    this.appPhotos,
    required this.projectLink,
    this.internalLink = false,
    required this.techUsed,
    this.buttonText,
    this.links,
  });

  static List<ProjectModel> projects = [
    ProjectModel(
      project: "Flutter Package",
      title: "Onboarding Package",
      description: "A Flutter package for creating beautiful and customizable onboarding screens with ease.",
      appPhotos: AppConstants.flutterImage,
      projectLink: "https://pub.dev/packages/custom_onboard",
      techUsed: [
        TechnologyConstants.flutter,
      ],
      buttonText: "Pub Dev",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "Empleado",
      description:
      "Empleado is an employee management app that helps track attendance, manage tasks, and streamline workplace communication.",
      appPhotos: AppConstants.empleadoImage,
      projectLink: "https://play.google.com/store/apps/details?id=com.empleadoapp&hl=en",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.databaseImage,
        TechnologyConstants.firebase,
      ],
      buttonText: "Google Play Link",

    ),
    ProjectModel(
      project: "Flutter App",
      title: "Accelerate",
      description:
      "Veevo Accelerate is a business management app designed to streamline operations, track performance, and boost productivity.",
      appPhotos: AppConstants.accelerateImage,
      projectLink: "https://play.google.com/store/apps/details?id=com.veevoaccelerate&hl=en",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.databaseImage,
        TechnologyConstants.firebase,
      ],
      buttonText: "Google Play Link",
    ),
    ProjectModel(
      project: "Flutter",
      title: "Drawing Board",
      description:
      "Drawing Board is an open-source Flutter package that provides a simple and interactive canvas for drawing and sketching.",
      appPhotos: AppConstants.scribbleImage,
      projectLink: "https://github.com/ahmedkhan4u/drawing_board",
      techUsed: [
        TechnologyConstants.flutter,
      ],
      buttonText: "Github Link",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "Baby Care 360",
      description:
      "Baby Care is a helpful app designed to track your baby’s growth, health, and daily activities with ease.",
      appPhotos: AppConstants.babyCareImage,
      projectLink: "https://play.google.com/store/apps/details?id=com.haztech.baby_care",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.firebase,
      ],
      buttonText: "Google Play Link",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "Medica Reminder",
      description:
          "Medica Reminder is an easy-to-use app that helps you manage your medications and reminds you to take them on time.",
      appPhotos: AppConstants.medicaReminderImage,
      projectLink: "https://play.google.com/store/apps/details?id=com.haztech.medica_reminder.medica_reminder",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.firebase,
      ],
      buttonText: "Google Play Link",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "Json to Dart Generator",
      description: "Generate Dart class using Json Object using Flutter",
      appPhotos: AppConstants.jsonToDartImage,
      internalLink: true,
      projectLink: Routes.jsonToDart,
      techUsed: [
        TechnologyConstants.flutter,
      ],
      buttonText: "Product Link",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "Scam Spy",
      description:
          "Scam Spy is a QR code app with both generate and scan features — scan to check if a product is valid or not.",
      appPhotos: AppConstants.scamSpyImage,
      internalLink: true,
      projectLink: "https://play.google.com/store/apps/details?id=com.haztech.fraud_detection.fraud_detection",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.firebase,
      ],
      buttonText: "Google Play Link",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "CMS-RIC",
      description: "Riphah CMS is an app for Riphah International University students to manage courses, check attendance, view results, and stay updated.",
      appPhotos: AppConstants.cmsRicImage,
      projectLink: "https://play.google.com/store/apps/details?id=com.riphah.cms_ric_maxcms&hl=en",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.firebase,
        TechnologyConstants.databaseImage,
      ],
      buttonText: "Google Play Link",
    ),
  ];

  static List<ProjectModel> demos = [
    // ProjectModel(
    //   project: "Flutter App",
    //   title: "Flutter Web Portfolio",
    //   description: "",
    //   appPhotos: AppConstants.portfolioGif,
    //   projectLink: "https://github.com/AgnelSelvan/Flutter-Web-Portfolio",
    //   techUsed: [],
    //   buttonText: "Github Link",
    // ),
  ];
}
