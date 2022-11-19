// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:quran_corpus/quran_corpus.dart';

void main() {
  final File file = File('quranic-corpus-morphology-0.4.txt');
  final List<String> contents = file.readAsLinesSync();
  final Iterable<Corpus> corpuses = Quran.get(contents, 1, 1);
  for (final Corpus corpus in corpuses) {
    print(corpus);
  }
}
