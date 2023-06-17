import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class InitialFile {
  InitialFile() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // transparent status bar
      ),
    );
  }
  Future call() async {
    await EasyLocalization.ensureInitialized();

    
    // await Hive.initFlutter();
    // Hive.registerAdapter(QuranResponseAdapter());
    // Hive.registerAdapter(QuranModelAdapter());
    // Hive.registerAdapter(JuzzMAdapter());
    // Hive.registerAdapter(HezbMAdapter());
    // Hive.registerAdapter(SuraMAdapter());
    // await InjectorFile().injectorFile();
  }
}
