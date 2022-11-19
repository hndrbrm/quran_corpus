// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'feature.dart';
import 'location.dart';

class Corpus {
  const Corpus._(
    this.location,
    this.form,
    this.tag,
    this.features,
  );

  factory Corpus.parse(String source) {
    assert(source.isNotEmpty);
    assert(source[0] != '#');

    final List<String> parts = source.split('\t').map((e) => e.trim()).toList();
    assert(parts.length == 4);

    return Corpus._(
      Location.parse(parts[0]),
      parts[1],
      parts[2],
      parts[3].split('|').map((e) => Feature.parse(e)).toList(),
    );
  }

  final Location location;
  final String form;
  final String tag;
  final List<Feature> features;

  @override
  String toString() => '$location\t$form\t$tag\t$features';
}
