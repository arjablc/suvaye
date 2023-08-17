import 'package:suvaye/model/services_model.dart';

class ServicesController {
  //In production this is fetched from backend...
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
