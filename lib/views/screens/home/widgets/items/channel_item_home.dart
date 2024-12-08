import 'package:flutter/material.dart';
import 'package:flutter_stream_mobile/core/models/channel_model.dart';
import 'package:flutter_stream_mobile/util/stylish/app_colors.dart';
import 'package:flutter_stream_mobile/views/widgets/image_widget.dart';
import 'package:flutter_stream_mobile/views/widgets/rounded_shape.dart';

class ChannelItemHome extends StatelessWidget {
  final ChannelModel channelModel;
  const ChannelItemHome({super.key, required this.channelModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: SizedBox(
                  height: double.infinity,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: UrlImageWidget(imageUrl: channelModel.image)),
                ),
              ),
              Positioned(
                  right: 10,
                  top: 10,
                  child: RoundedShape(
                      child: Text(
                        'Live',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.white))
            ],
          )),
    );
  }
}
