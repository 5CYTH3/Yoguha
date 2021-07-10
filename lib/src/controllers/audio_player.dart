import 'package:audioplayer/audioplayer.dart';

class AudioPlayerController {
  AudioPlayer audioPlugin = AudioPlayer();
  // Make a constructor and pass the url in. 

  void pauseMusic() {
    audioPlugin.pause();
    
  }

  initAudio(urlString) {
    audioPlugin.play(urlString);
  }

}