import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/core/models/channel_model.dart';
import 'package:flutter_stream_mobile/util/stylish/app_colors.dart';
import 'package:flutter_stream_mobile/views/widgets/image_widget.dart';

class LiveTvItem extends StatelessWidget {
  final ChannelModel channelModel;
  const LiveTvItem({super.key, required this.channelModel});

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
                  child: UrlImageWidget(imageUrl: channelModel.image))),
          const SizedBox(
            height: 4,
          ),
          Text(
            channelModel.name,
            style: Theme.of(context).textTheme.titleMedium,
          )
        ],
      ),
    );
  }
}
