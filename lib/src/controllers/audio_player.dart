import 'package:audioplayer/audioplayer.dart';

class AudioPlayerController {
  AudioPlayer audioPlugin = AudioPlayer();

  void pauseMusic() {
    audioPlugin.pause();
    
  }

}