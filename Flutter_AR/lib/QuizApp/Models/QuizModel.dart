import 'package:flutter/material.dart';

// Uncomment and adjust the import below if your Quiz class is defined elsewhere
// import '../../../../data/models/quiz_model.dart';

// Define the Quiz model if not already defined elsewhere
class Quiz {
  final int id;
  final String question;
  final List<String> opt;
  final int answerIndex;

  Quiz({
    required this.id,
    required this.question,
    required this.opt,
    required this.answerIndex,
  });
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Quiz> quizData = [
    Quiz(
      id: 1,
      question: 'What is the capital of India?',
      opt: ['New Delhi', 'Mumbai', 'Kolkata', 'Chennai'],
      answerIndex: 0,
    ),
    Quiz(
      id: 2,
      question: 'Which planet is known as the Red Planet?',
      opt: ['Venus', 'Mars', 'Jupiter', 'Saturn'],
      answerIndex: 1,
    ),
    Quiz(
      id: 3,
      question: 'Who wrote the Indian National Anthem?',
      opt: [
        'Rabindranath Tagore',
        'Bankim Chandra Chatterjee',
        'Sarojini Naidu',
        'Mahatma Gandhi',
      ],
      answerIndex: 0,
    ),
    Quiz(
      id: 4,
      question: 'Which is the largest ocean on Earth?',
      opt: ['Atlantic Ocean', 'Indian Ocean', 'Pacific Ocean', 'Arctic Ocean'],
      answerIndex: 2,
    ),
    Quiz(
      id: 5,
      question: 'What is the chemical symbol of Water?',
      opt: ['O2', 'CO2', 'H2O', 'NaCl'],
      answerIndex: 2,
    ),
    Quiz(
      id: 6,
      question: 'Which animal is known as the Ship of the Desert?',
      opt: ['Camel', 'Horse', 'Elephant', 'Donkey'],
      answerIndex: 0,
    ),
    Quiz(
      id: 7,
      question: 'Who is known as the Father of the Nation in India?',
      opt: [
        'Mahatma Gandhi',
        'Jawaharlal Nehru',
        'Sardar Patel',
        'Subhash Chandra Bose',
      ],
      answerIndex: 0,
    ),
    Quiz(
      id: 8,
      question: 'Which gas is essential for breathing?',
      opt: ['Carbon Dioxide', 'Oxygen', 'Nitrogen', 'Helium'],
      answerIndex: 1,
    ),
    Quiz(
      id: 9,
      question: 'Which festival is called the Festival of Lights?',
      opt: ['Holi', 'Diwali', 'Eid', 'Christmas'],
      answerIndex: 1,
    ),
    Quiz(
      id: 10,
      question: 'How many players are there in a cricket team?',
      opt: ['9', '10', '11', '12'],
      answerIndex: 2,
    ),
    Quiz(
      id: 11,
      question: 'Which organ pumps blood through the body?',
      opt: ['Lungs', 'Heart', 'Liver', 'Kidney'],
      answerIndex: 1,
    ),
    Quiz(
      id: 12,
      question: 'Which is the smallest continent?',
      opt: ['Europe', 'Australia', 'Asia', 'Africa'],
      answerIndex: 1,
    ),
    Quiz(
      id: 13,
      question: 'Who invented the light bulb?',
      opt: ['Thomas Edison', 'Albert Einstein', 'Nikola Tesla', 'Isaac Newton'],
      answerIndex: 0,
    ),
    Quiz(
      id: 14,
      question: 'Which is the national fruit of India?',
      opt: ['Banana', 'Mango', 'Apple', 'Orange'],
      answerIndex: 1,
    ),
    Quiz(
      id: 15,
      question: 'What is the currency of Japan?',
      opt: ['Dollar', 'Yen', 'Euro', 'Won'],
      answerIndex: 1,
    ),
    Quiz(
      id: 16,
      question: 'Which instrument is used to measure temperature?',
      opt: ['Barometer', 'Thermometer', 'Hygrometer', 'Speedometer'],
      answerIndex: 1,
    ),
    Quiz(
      id: 17,
      question: 'Which planet is closest to the Sun?',
      opt: ['Venus', 'Mercury', 'Mars', 'Earth'],
      answerIndex: 1,
    ),
    Quiz(
      id: 18,
      question: 'What is the national flower of India?',
      opt: ['Lotus', 'Rose', 'Jasmine', 'Sunflower'],
      answerIndex: 0,
    ),
    Quiz(
      id: 19,
      question:
          'Which vitamin is produced when our skin is exposed to sunlight?',
      opt: ['Vitamin A', 'Vitamin C', 'Vitamin D', 'Vitamin B12'],
      answerIndex: 2,
    ),
    Quiz(
      id: 20,
      question: 'Who was the first President of India?',
      opt: [
        'Dr. Rajendra Prasad',
        'Dr. S. Radhakrishnan',
        'Indira Gandhi',
        'Jawaharlal Nehru',
      ],
      answerIndex: 0,
    ),
  ];

  int currQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final quiz = quizData[currQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${currQuestionIndex + 1}/${quizData.length}"),
            const Text("5"), // maybe you want to show score later
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              quiz.question,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            for (int i = 0; i < quiz.opt.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26, width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    quiz.opt[i],
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: currQuestionIndex == 0
                      ? null
                      : () {
                          setState(() {
                            currQuestionIndex--;
                          });
                        },
                  child: const Text('Prev'),
                ),
                ElevatedButton(
                  onPressed: currQuestionIndex == quizData.length - 1
                      ? null
                      : () {
                          setState(() {
                            currQuestionIndex++;
                          });
                        },
                  child: const Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
