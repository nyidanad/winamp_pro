import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:winamp_pro/data/models/song/song.dart';

class SongEntity {
  final String title;
  final String artist;
  final num duration;
  final Timestamp releaseDate;
  final String songId;
  final String coverPath;
  final String audioPath;

  SongEntity({
    required this.title,
    required this.artist,
    required this.duration,
    required this.releaseDate,
    required this.songId,
    required this.coverPath,
    required this.audioPath
  });
}

extension SongModelX on SongModel {
  SongEntity toEntity() {
    return SongEntity(
      title: title!, 
      artist: artist!, 
      duration: duration!, 
      releaseDate: releaseDate!, 
      songId: songId!,
      coverPath: coverPath ?? '',
      audioPath: audioPath ?? ''
    );
  }
}