import 'package:audio_service/audio_service.dart';
import 'package:get_it/get_it.dart';
import 'package:harmonify1/audio_helper/audio_handler.dart';
import 'package:harmonify1/audio_helper/page_manager.dart';

GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
   getIt.registerSingleton<AudioHandler>( await initAudioService() );
   getIt.registerLazySingleton<PageManager>( () => PageManager() );
}