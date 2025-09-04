// To parse this JSON data, do
//
//     final dogResponse = dogResponseFromJson(jsonString);

import 'dart:convert';

DogResponse dogResponseFromJson(String str) =>
    DogResponse.fromJson(json.decode(str));

String dogResponseToJson(DogResponse data) => json.encode(data.toJson());

class DogResponse {
  Message? message;
  String? status;

  DogResponse({this.message, this.status});

  factory DogResponse.fromJson(Map<String, dynamic> json) => DogResponse(
    message: json["message"] == null ? null : Message.fromJson(json["message"]),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "message": message?.toJson(),
    "status": status,
  };
}

class Message {
  List<dynamic>? affenpinscher;
  List<dynamic>? african;
  List<dynamic>? airedale;
  List<dynamic>? akita;
  List<dynamic>? appenzeller;
  List<String>? australian;
  List<String>? bakharwal;
  List<dynamic>? basenji;
  List<dynamic>? beagle;
  List<dynamic>? bluetick;
  List<dynamic>? borzoi;
  List<dynamic>? bouvier;
  List<dynamic>? boxer;
  List<dynamic>? brabancon;
  List<dynamic>? briard;
  List<String>? buhund;
  List<String>? bulldog;
  List<String>? bullterrier;
  List<String>? cattledog;
  List<dynamic>? cavapoo;
  List<dynamic>? chihuahua;
  List<String>? chippiparai;
  List<dynamic>? chow;
  List<dynamic>? clumber;
  List<dynamic>? cockapoo;
  List<String>? collie;
  List<dynamic>? coonhound;
  List<String>? corgi;
  List<dynamic>? cotondetulear;
  List<dynamic>? dachshund;
  List<dynamic>? dalmatian;
  List<String>? dane;
  List<String>? danish;
  List<String>? deerhound;
  List<dynamic>? dhole;
  List<dynamic>? dingo;
  List<dynamic>? doberman;
  List<String>? elkhound;
  List<dynamic>? entlebucher;
  List<dynamic>? eskimo;
  List<String>? finnish;
  List<String>? frise;
  List<String>? gaddi;
  List<dynamic>? germanshepherd;
  List<String>? greyhound;
  List<dynamic>? groenendael;
  List<dynamic>? havanese;
  List<String>? hound;
  List<dynamic>? husky;
  List<dynamic>? keeshond;
  List<dynamic>? kelpie;
  List<dynamic>? kombai;
  List<dynamic>? komondor;
  List<dynamic>? kuvasz;
  List<dynamic>? labradoodle;
  List<dynamic>? labrador;
  List<dynamic>? leonberg;
  List<dynamic>? lhasa;
  List<dynamic>? malamute;
  List<dynamic>? malinois;
  List<dynamic>? maltese;
  List<String>? mastiff;
  List<dynamic>? mexicanhairless;
  List<dynamic>? mix;
  List<String>? mountain;
  List<String>? mudhol;
  List<dynamic>? newfoundland;
  List<dynamic>? otterhound;
  List<String>? ovcharka;
  List<dynamic>? papillon;
  List<String>? pariah;
  List<dynamic>? pekinese;
  List<dynamic>? pembroke;
  List<String>? pinscher;
  List<dynamic>? pitbull;
  List<String>? pointer;
  List<dynamic>? pomeranian;
  List<String>? poodle;
  List<dynamic>? pug;
  List<dynamic>? puggle;
  List<dynamic>? pyrenees;
  List<String>? rajapalayam;
  List<dynamic>? redbone;
  List<String>? retriever;
  List<String>? ridgeback;
  List<dynamic>? rottweiler;
  List<dynamic>? saluki;
  List<dynamic>? samoyed;
  List<dynamic>? schipperke;
  List<String>? schnauzer;
  List<String>? segugio;
  List<String>? setter;
  List<dynamic>? sharpei;
  List<String>? sheepdog;
  List<dynamic>? shiba;
  List<dynamic>? shihtzu;
  List<String>? spaniel;
  List<String>? spitz;
  List<String>? springer;
  List<dynamic>? stbernard;
  List<String>? terrier;
  List<dynamic>? tervuren;
  List<dynamic>? vizsla;
  List<String>? waterdog;
  List<dynamic>? weimaraner;
  List<dynamic>? whippet;
  List<String>? wolfhound;

