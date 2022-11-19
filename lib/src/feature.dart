// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

abstract class Feature {
  factory Feature.parse(String source) {
    final List<String> parts = source.split(':');

    if (parts.length == 1) {
      switch (source) {
        case Acc.id: return Acc();
        case Act.id: return Act();
        case AlPlus.id: return AlPlus();
        case BiPlus.id: return BiPlus();
        case F.id: return F();
        case Fd.id: return Fd();
        case Fp.id: return Fp();
        case Fs.id: return Fs();
        case Gen.id: return Gen();
        case HaPlus.id: return HaPlus();
        case Ii.id: return Ii();
        case Iii.id: return Iii();
        case Impf.id: return Impf();
        case Impv.id: return Impv();
        case Indef.id: return Indef();
        case Iv.id: return Iv();
        case Ix.id: return Ix();
        case KaPlus.id: return KaPlus();
        case M.id: return M();
        case Md.id: return Md();
        case Mp.id: return Mp();
        case Ms.id: return Ms();
        case Nom.id: return Nom();
        case OneP.id: return OneP();
        case OneS.id: return OneS();
        case P.id: return P();
        case Pass.id: return Pass();
        case Pcpl.id: return Pcpl();
        case Perf.id: return Perf();
        case PlusVoc.id: return PlusVoc();
        case Prefix.id: return Prefix();
        case SaPlus.id: return SaPlus();
        case Stem.id: return Stem();
        case Suffix.id: return Suffix();
        case TaPlus.id: return TaPlus();
        case ThreeD.id: return ThreeD();
        case ThreeFd.id: return ThreeFd();
        case ThreeFp.id: return ThreeFp();
        case ThreeFs.id: return ThreeFs();
        case ThreeMd.id: return ThreeMd();
        case ThreeMp.id: return ThreeMp();
        case ThreeMs.id: return ThreeMs();
        case TwoD.id: return TwoD();
        case TwoFd.id: return TwoFd();
        case TwoFp.id: return TwoFp();
        case TwoFs.id: return TwoFs();
        case TwoMd.id: return TwoMd();
        case TwoMp.id: return TwoMp();
        case TwoMs.id: return TwoMs();
        case V.id: return V();
        case Vi.id: return Vi();
        case Vii.id: return Vii();
        case Viii.id: return Viii();
        case Vn.id: return Vn();
        case X.id: return X();
        case Xi.id: return Xi();
        case Xii.id: return Xii();
        case YaPlus.id: return YaPlus();
      }
    }

    switch (parts[0]) {
      case A.id: return A(parts[1]);
      case Ff.id: return Ff(parts[1]);
      case L.id: return L(parts[1]);
      case Lem.id: return Lem(parts[1]);
      case Mood.id: return Mood(parts[1]);
      case PlusN.id: return PlusN(parts[1]);
      case Pos.id: return Pos(parts[1]);
      case Pron.id: return Pron(parts[1]);
      case Root.id: return Root(parts[1]);
      case Sp.id: return Sp(parts[1]);
      case W.id: return W(parts[1]);
    }

    throw(UnsupportedError(source));
  }
}

class Acc implements Feature {
  static const String id = 'ACC';

  @override
  String toString() => id;
}

class Act implements Feature {
  static const String id = 'ACT';

  @override
  String toString() => id;
}

class AlPlus implements Feature {
  static const String id = 'Al+';

  @override
  String toString() => id;
}

class BiPlus implements Feature {
  static const String id = 'bi+';

  @override
  String toString() => id;
}

class F implements Feature {
  static const String id = 'F';

  @override
  String toString() => id;
}

class Fd implements Feature {
  static const String id = 'FD';

  @override
  String toString() => id;
}

class Fp implements Feature {
  static const String id = 'FP';

  @override
  String toString() => id;
}

class Fs implements Feature {
  static const String id = 'FS';

  @override
  String toString() => id;
}

class Gen implements Feature {
  static const String id = 'GEN';

  @override
  String toString() => id;
}

class HaPlus implements Feature {
  static const String id = 'ha+';

  @override
  String toString() => id;
}

class Ii implements Feature {
  static const String id = '(II)';

  @override
  String toString() => id;
}

class Iii implements Feature {
  static const String id = '(III)';

  @override
  String toString() => id;
}

class Impf implements Feature {
  static const String id = 'IMPF';

  @override
  String toString() => id;
}

class Impv implements Feature {
  static const String id = 'IMPV';

  @override
  String toString() => id;
}

class Indef implements Feature {
  static const String id = 'INDEF';

  @override
  String toString() => id;
}

class Iv implements Feature {
  static const String id = '(IV)';

  @override
  String toString() => id;
}

class Ix implements Feature {
  static const String id = '(IX)';

  @override
  String toString() => id;
}

class KaPlus implements Feature {
  static const String id = 'ka+';

  @override
  String toString() => id;
}

class M implements Feature {
  static const String id = 'M';

  @override
  String toString() => id;
}

class Md implements Feature {
  static const String id = 'MD';

  @override
  String toString() => id;
}

class Mp implements Feature {
  static const String id = 'MP';

  @override
  String toString() => id;
}

class Ms implements Feature {
  static const String id = 'MS';

  @override
  String toString() => id;
}

