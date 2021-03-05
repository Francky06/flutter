

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'music.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:audioplayer2/audioplayer2.dart';
import 'package:volume/volume.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Music Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Music player'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Musique> musiqueListe = [
    new Musique('Violin Chop', 'Gramatik', 'assets/robot.jpg',
        'assets/violin.mp3'),
    new Musique(
        'Lakmé', 'Opéra de Paris', 'assets/blob.png', 'assets/Lakme.mp3'),
    new Musique('Flute enchantée', 'Edita Gruberova', 'assets/call.png',
        'assets/flute.mp3'),
  ];

  AudioPlayer audioPlayer;
  StreamSubscription positionSub;
  StreamSubscription StateSubscription;

  Musique actuelMusique;
  Duration position = new Duration(seconds: 0);
  Duration duree = new Duration(seconds: 30);
  PlayerState statut = PlayerState.STOPPED;
  bool mute = false;
  int maxVol = 0, currentVol = 0;
  int index = 0;

  @override
  void initState() {
    super.initState();
    actuelMusique = musiqueListe[index];
    configAudioPlayer();
    initPlatformState();
    updateVolume();
  }

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    int newVol = getVolumePourcent().toInt();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 20.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              width: 250.0,
              margin: EdgeInsets.only(top: 20.0),
              child: new Image.asset(actuelMusique.image),
            ),
            new Container(
              margin: EdgeInsets.only(top: 20.0),
              child: new Text(
                actuelMusique.titre,
                textScaleFactor: 2,
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 20.0),
              child: new Text(
                actuelMusique.auteur,
              ),
            ),
            new Container(
              height: largeur / 5,
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: new Row (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  new IconButton(icon: new Icon(Icons.fast_rewind), onPressed: rewind),
                  new IconButton(icon: ( statut != PlayerState.PLAYING) ? new Icon(Icons.play_arrow) : new Icon(Icons.pause),
                      onPressed: ( statut != PlayerState.PLAYING) ? play : pause,
                    iconSize: 50),
                  new IconButton(icon: new Icon(Icons.fast_forward), onPressed: forward),
                  new IconButton(icon: (mute) ? new Icon(Icons.headset_off) : new Icon(Icons.headset), onPressed: muted),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  double getVolumePourcent () {
    return (currentVol / maxVol) * 100;
  }
  Future<void> initPlatformState ()  async {
    await Volume.controlVolume(AudioManager.STREAM_MUSIC);
  }
  updateVolume () async {
    maxVol = await Volume.getMaxVol;
    currentVol = await Volume.getVol;
    setState(() {

    });
  }

  setVol(int i) async {
    await Volume.setVol(i);
  }

  Text TextWithStyle (String data, double scale) {
    return Text (data,
      textScaleFactor: scale,
      textAlign: TextAlign.center,
      style: new TextStyle(
        color: Colors.black,
        fontSize: 15.0
      )
    );
  }

  IconButton button (IconData icone, double taille, ActionMusic action) {
    return new IconButton(icon: new Icon(icone),
        iconSize: taille ,
        color: Colors.teal,
        onPressed: () {
          switch (action) {
            case ActionMusic.PLAY:play();
            break;
            case ActionMusic.PAUSE:pause();
            break;
            case ActionMusic.REWIND:rewind();
            break;
            case ActionMusic.FORWARD:forward();
            break;
            default:break;
          }
        }

    );
  }

  void configAudioPlayer() {
    audioPlayer = new AudioPlayer();
    positionSub = audioPlayer.onAudioPositionChanged.listen((pos){
      setState(() {
        position = pos;
      });
        if (position >= duree) {
          position = new Duration(seconds: 0);
        }
    });
    StateSubscription = audioPlayer.onPlayerStateChanged.listen((state) {
      if (state == AudioPlayerState.PLAYING){
        setState(() {
          duree = audioPlayer.duration;
        });
      }else if (state == AudioPlayerState.STOPPED){
        setState(() {
          statut = PlayerState.STOPPED;
        });
      }
    },onError: (message) {
      print(message);
      setState(() {
        statut = PlayerState.STOPPED;
        duree = new Duration(seconds: 0);
        position = new Duration(seconds: 0);
      });
    });
  }

Future play () async {
    await audioPlayer.play(actuelMusique.musicURL);
    setState(() {
      statut = PlayerState.PLAYING;
    });
  }

  Future pause () async {
    await audioPlayer.pause();
    setState(() {
      statut = PlayerState.PAUSED;
    });
  }
  Future muted () async {
    await audioPlayer.mute(mute);
    setState(() {
      mute = !mute;
    });
  }

  void forward (){
  if (index == musiqueListe.length -1) {
    index = 0;
    index ++;
  }
  actuelMusique = musiqueListe[index];
  audioPlayer.stop();
  configAudioPlayer();
  play();
  }

  void rewind () {
  if (position > Duration(seconds: 3)) {
    audioPlayer.seek(0.0);
  }else {
    if ( index == 0 ) {
      index = musiqueListe.length -1;
    }else {
      index --;
    }
  }

  actuelMusique = musiqueListe[index];
  audioPlayer.stop();
  configAudioPlayer();
  play();
  }

  String fromDuration (Duration duree){
    return duree.toString().split('.').first;
  }

}

enum ActionMusic {
  PLAY,
  PAUSE,
  REWIND,
  FORWARD
}
enum PlayerState{
  PLAYING,
  STOPPED,
  PAUSED
}