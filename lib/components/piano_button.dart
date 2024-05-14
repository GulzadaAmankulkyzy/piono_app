import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class PianoWhiteButton extends StatelessWidget {
  const PianoWhiteButton(this.nota, {Key? key}) : super(key: key);

  final String nota;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
        width: 80,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.white),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? Color.fromARGB(255, 123, 120, 120)
                    : null;
              },
            ),
          ),
          onLongPress: () async {
            await AssetsAudioPlayer.newPlayer()
                .open(Audio('assets/piano/$nota.wav'));
          },
          onPressed: () async {
            await AssetsAudioPlayer.newPlayer()
                .open(Audio('assets/piano/$nota.wav'));
          },
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                'k3 ',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
