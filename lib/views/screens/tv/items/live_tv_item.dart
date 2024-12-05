import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/util/stylish/app_colors.dart';
import 'package:flutter_stream_mobile/views/widgets/image_widget.dart';

class LiveTvItem extends StatelessWidget {
  const LiveTvItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 150,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: UrlImageWidget(
                      imageUrl:
                          'https://image.tsports.com/images/feature_banner/1719127157-LIVE-800.jpg'))),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Tsports',
            style: Theme.of(context).textTheme.titleMedium,
          )
        ],
      ),
    );
  }
}
