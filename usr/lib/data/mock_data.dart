class Challenge {
  final String id;
  final String title;
  final String description;
  final String difficulty;
  final String solution;

  Challenge({
    required this.id,
    required this.title,
    required this.description,
    required this.difficulty,
    required this.solution,
  });
}

final List<Challenge> pythonChallenges = [
  Challenge(
    id: '1',
    title: 'Hello World',
    description: 'Write a Python program that prints "Hello, World!" to the console.',
    difficulty: 'Beginner',
    solution: 'print("Hello, World!")',
  ),
  Challenge(
    id: '2',
    title: 'Sum of Two Numbers',
    description: 'Write a function `add(a, b)` that returns the sum of two numbers.',
    difficulty: 'Beginner',
    solution: 'def add(a, b):\n    return a + b',
  ),
  Challenge(
    id: '3',
    title: 'Reverse a String',
    description: 'Write a function `reverse_string(s)` that returns the reversed version of string `s`.',
    difficulty: 'Intermediate',
    solution: 'def reverse_string(s):\n    return s[::-1]',
  ),
  Challenge(
    id: '4',
    title: 'Fibonacci Sequence',
    description: 'Write a function `fibonacci(n)` that returns the nth number in the Fibonacci sequence.',
    difficulty: 'Advanced',
    solution: 'def fibonacci(n):\n    if n <= 0:\n        return 0\n    elif n == 1:\n        return 1\n    else:\n        return fibonacci(n-1) + fibonacci(n-2)',
  ),
  Challenge(
    id: '5',
    title: 'List Comprehension',
    description: 'Create a list of squares for numbers from 1 to 10 using list comprehension.',
    difficulty: 'Intermediate',
    solution: 'squares = [x**2 for x in range(1, 11)]\nprint(squares)',
  ),
];
