import 'package:yes_no_maybe_app/domain/entities/message.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMessageEntity() => Message(
      message: answer == 'yes'
          ? 'Sí'
          : answer == 'no'
              ? 'No'
              : 'Tal vez 7u7',
      fromWho: FromWho.user,
      imageUrl: image);
}
