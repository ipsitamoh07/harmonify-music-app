import 'package:flutter/material.dart';

class AllSongRow extends StatelessWidget {
  final Map<String, dynamic> sObj;
  final VoidCallback onPressed;
  final VoidCallback onPressedPlay;

  const AllSongRow({
    required this.sObj,
    required this.onPressed,
    required this.onPressedPlay,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Extracting values with null safety
    String title = sObj['title'] ?? 'Unknown Title';
    String description = sObj['description'] ?? 'No description available';
    String imageUrl = sObj['image'] != null && sObj['image'].isNotEmpty
        ? sObj['image'][0]['url']
        : 'https://via.placeholder.com/50';

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          // Leading Image
          SizedBox(
            width: 50,
            height: 50,
            child: Image.network(imageUrl, fit: BoxFit.cover),
          ),
          const SizedBox(width: 16),
          // Title and Description
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
          // Play Button
          IconButton(
            icon: const Icon(Icons.play_arrow),
            onPressed: onPressedPlay,
          ),
        ],
      ),
    );
  }
}
