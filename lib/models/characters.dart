import 'dart:convert';

import 'package:flutter/foundation.dart';

class Characters {
  String? name;
  List<String>? alternateNames;
  String? species;
  String? gender;
  String? house;
  String? dateOfBirth;
  int? yearOfBirth;
  bool? wizard;
  String? ancestry;
  String? eyeColour;
  String? hairColour;
  Wand? wand;
  String? patronus;
  bool? hogwartsStudent;
  bool? hogwartsStaff;
  String? actor;
  List<String>? alternateActors;
  bool? alive;
  String? image;

  Characters(
    this.name,
    this.alternateNames,
    this.species,
    this.gender,
    this.house,
    this.dateOfBirth,
    this.yearOfBirth,
    this.wizard,
    this.ancestry,
    this.eyeColour,
    this.hairColour,
    this.wand,
    this.patronus,
    this.hogwartsStudent,
    this.hogwartsStaff,
    this.actor,
    this.alternateActors,
    this.alive,
    this.image
    );

  Characters copyWith({
    String? name,
    List<String>? alternateNames,
    String? species,
    String? gender,
    String? house,
    String? dateOfBirth,
    int? yearOfBirth,
    bool? wizard,
    String? ancestry,
    String? eyeColour,
    String? hairColour,
    Wand? wand,
    String? patronus,
    bool? hogwartsStudent,
    bool? hogwartsStaff,
    String? actor,
    List<String>? alternateActors,
    bool? alive,
    String? image,
  }) {
    return Characters(
      name ?? this.name,
      alternateNames ?? this.alternateNames,
      species ?? this.species,
      gender ?? this.gender,
      house ?? this.house,
      dateOfBirth ?? this.dateOfBirth,
      yearOfBirth ?? this.yearOfBirth,
      wizard ?? this.wizard,
      ancestry ?? this.ancestry,
      eyeColour ?? this.eyeColour,
      hairColour ?? this.hairColour,
      wand ?? this.wand,
      patronus ?? this.patronus,
      hogwartsStudent ?? this.hogwartsStudent,
      hogwartsStaff ?? this.hogwartsStaff,
      actor ?? this.actor,
      alternateActors ?? this.alternateActors,
      alive ?? this.alive,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'alternateNames': alternateNames,
      'species': species,
      'gender': gender,
      'house': house,
      'dateOfBirth': dateOfBirth,
      'yearOfBirth': yearOfBirth,
      'wizard': wizard,
      'ancestry': ancestry,
      'eyeColour': eyeColour,
      'hairColour': hairColour,
      'wand': wand?.toMap(),
      'patronus': patronus,
      'hogwartsStudent': hogwartsStudent,
      'hogwartsStaff': hogwartsStaff,
      'actor': actor,
      'alternateActors': alternateActors,
      'alive': alive,
      'image': image,
    };
  }

  factory Characters.fromMap(Map<String, dynamic> map) {
    return Characters(
      map['name'],
      map['alternateNames'] != null ? List<String>.from(map['alternateNames']) : [],
      map['species'],
      map['gender'],
      map['house'],
      map['dateOfBirth'],
      map['yearOfBirth']?.toInt(),
      map['wizard'],
      map['ancestry'],
      map['eyeColour'],
      map['hairColour'],
      map['wand'] != null ? Wand.fromMap(map['wand']) : null,
      map['patronus'],
      map['hogwartsStudent'],
      map['hogwartsStaff'],
      map['actor'],
      map['alternateActors'] != null ? List<String>.from(map['alternateActors']) : [],
      map['alive'],
      map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Characters.fromJson(String source) => Characters.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Characters(name: $name, alternateNames: $alternateNames, species: $species, gender: $gender, house: $house, dateOfBirth: $dateOfBirth, yearOfBirth: $yearOfBirth, wizard: $wizard, ancestry: $ancestry, eyeColour: $eyeColour, hairColour: $hairColour, wand: $wand, patronus: $patronus, hogwartsStudent: $hogwartsStudent, hogwartsStaff: $hogwartsStaff, actor: $actor, alternateActors: $alternateActors, alive: $alive, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Characters &&
      other.name == name &&
      listEquals(other.alternateNames, alternateNames) &&
      other.species == species &&
      other.gender == gender &&
      other.house == house &&
      other.dateOfBirth == dateOfBirth &&
      other.yearOfBirth == yearOfBirth &&
      other.wizard == wizard &&
      other.ancestry == ancestry &&
      other.eyeColour == eyeColour &&
      other.hairColour == hairColour &&
      other.wand == wand &&
      other.patronus == patronus &&
      other.hogwartsStudent == hogwartsStudent &&
      other.hogwartsStaff == hogwartsStaff &&
      other.actor == actor &&
      listEquals(other.alternateActors, alternateActors) &&
      other.alive == alive &&
      other.image == image;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      alternateNames.hashCode ^
      species.hashCode ^
      gender.hashCode ^
      house.hashCode ^
      dateOfBirth.hashCode ^
      yearOfBirth.hashCode ^
      wizard.hashCode ^
      ancestry.hashCode ^
      eyeColour.hashCode ^
      hairColour.hashCode ^
      wand.hashCode ^
      patronus.hashCode ^
      hogwartsStudent.hashCode ^
      hogwartsStaff.hashCode ^
      actor.hashCode ^
      alternateActors.hashCode ^
      alive.hashCode ^
      image.hashCode;
  }
}

class Wand {
  String? wood;
  String? core;
  int? length;

  Wand({
    this.wood,
    this.core,
    this.length,
  });


  Wand copyWith({
    String? wood,
    String? core,
    int? length,
  }) {
    return Wand(
      wood: wood ?? this.wood,
      core: core ?? this.core,
      length: length ?? this.length,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'wood': wood,
      'core': core,
      'length': length,
    };
  }

  factory Wand.fromMap(Map<String, dynamic> map) {
    return Wand(
      wood: map['wood'],
      core: map['core'],
      length: map['length']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Wand.fromJson(String source) => Wand.fromMap(json.decode(source));

  @override
  String toString() => 'Wand(wood: $wood, core: $core, length: $length)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Wand &&
      other.wood == wood &&
      other.core == core &&
      other.length == length;
  }

  @override
  int get hashCode => wood.hashCode ^ core.hashCode ^ length.hashCode;
}