class Nom implements Feature {
  static const String id = 'NOM';

  @override
  String toString() => id;
}

class OneP implements Feature {
  static const String id = '1P';

  @override
  String toString() => id;
}

class OneS implements Feature {
  static const String id = '1S';

  @override
  String toString() => id;
}

class P implements Feature {
  static const String id = 'P';

  @override
  String toString() => id;
}

class Pass implements Feature {
  static const String id = 'PASS';

  @override
  String toString() => id;
}

class Pcpl implements Feature {
  static const String id = 'PCPL';

  @override
  String toString() => id;
}

class Perf implements Feature {
  static const String id = 'PERF';

  @override
  String toString() => id;
}

class PlusVoc implements Feature {
  static const String id = '+VOC';

  @override
  String toString() => id;
}

class Prefix implements Feature {
  static const String id = 'PREFIX';

  @override
  String toString() => id;
}

class SaPlus implements Feature {
  static const String id = 'sa+';

  @override
  String toString() => id;
}

class Stem implements Feature {
  static const String id = 'STEM';

  @override
  String toString() => id;
}

class Suffix implements Feature {
  static const String id = 'SUFFIX';

  @override
  String toString() => id;
}

class TaPlus implements Feature {
  static const String id = 'ta+';

  @override
  String toString() => id;
}

class ThreeD implements Feature {
  static const String id = '3D';

  @override
  String toString() => id;
}

class ThreeFd implements Feature {
  static const String id = '3FD';

  @override
  String toString() => id;
}

class ThreeFp implements Feature {
  static const String id = '3FP';

  @override
  String toString() => id;
}

class ThreeFs implements Feature {
  static const String id = '3FS';

  @override
  String toString() => id;
}

class ThreeMd implements Feature {
  static const String id = '3MD';

  @override
  String toString() => id;
}

class ThreeMp implements Feature {
  static const String id = '3MP';

  @override
  String toString() => id;
}

class ThreeMs implements Feature {
  static const String id = '3MS';

  @override
  String toString() => id;
}

class TwoD implements Feature {
  static const String id = '2D';

  @override
  String toString() => id;
}

class TwoFd implements Feature {
  static const String id = '2FD';

  @override
  String toString() => id;
}

class TwoFp implements Feature {
  static const String id = '2FP';

  @override
  String toString() => id;
}

class TwoFs implements Feature {
  static const String id = '2FS';

  @override
  String toString() => id;
}

class TwoMd implements Feature {
  static const String id = '2MD';

  @override
  String toString() => id;
}

class TwoMp implements Feature {
  static const String id = '2MP';

  @override
  String toString() => id;
}

class TwoMs implements Feature {
  static const String id = '2MS';

  @override
  String toString() => id;
}

class V implements Feature {
  static const String id = '(V)';

  @override
  String toString() => id;
}

class Vi implements Feature {
  static const String id = '(VI)';

  @override
  String toString() => id;
}

class Vii implements Feature {
  static const String id = '(VII)';

  @override
  String toString() => id;
}

class Viii implements Feature {
  static const String id = '(VIII)';

  @override
  String toString() => id;
}

class Vn implements Feature {
  static const String id = 'VN';

  @override
  String toString() => id;
}

class X implements Feature {
  static const String id = '(X)';

  @override
  String toString() => id;
}

class Xi implements Feature {
  static const String id = '(XI)';

  @override
  String toString() => id;
}

class Xii implements Feature {
  static const String id = '(XII)';

  @override
  String toString() => id;
}

class YaPlus implements Feature {
  static const String id = 'ya+';

  @override
  String toString() => id;
}

class A implements Feature {
  const A(this.value);

  final String value;

  static const String id = 'A';

  @override
  String toString() => '$id:$value';
}

class Ff implements Feature {
  const Ff(this.value);

  final String value;

  static const String id = 'f';

  @override
  String toString() => '$id:$value';
}

class L implements Feature {
  const L(this.value);

  final String value;

  static const String id = 'l';

  @override
  String toString() => '$id:$value';
}

class Lem implements Feature {
  const Lem(this.value);

  final String value;

  static const String id = 'LEM';

  @override
  String toString() => '$id:$value';
}

class Mood implements Feature {
  const Mood(this.value);

  final String value;

  static const String id = 'MOOD';

  @override
  String toString() => '$id:$value';
}

class PlusN implements Feature {
  const PlusN(this.value);

  final String value;

  static const String id = '+n';

  @override
  String toString() => '$id:$value';
}

class Pos implements Feature {
  const Pos(this.value);

  final String value;

  static const String id = 'POS';

  @override
  String toString() => '$id:$value';
}

class Pron implements Feature {
  const Pron(this.value);

  final String value;

  static const String id = 'PRON';

  @override
  String toString() => '$id:$value';
}

class Root implements Feature {
  const Root(this.value);

  final String value;

  static const String id = 'ROOT';

  @override
  String toString() => '$id:$value';
}

class Sp implements Feature {
  const Sp(this.value);

  final String value;

  static const String id = 'SP';

  @override
  String toString() => '$id:$value';
}

class W implements Feature {
  const W(this.value);

  final String value;

  static const String id = 'w';

  @override
  String toString() => '$id:$value';
}
