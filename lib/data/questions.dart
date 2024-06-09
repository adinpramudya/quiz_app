import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion('Pulau Komodo terletak di provinsi',
      ['Bali', 'NTT', 'NTB', 'Jawa Timur'], 1),
  QuizQuestion('Siapa Presiden Indonesia ketiga Indonesia',
      ['BJ. Habibie', 'Joko Widodo', 'Soekarno', 'Abdurahman Wahid'], 0),
  QuizQuestion(
      'Apa singkatan dari MPR',
      [
        'Majelis Perwakilan Rakyat',
        'Majelis Permusyawaran Rakyat',
        'Majelis Perhimpunan Rakyat',
        'Majelis Perserikatan Rakyat'
      ],
      1),
  QuizQuestion('Pada tanggal berapakah Hari Lahir Pancasila diperingati',
      ['17 Agustus', '1 Maret', '1 Juni', '1 Desember'], 2),
  QuizQuestion(
      'Apa julukan terkenal dari negara Korea Selatan',
      [
        'Negeri Tirai Bambu',
        'Negeri Gingseng',
        'Zamrud Khatulistiwa',
        'Negeri Kincir Angin'
      ],
      1)
];
