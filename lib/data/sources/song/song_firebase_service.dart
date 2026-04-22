import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:winamp_pro/data/models/song/song.dart';
import 'package:winamp_pro/domain/entities/song/song.dart';

abstract class SongFirebaseService {
  Future<Either> getNewsSongs();
  Future<Either> getPlayList();
}

final data = [
  SongModel(
    title: 'Friendships',
    artist: 'Pascal Letoublon',
    duration: 242,
    releaseDate: Timestamp.now(),
    songId: '1',
    coverPath: 'assets/covers/Friendships - Pascal Letoublon.jpg',
    audioPath: 'assets/audio/Friendships - Pascal Letoublon.mp3'
  ),
  SongModel(
    title: 'Not Letting Go',
    artist: 'Tinie Tempah ft. Jess Glynne',
    duration: 284,
    releaseDate: Timestamp.now(),
    songId: '2',
    coverPath: 'assets/covers/Tinie Tempah - Not Letting Go ft. Jess Glynne.jpg',
    audioPath: 'assets/audio/Tinie Tempah - Not Letting Go ft. Jess Glynne.mp3'
  ),
  SongModel(
    title: 'Moth To A Flame',
    artist: 'The Weeknd',
    duration: 234,
    releaseDate: Timestamp.now(),
    songId: '3',
    coverPath: 'assets/covers/The Weeknd - Moth To A Flame.jpg',
    audioPath: 'assets/audio/The Weeknd - Moth To A Flame.mp3'
  ),
  SongModel(
    title: 'Memories',
    artist: 'David Guetta feat. Kid Cudi',
    duration: 208,
    releaseDate: Timestamp.now(),
    songId: '4',
    coverPath: 'assets/covers/David Guetta feat. Kid Cudi - Memories.jpg',
    audioPath: 'assets/audio/David Guetta feat. Kid Cudi - Memories.mp3'
  ),
];

class SongFirebaseServiceImpl extends SongFirebaseService {
  @override
  Future<Either> getNewsSongs() async {
    try {
      List<SongEntity> songs = [];

      for (var songModel in data) {
        songs.add(songModel.toEntity());
      }
      
      return Right(songs);

    } catch (e) {
      return Left('An error occurred, Please try again.');
    }
  }

  @override
  Future<Either> getPlayList() async {
    try {
      List<SongEntity> songs = [];

      for (var songModel in data) {
        songs.add(songModel.toEntity());
      }
      
      return Right(songs);

    } catch (e) {
      return Left('An error occurred, Please try again.');
    }
  }

}