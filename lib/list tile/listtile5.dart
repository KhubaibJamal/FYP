import 'package:flutter/material.dart';

class ListTile5 extends StatelessWidget {
  const ListTile5({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.comment,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      contentPadding: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      tileColor: const Color(0xFF337357),
      leading: SizedBox(
        width: 50,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://media.istockphoto.com/id/610842118/photo/when-my-hair-looks-good-i-feel-good.jpg?s=612x612&w=0&k=20&c=PJ3LXzLptLQWT54xJdj9yhayRqLhS9FWHg6md_S7tUU=',
                ),
              ),
            ),
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      subtitle: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                comment,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          LikeButton(
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({
    Key? key,
    required this.onPressed,
    required this.color,
  }) : super(key: key);
  final Function onPressed;
  final Color color;
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
        color: widget.color,
      ),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
        widget.onPressed();
      },
    );
  }
}
