import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({ Key? key,
    required this.index
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                //left side

              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black.withOpacity(0.7),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.volume_off, color:Colors.white))),

                //right side

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://www.themoviedb.org/t/p/w440_and_h660_face/g18jnJuhIujMYErHqeG5t8U5F9X.jpg'),),
                    ),
                    VideoActionsWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActionsWidget(icon: Icons.add, title: 'My List'),
                    VideoActionsWidget(icon: Icons.share, title: 'Share'),
                    VideoActionsWidget(icon: Icons.play_arrow, title: 'Play'),
                    
                  ],
                ),
            
            ],),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget({ Key? key,
    required this.icon,
    required this.title,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical : 10.0, horizontal: 8),
      child: Column(
        children: [
          Icon(icon, color: Colors.white,size:30),
          Text(title, style: TextStyle(color: kWhiteColor, fontSize: 16))
        ]
      ),
    );
  }
}