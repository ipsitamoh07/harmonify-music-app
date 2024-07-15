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

    return ListTile(
      leading: Image.network(imageUrl),
      title: Text(title),
      subtitle: Text(description),
      trailing: IconButton(
        icon: Icon(Icons.play_arrow),
        onPressed: onPressedPlay,
      ),
      onTap: onPressed,
    );
  }
}
