import 'package:alhoda/src/app/components/widgets/loading.dart';
import 'package:alhoda/src/app/features/home/children/qebla/views/widgets/qiblah_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import '../widgets/qiblah_compass.dart';

class QiblaView extends StatefulWidget {
  const QiblaView({super.key});



  @override
  QiblaViewState createState() => QiblaViewState();
}

class QiblaViewState extends State<QiblaView> {
  final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<bool?>(
        future: _deviceSupport,
        builder: (_, AsyncSnapshot<bool?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting){
                return const LoadingWidget(); 
          }
            
          if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error.toString()}"),
            );
          }

          if (snapshot.data!){
              return  const QiblahCompass(); 
          }
            // Device supports the Sensor, Display Compass widget
            
          else{
            return QiblahMaps();
          }
            // Device does not support the sensor, Display Maps widget
            
        },
      ),
    );
  }
}
