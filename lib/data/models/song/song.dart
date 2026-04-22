import 'package:cloud_firestore/cloud_firestore.dart';

class SongModel {
  String ? title;
  String ? artist;
  num ? duration;
  Timestamp ? releaseDate;
  String ? songId;
  String ? coverPath;
  String ? audioPath;

  SongModel({
    required this.title,
    required this.artist,
    required this.duration,
    required this.releaseDate,
    required this.songId,
    this.coverPath,
    this.audioPath
  });

  SongModel.fromJson(Map<String,dynamic> data) {
    title = data['title'];
    artist = data['artist'];
    duration = data['duration'];
    releaseDate = data['releaseDate'];
    coverPath = data['coverPath'];
    audioPath = data['audioPath'];
  }
}