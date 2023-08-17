import 'package:suvaye/model/services_model.dart';

class ServicesController {
  static final ServicesController _instance = ServicesController._internal();
  factory ServicesController() {
    return _instance;
  }
  ServicesController._internal();

  final List<ServicesModel> _servicesList = [
    ServicesModel(
        serviceTitle: "Web App Development",
        serviceDescription: "Develop beautiful fast web application"),
    ServicesModel(
        serviceTitle: "App Development",
        serviceDescription: "Develop beautiful fast mobile application"),
    ServicesModel(
        serviceTitle: "Game Development",
        serviceDescription: "Develop beautiful fast mobile and pc games")
  ];

  List<ServicesModel> get servicesList => [..._servicesList];

  //here is the place where we define methods for fetching data and what not
}
