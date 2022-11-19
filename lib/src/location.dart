// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

class Location {
  const Location._(
    this.surah,
    this.ayah,
    this.kalimah,
    this.lafaz,
  ) : assert(1 <= surah && surah <= 114);

  factory Location.parse(String source) {
    final int start = source.indexOf('(');
    final int end = source.indexOf(')', start);

    assert(start >= 0 && end > start);

    final String location = source.substring(start + 1, end);
    final List<int> parts = location.split(':').map((e) => int.parse(e)).toList();
    return Location._(parts[0], parts[1], parts[2], parts[3]);
  }

  final int surah;
  final int ayah;
  final int kalimah;
  final int lafaz;

  @override
  String toString() {
    return '$surah:$ayah:$kalimah:$lafaz';
  }
}