  Message({
    this.affenpinscher,
    this.african,
    this.airedale,
    this.akita,
    this.appenzeller,
    this.australian,
    this.bakharwal,
    this.basenji,
    this.beagle,
    this.bluetick,
    this.borzoi,
    this.bouvier,
    this.boxer,
    this.brabancon,
    this.briard,
    this.buhund,
    this.bulldog,
    this.bullterrier,
    this.cattledog,
    this.cavapoo,
    this.chihuahua,
    this.chippiparai,
    this.chow,
    this.clumber,
    this.cockapoo,
    this.collie,
    this.coonhound,
    this.corgi,
    this.cotondetulear,
    this.dachshund,
    this.dalmatian,
    this.dane,
    this.danish,
    this.deerhound,
    this.dhole,
    this.dingo,
    this.doberman,
    this.elkhound,
    this.entlebucher,
    this.eskimo,
    this.finnish,
    this.frise,
    this.gaddi,
    this.germanshepherd,
    this.greyhound,
    this.groenendael,
    this.havanese,
    this.hound,
    this.husky,
    this.keeshond,
    this.kelpie,
    this.kombai,
    this.komondor,
    this.kuvasz,
    this.labradoodle,
    this.labrador,
    this.leonberg,
    this.lhasa,
    this.malamute,
    this.malinois,
    this.maltese,
    this.mastiff,
    this.mexicanhairless,
    this.mix,
    this.mountain,
    this.mudhol,
    this.newfoundland,
    this.otterhound,
    this.ovcharka,
    this.papillon,
    this.pariah,
    this.pekinese,
    this.pembroke,
    this.pinscher,
    this.pitbull,
    this.pointer,
    this.pomeranian,
    this.poodle,
    this.pug,
    this.puggle,
    this.pyrenees,
    this.rajapalayam,
    this.redbone,
    this.retriever,
    this.ridgeback,
    this.rottweiler,
    this.saluki,
    this.samoyed,
    this.schipperke,
    this.schnauzer,
    this.segugio,
    this.setter,
    this.sharpei,
    this.sheepdog,
    this.shiba,
    this.shihtzu,
    this.spaniel,
    this.spitz,
    this.springer,
    this.stbernard,
    this.terrier,
    this.tervuren,
    this.vizsla,
    this.waterdog,
    this.weimaraner,
    this.whippet,
    this.wolfhound,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    affenpinscher: json["affenpinscher"] == null
        ? []
        : List<dynamic>.from(json["affenpinscher"]!.map((x) => x)),
    african: json["african"] == null
        ? []
        : List<dynamic>.from(json["african"]!.map((x) => x)),
    airedale: json["airedale"] == null
        ? []
        : List<dynamic>.from(json["airedale"]!.map((x) => x)),
    akita: json["akita"] == null
        ? []
        : List<dynamic>.from(json["akita"]!.map((x) => x)),
    appenzeller: json["appenzeller"] == null
        ? []
        : List<dynamic>.from(json["appenzeller"]!.map((x) => x)),
    australian: json["australian"] == null
        ? []
        : List<String>.from(json["australian"]!.map((x) => x)),
    bakharwal: json["bakharwal"] == null
        ? []
        : List<String>.from(json["bakharwal"]!.map((x) => x)),
    basenji: json["basenji"] == null
        ? []
        : List<dynamic>.from(json["basenji"]!.map((x) => x)),
    beagle: json["beagle"] == null
        ? []
        : List<dynamic>.from(json["beagle"]!.map((x) => x)),
    bluetick: json["bluetick"] == null
        ? []
        : List<dynamic>.from(json["bluetick"]!.map((x) => x)),
    borzoi: json["borzoi"] == null
        ? []
        : List<dynamic>.from(json["borzoi"]!.map((x) => x)),
    bouvier: json["bouvier"] == null
        ? []
        : List<dynamic>.from(json["bouvier"]!.map((x) => x)),
    boxer: json["boxer"] == null
        ? []
        : List<dynamic>.from(json["boxer"]!.map((x) => x)),
    brabancon: json["brabancon"] == null
        ? []
        : List<dynamic>.from(json["brabancon"]!.map((x) => x)),
    briard: json["briard"] == null
        ? []
        : List<dynamic>.from(json["briard"]!.map((x) => x)),
    buhund: json["buhund"] == null
        ? []
        : List<String>.from(json["buhund"]!.map((x) => x)),
    bulldog: json["bulldog"] == null
        ? []
        : List<String>.from(json["bulldog"]!.map((x) => x)),
    bullterrier: json["bullterrier"] == null
        ? []
        : List<String>.from(json["bullterrier"]!.map((x) => x)),
    cattledog: json["cattledog"] == null
        ? []
        : List<String>.from(json["cattledog"]!.map((x) => x)),
    cavapoo: json["cavapoo"] == null
        ? []
        : List<dynamic>.from(json["cavapoo"]!.map((x) => x)),
    chihuahua: json["chihuahua"] == null
        ? []
        : List<dynamic>.from(json["chihuahua"]!.map((x) => x)),
    chippiparai: json["chippiparai"] == null
        ? []
        : List<String>.from(json["chippiparai"]!.map((x) => x)),
    chow: json["chow"] == null
        ? []
        : List<dynamic>.from(json["chow"]!.map((x) => x)),
    clumber: json["clumber"] == null
        ? []
        : List<dynamic>.from(json["clumber"]!.map((x) => x)),
    cockapoo: json["cockapoo"] == null
        ? []
        : List<dynamic>.from(json["cockapoo"]!.map((x) => x)),
    collie: json["collie"] == null
        ? []
        : List<String>.from(json["collie"]!.map((x) => x)),
    coonhound: json["coonhound"] == null
        ? []
        : List<dynamic>.from(json["coonhound"]!.map((x) => x)),
    corgi: json["corgi"] == null
        ? []
        : List<String>.from(json["corgi"]!.map((x) => x)),
    cotondetulear: json["cotondetulear"] == null
        ? []
        : List<dynamic>.from(json["cotondetulear"]!.map((x) => x)),
    dachshund: json["dachshund"] == null
        ? []
        : List<dynamic>.from(json["dachshund"]!.map((x) => x)),
    dalmatian: json["dalmatian"] == null
        ? []
        : List<dynamic>.from(json["dalmatian"]!.map((x) => x)),
    dane: json["dane"] == null
        ? []
        : List<String>.from(json["dane"]!.map((x) => x)),
    danish: json["danish"] == null
        ? []
        : List<String>.from(json["danish"]!.map((x) => x)),
    deerhound: json["deerhound"] == null
        ? []
        : List<String>.from(json["deerhound"]!.map((x) => x)),
    dhole: json["dhole"] == null
        ? []
        : List<dynamic>.from(json["dhole"]!.map((x) => x)),
    dingo: json["dingo"] == null
        ? []
        : List<dynamic>.from(json["dingo"]!.map((x) => x)),
    doberman: json["doberman"] == null
        ? []
        : List<dynamic>.from(json["doberman"]!.map((x) => x)),
    elkhound: json["elkhound"] == null
        ? []
        : List<String>.from(json["elkhound"]!.map((x) => x)),
    entlebucher: json["entlebucher"] == null
        ? []
        : List<dynamic>.from(json["entlebucher"]!.map((x) => x)),
    eskimo: json["eskimo"] == null
        ? []
        : List<dynamic>.from(json["eskimo"]!.map((x) => x)),
    finnish: json["finnish"] == null
        ? []
        : List<String>.from(json["finnish"]!.map((x) => x)),
    frise: json["frise"] == null
        ? []
        : List<String>.from(json["frise"]!.map((x) => x)),
    gaddi: json["gaddi"] == null
        ? []
        : List<String>.from(json["gaddi"]!.map((x) => x)),
    germanshepherd: json["germanshepherd"] == null
        ? []
        : List<dynamic>.from(json["germanshepherd"]!.map((x) => x)),
    greyhound: json["greyhound"] == null
        ? []
        : List<String>.from(json["greyhound"]!.map((x) => x)),
    groenendael: json["groenendael"] == null
        ? []
        : List<dynamic>.from(json["groenendael"]!.map((x) => x)),
    havanese: json["havanese"] == null
        ? []
        : List<dynamic>.from(json["havanese"]!.map((x) => x)),
    hound: json["hound"] == null
        ? []
        : List<String>.from(json["hound"]!.map((x) => x)),
    husky: json["husky"] == null
        ? []
        : List<dynamic>.from(json["husky"]!.map((x) => x)),
    keeshond: json["keeshond"] == null
        ? []
        : List<dynamic>.from(json["keeshond"]!.map((x) => x)),
    kelpie: json["kelpie"] == null
        ? []
        : List<dynamic>.from(json["kelpie"]!.map((x) => x)),
    kombai: json["kombai"] == null
        ? []
        : List<dynamic>.from(json["kombai"]!.map((x) => x)),
    komondor: json["komondor"] == null
        ? []
        : List<dynamic>.from(json["komondor"]!.map((x) => x)),
    kuvasz: json["kuvasz"] == null
        ? []
        : List<dynamic>.from(json["kuvasz"]!.map((x) => x)),
    labradoodle: json["labradoodle"] == null
        ? []
        : List<dynamic>.from(json["labradoodle"]!.map((x) => x)),
    labrador: json["labrador"] == null
        ? []
        : List<dynamic>.from(json["labrador"]!.map((x) => x)),
    leonberg: json["leonberg"] == null
        ? []
        : List<dynamic>.from(json["leonberg"]!.map((x) => x)),
    lhasa: json["lhasa"] == null
        ? []
        : List<dynamic>.from(json["lhasa"]!.map((x) => x)),
    malamute: json["malamute"] == null
        ? []
        : List<dynamic>.from(json["malamute"]!.map((x) => x)),
    malinois: json["malinois"] == null
        ? []
        : List<dynamic>.from(json["malinois"]!.map((x) => x)),
    maltese: json["maltese"] == null
        ? []
        : List<dynamic>.from(json["maltese"]!.map((x) => x)),
    mastiff: json["mastiff"] == null
        ? []
        : List<String>.from(json["mastiff"]!.map((x) => x)),
    mexicanhairless: json["mexicanhairless"] == null
        ? []
        : List<dynamic>.from(json["mexicanhairless"]!.map((x) => x)),
    mix: json["mix"] == null
        ? []
        : List<dynamic>.from(json["mix"]!.map((x) => x)),
    mountain: json["mountain"] == null
        ? []
        : List<String>.from(json["mountain"]!.map((x) => x)),
    mudhol: json["mudhol"] == null
        ? []
        : List<String>.from(json["mudhol"]!.map((x) => x)),
    newfoundland: json["newfoundland"] == null
        ? []
        : List<dynamic>.from(json["newfoundland"]!.map((x) => x)),
    otterhound: json["otterhound"] == null
        ? []
        : List<dynamic>.from(json["otterhound"]!.map((x) => x)),
    ovcharka: json["ovcharka"] == null
        ? []
        : List<String>.from(json["ovcharka"]!.map((x) => x)),
    papillon: json["papillon"] == null
        ? []
        : List<dynamic>.from(json["papillon"]!.map((x) => x)),
    pariah: json["pariah"] == null
        ? []
        : List<String>.from(json["pariah"]!.map((x) => x)),
    pekinese: json["pekinese"] == null
        ? []
        : List<dynamic>.from(json["pekinese"]!.map((x) => x)),
    pembroke: json["pembroke"] == null
        ? []
        : List<dynamic>.from(json["pembroke"]!.map((x) => x)),
    pinscher: json["pinscher"] == null
        ? []
        : List<String>.from(json["pinscher"]!.map((x) => x)),
    pitbull: json["pitbull"] == null
        ? []
        : List<dynamic>.from(json["pitbull"]!.map((x) => x)),
    pointer: json["pointer"] == null
        ? []
        : List<String>.from(json["pointer"]!.map((x) => x)),
    pomeranian: json["pomeranian"] == null
        ? []
        : List<dynamic>.from(json["pomeranian"]!.map((x) => x)),
    poodle: json["poodle"] == null
        ? []
        : List<String>.from(json["poodle"]!.map((x) => x)),
    pug: json["pug"] == null
        ? []
        : List<dynamic>.from(json["pug"]!.map((x) => x)),
    puggle: json["puggle"] == null
        ? []
        : List<dynamic>.from(json["puggle"]!.map((x) => x)),
    pyrenees: json["pyrenees"] == null
        ? []
        : List<dynamic>.from(json["pyrenees"]!.map((x) => x)),
    rajapalayam: json["rajapalayam"] == null
        ? []
        : List<String>.from(json["rajapalayam"]!.map((x) => x)),
    redbone: json["redbone"] == null
        ? []
        : List<dynamic>.from(json["redbone"]!.map((x) => x)),
    retriever: json["retriever"] == null
        ? []
        : List<String>.from(json["retriever"]!.map((x) => x)),
    ridgeback: json["ridgeback"] == null
        ? []
        : List<String>.from(json["ridgeback"]!.map((x) => x)),
    rottweiler: json["rottweiler"] == null
        ? []
        : List<dynamic>.from(json["rottweiler"]!.map((x) => x)),
    saluki: json["saluki"] == null
        ? []
        : List<dynamic>.from(json["saluki"]!.map((x) => x)),
    samoyed: json["samoyed"] == null
        ? []
        : List<dynamic>.from(json["samoyed"]!.map((x) => x)),
    schipperke: json["schipperke"] == null
        ? []
        : List<dynamic>.from(json["schipperke"]!.map((x) => x)),
    schnauzer: json["schnauzer"] == null
        ? []
        : List<String>.from(json["schnauzer"]!.map((x) => x)),
    segugio: json["segugio"] == null
        ? []
        : List<String>.from(json["segugio"]!.map((x) => x)),
    setter: json["setter"] == null
        ? []
        : List<String>.from(json["setter"]!.map((x) => x)),
    sharpei: json["sharpei"] == null
        ? []
        : List<dynamic>.from(json["sharpei"]!.map((x) => x)),
    sheepdog: json["sheepdog"] == null
        ? []
        : List<String>.from(json["sheepdog"]!.map((x) => x)),
    shiba: json["shiba"] == null
        ? []
        : List<dynamic>.from(json["shiba"]!.map((x) => x)),
    shihtzu: json["shihtzu"] == null
        ? []
        : List<dynamic>.from(json["shihtzu"]!.map((x) => x)),
    spaniel: json["spaniel"] == null
        ? []
        : List<String>.from(json["spaniel"]!.map((x) => x)),
    spitz: json["spitz"] == null
        ? []
        : List<String>.from(json["spitz"]!.map((x) => x)),
    springer: json["springer"] == null
        ? []
        : List<String>.from(json["springer"]!.map((x) => x)),
    stbernard: json["stbernard"] == null
        ? []
        : List<dynamic>.from(json["stbernard"]!.map((x) => x)),
    terrier: json["terrier"] == null
        ? []
        : List<String>.from(json["terrier"]!.map((x) => x)),
    tervuren: json["tervuren"] == null
        ? []
        : List<dynamic>.from(json["tervuren"]!.map((x) => x)),
    vizsla: json["vizsla"] == null
        ? []
        : List<dynamic>.from(json["vizsla"]!.map((x) => x)),
    waterdog: json["waterdog"] == null
        ? []
        : List<String>.from(json["waterdog"]!.map((x) => x)),
    weimaraner: json["weimaraner"] == null
        ? []
        : List<dynamic>.from(json["weimaraner"]!.map((x) => x)),
    whippet: json["whippet"] == null
        ? []
        : List<dynamic>.from(json["whippet"]!.map((x) => x)),
    wolfhound: json["wolfhound"] == null
        ? []
        : List<String>.from(json["wolfhound"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "affenpinscher": affenpinscher == null
        ? []
        : List<dynamic>.from(affenpinscher!.map((x) => x)),
    "african": african == null
        ? []
        : List<dynamic>.from(african!.map((x) => x)),
    "airedale": airedale == null
        ? []
        : List<dynamic>.from(airedale!.map((x) => x)),
    "akita": akita == null ? [] : List<dynamic>.from(akita!.map((x) => x)),
    "appenzeller": appenzeller == null
        ? []
        : List<dynamic>.from(appenzeller!.map((x) => x)),
    "australian": australian == null
        ? []
        : List<dynamic>.from(australian!.map((x) => x)),
    "bakharwal": bakharwal == null
        ? []
        : List<dynamic>.from(bakharwal!.map((x) => x)),
    "basenji": basenji == null
        ? []
        : List<dynamic>.from(basenji!.map((x) => x)),
    "beagle": beagle == null ? [] : List<dynamic>.from(beagle!.map((x) => x)),
    "bluetick": bluetick == null
        ? []
        : List<dynamic>.from(bluetick!.map((x) => x)),
    "borzoi": borzoi == null ? [] : List<dynamic>.from(borzoi!.map((x) => x)),
    "bouvier": bouvier == null
        ? []
        : List<dynamic>.from(bouvier!.map((x) => x)),
    "boxer": boxer == null ? [] : List<dynamic>.from(boxer!.map((x) => x)),
    "brabancon": brabancon == null
        ? []
        : List<dynamic>.from(brabancon!.map((x) => x)),
    "briard": briard == null ? [] : List<dynamic>.from(briard!.map((x) => x)),
    "buhund": buhund == null ? [] : List<dynamic>.from(buhund!.map((x) => x)),
    "bulldog": bulldog == null
        ? []
        : List<dynamic>.from(bulldog!.map((x) => x)),
    "bullterrier": bullterrier == null
        ? []
        : List<dynamic>.from(bullterrier!.map((x) => x)),
    "cattledog": cattledog == null
        ? []
        : List<dynamic>.from(cattledog!.map((x) => x)),
    "cavapoo": cavapoo == null
        ? []
        : List<dynamic>.from(cavapoo!.map((x) => x)),
    "chihuahua": chihuahua == null
        ? []
        : List<dynamic>.from(chihuahua!.map((x) => x)),
    "chippiparai": chippiparai == null
        ? []
        : List<dynamic>.from(chippiparai!.map((x) => x)),
    "chow": chow == null ? [] : List<dynamic>.from(chow!.map((x) => x)),
    "clumber": clumber == null
        ? []
        : List<dynamic>.from(clumber!.map((x) => x)),
    "cockapoo": cockapoo == null
        ? []
        : List<dynamic>.from(cockapoo!.map((x) => x)),
    "collie": collie == null ? [] : List<dynamic>.from(collie!.map((x) => x)),
    "coonhound": coonhound == null
        ? []
        : List<dynamic>.from(coonhound!.map((x) => x)),
    "corgi": corgi == null ? [] : List<dynamic>.from(corgi!.map((x) => x)),
    "cotondetulear": cotondetulear == null
        ? []
        : List<dynamic>.from(cotondetulear!.map((x) => x)),
    "dachshund": dachshund == null
        ? []
        : List<dynamic>.from(dachshund!.map((x) => x)),
    "dalmatian": dalmatian == null
        ? []
        : List<dynamic>.from(dalmatian!.map((x) => x)),
    "dane": dane == null ? [] : List<dynamic>.from(dane!.map((x) => x)),
    "danish": danish == null ? [] : List<dynamic>.from(danish!.map((x) => x)),
    "deerhound": deerhound == null
        ? []
        : List<dynamic>.from(deerhound!.map((x) => x)),
    "dhole": dhole == null ? [] : List<dynamic>.from(dhole!.map((x) => x)),
    "dingo": dingo == null ? [] : List<dynamic>.from(dingo!.map((x) => x)),
    "doberman": doberman == null
        ? []
        : List<dynamic>.from(doberman!.map((x) => x)),
    "elkhound": elkhound == null
        ? []
        : List<dynamic>.from(elkhound!.map((x) => x)),
    "entlebucher": entlebucher == null
        ? []
        : List<dynamic>.from(entlebucher!.map((x) => x)),
    "eskimo": eskimo == null ? [] : List<dynamic>.from(eskimo!.map((x) => x)),
    "finnish": finnish == null
        ? []
        : List<dynamic>.from(finnish!.map((x) => x)),
    "frise": frise == null ? [] : List<dynamic>.from(frise!.map((x) => x)),
    "gaddi": gaddi == null ? [] : List<dynamic>.from(gaddi!.map((x) => x)),
    "germanshepherd": germanshepherd == null
        ? []
        : List<dynamic>.from(germanshepherd!.map((x) => x)),
    "greyhound": greyhound == null
        ? []
        : List<dynamic>.from(greyhound!.map((x) => x)),
    "groenendael": groenendael == null
        ? []
        : List<dynamic>.from(groenendael!.map((x) => x)),
    "havanese": havanese == null
        ? []
        : List<dynamic>.from(havanese!.map((x) => x)),
    "hound": hound == null ? [] : List<dynamic>.from(hound!.map((x) => x)),
    "husky": husky == null ? [] : List<dynamic>.from(husky!.map((x) => x)),
    "keeshond": keeshond == null
        ? []
        : List<dynamic>.from(keeshond!.map((x) => x)),
    "kelpie": kelpie == null ? [] : List<dynamic>.from(kelpie!.map((x) => x)),
    "kombai": kombai == null ? [] : List<dynamic>.from(kombai!.map((x) => x)),
    "komondor": komondor == null
        ? []
        : List<dynamic>.from(komondor!.map((x) => x)),
    "kuvasz": kuvasz == null ? [] : List<dynamic>.from(kuvasz!.map((x) => x)),
    "labradoodle": labradoodle == null
        ? []
        : List<dynamic>.from(labradoodle!.map((x) => x)),
    "labrador": labrador == null
        ? []
        : List<dynamic>.from(labrador!.map((x) => x)),
    "leonberg": leonberg == null
        ? []
        : List<dynamic>.from(leonberg!.map((x) => x)),
    "lhasa": lhasa == null ? [] : List<dynamic>.from(lhasa!.map((x) => x)),
    "malamute": malamute == null
        ? []
        : List<dynamic>.from(malamute!.map((x) => x)),
    "malinois": malinois == null
        ? []
        : List<dynamic>.from(malinois!.map((x) => x)),
    "maltese": maltese == null
        ? []
        : List<dynamic>.from(maltese!.map((x) => x)),
    "mastiff": mastiff == null
        ? []
        : List<dynamic>.from(mastiff!.map((x) => x)),
    "mexicanhairless": mexicanhairless == null
        ? []
        : List<dynamic>.from(mexicanhairless!.map((x) => x)),
    "mix": mix == null ? [] : List<dynamic>.from(mix!.map((x) => x)),
    "mountain": mountain == null
        ? []
        : List<dynamic>.from(mountain!.map((x) => x)),
    "mudhol": mudhol == null ? [] : List<dynamic>.from(mudhol!.map((x) => x)),
    "newfoundland": newfoundland == null
        ? []
        : List<dynamic>.from(newfoundland!.map((x) => x)),
    "otterhound": otterhound == null
        ? []
        : List<dynamic>.from(otterhound!.map((x) => x)),
    "ovcharka": ovcharka == null
        ? []
        : List<dynamic>.from(ovcharka!.map((x) => x)),
    "papillon": papillon == null
        ? []
        : List<dynamic>.from(papillon!.map((x) => x)),
    "pariah": pariah == null ? [] : List<dynamic>.from(pariah!.map((x) => x)),
    "pekinese": pekinese == null
        ? []
        : List<dynamic>.from(pekinese!.map((x) => x)),
    "pembroke": pembroke == null
        ? []
        : List<dynamic>.from(pembroke!.map((x) => x)),
    "pinscher": pinscher == null
        ? []
        : List<dynamic>.from(pinscher!.map((x) => x)),
    "pitbull": pitbull == null
        ? []
        : List<dynamic>.from(pitbull!.map((x) => x)),
    "pointer": pointer == null
        ? []
        : List<dynamic>.from(pointer!.map((x) => x)),
    "pomeranian": pomeranian == null
        ? []
        : List<dynamic>.from(pomeranian!.map((x) => x)),
    "poodle": poodle == null ? [] : List<dynamic>.from(poodle!.map((x) => x)),
    "pug": pug == null ? [] : List<dynamic>.from(pug!.map((x) => x)),
    "puggle": puggle == null ? [] : List<dynamic>.from(puggle!.map((x) => x)),
    "pyrenees": pyrenees == null
        ? []
        : List<dynamic>.from(pyrenees!.map((x) => x)),
    "rajapalayam": rajapalayam == null
        ? []
        : List<dynamic>.from(rajapalayam!.map((x) => x)),
    "redbone": redbone == null
        ? []
        : List<dynamic>.from(redbone!.map((x) => x)),
    "retriever": retriever == null
        ? []
        : List<dynamic>.from(retriever!.map((x) => x)),
    "ridgeback": ridgeback == null
        ? []
        : List<dynamic>.from(ridgeback!.map((x) => x)),
    "rottweiler": rottweiler == null
        ? []
        : List<dynamic>.from(rottweiler!.map((x) => x)),
    "saluki": saluki == null ? [] : List<dynamic>.from(saluki!.map((x) => x)),
    "samoyed": samoyed == null
        ? []
        : List<dynamic>.from(samoyed!.map((x) => x)),
    "schipperke": schipperke == null
        ? []
        : List<dynamic>.from(schipperke!.map((x) => x)),
    "schnauzer": schnauzer == null
        ? []
        : List<dynamic>.from(schnauzer!.map((x) => x)),
    "segugio": segugio == null
        ? []
        : List<dynamic>.from(segugio!.map((x) => x)),
    "setter": setter == null ? [] : List<dynamic>.from(setter!.map((x) => x)),
    "sharpei": sharpei == null
        ? []
        : List<dynamic>.from(sharpei!.map((x) => x)),
    "sheepdog": sheepdog == null
        ? []
        : List<dynamic>.from(sheepdog!.map((x) => x)),
    "shiba": shiba == null ? [] : List<dynamic>.from(shiba!.map((x) => x)),
    "shihtzu": shihtzu == null
        ? []
        : List<dynamic>.from(shihtzu!.map((x) => x)),
    "spaniel": spaniel == null
        ? []
        : List<dynamic>.from(spaniel!.map((x) => x)),
    "spitz": spitz == null ? [] : List<dynamic>.from(spitz!.map((x) => x)),
    "springer": springer == null
        ? []
        : List<dynamic>.from(springer!.map((x) => x)),
    "stbernard": stbernard == null
        ? []
        : List<dynamic>.from(stbernard!.map((x) => x)),
    "terrier": terrier == null
        ? []
        : List<dynamic>.from(terrier!.map((x) => x)),
    "tervuren": tervuren == null
        ? []
        : List<dynamic>.from(tervuren!.map((x) => x)),
    "vizsla": vizsla == null ? [] : List<dynamic>.from(vizsla!.map((x) => x)),
    "waterdog": waterdog == null
        ? []
        : List<dynamic>.from(waterdog!.map((x) => x)),
    "weimaraner": weimaraner == null
        ? []
        : List<dynamic>.from(weimaraner!.map((x) => x)),
    "whippet": whippet == null
        ? []
        : List<dynamic>.from(whippet!.map((x) => x)),
    "wolfhound": wolfhound == null
        ? []
        : List<dynamic>.from(wolfhound!.map((x) => x)),
  };
}
