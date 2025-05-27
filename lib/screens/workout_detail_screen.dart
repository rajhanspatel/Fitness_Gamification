import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'trainer.dart'; // Ensure this import is correct for your Workout model

class WorkoutDetailScreen extends StatelessWidget {
  final Workout workout;

  const WorkoutDetailScreen({Key? key, required this.workout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(workout.name),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Summary Section
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _buildSummaryRow(Icons.timer, 'Duration', _extractDetail("🕒", workout.details)),
                    SizedBox(height: 8),
                    _buildSummaryRow(Icons.local_fire_department, 'Calories', _extractDetail("🔥", workout.details)),
                    SizedBox(height: 8),
                    _buildSummaryRow(Icons.accessibility_new, 'Focus Area', _extractDetail("🦵", workout.details)),
                    SizedBox(height: 8),
                    _buildSummaryRow(Icons.favorite, 'Benefits', _extractDetail("❤️", workout.details)),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // 🔹 Video Section
            Text(
              'Watch Tutorial',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () => _launchVideo(context, workout.videoUrl),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://img.youtube.com/vi/${_getYouTubeId(workout.videoUrl)}/0.jpg',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Container(
                          height: 200,
                          color: Colors.grey[200],
                          child: Center(child: CircularProgressIndicator()),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey[200],
                        child: Icon(Icons.error, color: Colors.red),
                      ),
                    ),
                  ),
                  Icon(Icons.play_circle_filled, size: 64, color: Colors.white.withOpacity(0.9)),
                ],
              ),
            ),

            SizedBox(height: 24),

            // 🔹 Full Details Section
            Text(
              'Workout Guide',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
            ),
            SizedBox(height: 12),
            Text(
              workout.details,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Methods
  Widget _buildSummaryRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(width: 10),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black87, fontSize: 15),
              children: [
                TextSpan(text: '$label: ', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: value),
              ],
            ),
          ),
        ),
      ],
    );
  }

  String _extractDetail(String prefix, String details) {
    final lines = details.split('\n');
    final match = lines.firstWhere(
          (line) => line.trim().startsWith(prefix),
      orElse: () => '',
    );
    return match.replaceFirst(prefix, '').trim();
  }

  String _getYouTubeId(String url) {
    try {
      final uri = Uri.parse(url);
      if (uri.host.contains('youtu.be')) {
        return uri.pathSegments.first;
      } else if (uri.host.contains('youtube.com')) {
        return uri.queryParameters['v'] ?? '';
      }
      return '';
    } catch (e) {
      return '';
    }
  }

  Future<void> _launchVideo(BuildContext context, String url) async {
    final videoId = _getYouTubeId(url);
    if (videoId.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid YouTube URL')),
      );
      return;
    }

    // Try opening YouTube app first
    final youtubeAppUri = Uri.parse('vnd.youtube://$videoId');
    final webUrl = Uri.parse('https://www.youtube.com/watch?v=$videoId');

    try {
      if (await canLaunchUrl(youtubeAppUri)) {
        await launchUrl(youtubeAppUri, mode: LaunchMode.externalApplication);
      } else if (await canLaunchUrl(webUrl)) {
        await launchUrl(webUrl, mode: LaunchMode.externalApplication);
      } else {
        throw 'Could not launch YouTube';
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }
}