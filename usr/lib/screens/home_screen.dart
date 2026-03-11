import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import 'challenge_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'beginner':
        return Colors.green;
      case 'intermediate':
        return Colors.orange;
      case 'advanced':
        return Colors.redAccent;
      default:
        return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Python Challenges'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: pythonChallenges.length,
        itemBuilder: (context, index) {
          final challenge = pythonChallenges[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Colors.white.withOpacity(0.1)),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              leading: CircleAvatar(
                backgroundColor: _getDifficultyColor(challenge.difficulty).withOpacity(0.2),
                child: Icon(
                  Icons.code,
                  color: _getDifficultyColor(challenge.difficulty),
                ),
              ),
              title: Text(
                challenge.title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Difficulty: ${challenge.difficulty}',
                  style: TextStyle(
                    color: _getDifficultyColor(challenge.difficulty),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChallengeScreen(challenge: challenge),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
