// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'corpus.dart';

class Quran {
  const Quran._();

  static Iterable<Corpus> get(
    Iterable<String> corpuses,
    int surah, [
    int? ayah,
    int? kalimah,
    int? lafaz,
  ]) sync* {
    bool header = false;

    for (final String line in corpuses) {
      String normal = line.trim();

      // Skip empty line.
      if (normal.isEmpty) {
        continue;
      }

      // Skip comments.
      if (normal[0] == '#') {
        continue;
      }

      // Skip header line.
      if (header == false) {
        header = true;
        continue;
      }

      final Corpus corpus = Corpus.parse(normal);

      if (surah == corpus.location.surah) {
        if (ayah == null) {
          yield corpus;
          continue;
        }

        if (ayah == corpus.location.ayah) {
          if (kalimah == null) {
            yield corpus;
            continue;
          }

          if (kalimah == corpus.location.kalimah) {
            if (lafaz == null) {
              yield corpus;
              continue;
            }

            if (lafaz == corpus.location.lafaz) {
              yield corpus;
              break;
            }
          }
        }
      }
    }
  }
}
