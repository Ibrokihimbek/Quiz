import 'package:quiz/models/option_model.dart';

class QuestionModel {
  String question;
  OptionModel answer1;
  OptionModel answer2;
  OptionModel answer3;
  OptionModel answer4;

  int trueAnswer = 1;

  QuestionModel({
    required this.question,
    required this.answer1,
    required this.answer2,
    required this.answer3,
    required this.answer4,
    this.trueAnswer = 1,
  });

  static final questions = [
    QuestionModel(
      question: "Dvigatelga yoqilg'i yetkazib beruvchi detal nomi",
      answer1: OptionModel(title: "Yoqilg'i nasosi"),
      answer2: OptionModel(title: 'Starter'),
      answer3: OptionModel(title: "Yoqilg'i filtri"),
      answer4: OptionModel(title: "Radiator"),
      trueAnswer: 1,
    ),
    QuestionModel(
      question:
          "Avtomobilni to'xtaish uchun foydalaniladigan detal nomi toping",
      answer1: OptionModel(title: "Uzatmalar qutisi"),
      answer2: OptionModel(title: 'Amartizator'),
      answer3: OptionModel(title: "Asosiy uzatma"),
      answer4: OptionModel(title: "Kalodka"),
      trueAnswer: 4,
    ),
    QuestionModel(
      question:
          "Avtomobilni o't oldirish birinchi ishga tushadigan qurilma nomi toping",
      answer1: OptionModel(title: "Dvigatel"),
      answer2: OptionModel(title: 'Generator'),
      answer3: OptionModel(title: "Starter"),
      answer4: OptionModel(title: "O't olirish shamlari"),
      trueAnswer: 3,
    ),
    QuestionModel(
      question:
          "Dvigatel Porshenlarini harakatini taminlovchi detal nomi toping",
      answer1: OptionModel(title: "Shatun"),
      answer2: OptionModel(title: "Raspredval"),
      answer3: OptionModel(title: "Injektor"),
      answer4: OptionModel(title: 'Kolenval'),
      trueAnswer: 4,
    ),
    QuestionModel(
      question: "Zaparojes avtomobilining dvigateli nima yordamida sovutilgan?",
      answer1: OptionModel(title: "Antifriz"),
      answer2: OptionModel(title: 'Havo'),
      answer3: OptionModel(title: "Radiator"),
      answer4: OptionModel(title: "Barchasi to'g'ri"),
      trueAnswer: 2,
    ),
  ];

  static final questions_two = [
    QuestionModel(
      question: "Faqat sonor undoshlar qatnashgan so'zlarqatorini toping.",
      answer1: OptionModel(title: "mosh, mos, makon"),
      answer2: OptionModel(title: "shag'al, nog'ora, mog'or"),
      answer3: OptionModel(title: "malol, marom, marmar"),
      answer4: OptionModel(title: "jang, mo'g'ul, nov"),
      trueAnswer: 3,
    ),
    QuestionModel(
      question:
          "Qaysi so'z tarkibida ikki jarangli undosh orasida yuqori tor unli kelgan yopiq bo'g'in bor?",
      answer1: OptionModel(title: "suyuqlik"),
      answer2: OptionModel(title: 'quchoqlamoq '),
      answer3: OptionModel(title: "ko'pburchak"),
      answer4: OptionModel(title: "besaranjom"),
      trueAnswer: 3,
    ),
    QuestionModel(
      question:
          "Bo'g'inlarga ajratish bilan asos va qo'shimchalarga ajratish teng kelmaydigan qatorni toping.",
      answer1: OptionModel(title: "fikrim, baxtim"),
      answer2: OptionModel(title: 'shahri, kuchli'),
      answer3: OptionModel(title: "boshga, toshda"),
      answer4: OptionModel(title: "faxri, aqldan"),
      trueAnswer: 1,
    ),
    QuestionModel(
      question: "Qaysi so'zda urg'u ikkinchi bo'g'inga tushadi?",
      answer1: OptionModel(title: "o'quvchimiz (bizning o'quvchimiz)"),
      answer2: OptionModel(title: "allakim"),
      answer3: OptionModel(title: "ulama (soch)"),
      answer4: OptionModel(title: 'sakkizta'),
      trueAnswer: 4,
    ),
    QuestionModel(
      question:
          "Nisbat qo'shimchasi vositasida o'timsiz fe'lga aylanishi mumkin bo'lgan o'timli fe’llar berilgan qatomi aniqlang.",
      answer1: OptionModel(title: "yuvmoq, yayramoq "),
      answer2: OptionModel(title: 'kiymoq, taramoq'),
      answer3: OptionModel(title: "quvonmoq, jilmaymoq"),
      answer4: OptionModel(title: "qochmoq, yonmoq"),
      trueAnswer: 2,
    ),
  ];

  static final questions_three = [
    QuestionModel(
      question: "Tenglamani yeching: -2x + 3 = 3x + 8",
      answer1: OptionModel(title: "1"),
      answer2: OptionModel(title: "-1"),
      answer3: OptionModel(title: "0"),
      answer4: OptionModel(title: "2"),
      trueAnswer: 2,
    ),
    QuestionModel(
      question:
          "To`g`ri to`rtburchakning perimetri 74 sm ga teng. Bo`yi enidan 4 sm uzun. Shu to`g`ri to`rtburchakning bo`yi va enini toping.",
      answer1: OptionModel(title: "20 sm; 17,6 sm"),
      answer2: OptionModel(title: '27 sm; 18,4 sm'),
      answer3: OptionModel(title: "20,5; 16,5"),
      answer4: OptionModel(title: "19 sm; 20,4 sm"),
      trueAnswer: 3,
    ),
    QuestionModel(
      question:
          "Proporsiyaning noma’lum hadini toping: 7,5 : X = 15 : 6",
      answer1: OptionModel(title: "3"),
      answer2: OptionModel(title: '2.5'),
      answer3: OptionModel(title: "6"),
      answer4: OptionModel(title: "4.5"),
      trueAnswer: 1,
    ),
    QuestionModel(
      question: "Hisoblang: (-15) ∙ (-17) + (-23) ∙ 13",
      answer1: OptionModel(title: "-42"),
      answer2: OptionModel(title: "3016"),
      answer3: OptionModel(title: "-7800"),
      answer4: OptionModel(title: '-44'),
      trueAnswer: 4,
    ),
    QuestionModel(
      question:
          "Hisoblang: (-7) + ( -32)",
      answer1: OptionModel(title: "25"),
      answer2: OptionModel(title: '-39'),
      answer3: OptionModel(title: "-25"),
      answer4: OptionModel(title: "39"),
      trueAnswer: 2,
    ),
  ];
}
