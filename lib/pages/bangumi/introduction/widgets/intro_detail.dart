import 'package:PiliPlus/pages/search/widgets/search_text.dart';
import 'package:flutter/material.dart';
import 'package:PiliPlus/common/widgets/stat/danmu.dart';
import 'package:PiliPlus/common/widgets/stat/view.dart';
import 'package:get/get.dart';

import '../../../../utils/utils.dart';

class IntroDetail extends StatelessWidget {
  final dynamic bangumiDetail;
  final dynamic videoTags;

  const IntroDetail({
    super.key,
    this.bangumiDetail,
    this.videoTags,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle smallTitle = TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.onSurface,
    );
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14),
      child: Column(
        children: [
          GestureDetector(
            onTap: Get.back,
            behavior: HitTestBehavior.opaque,
            child: Container(
              height: 35,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 2),
              child: Container(
                width: 32,
                height: 3,
                decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .onSecondaryContainer
                        .withOpacity(0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(3))),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    bangumiDetail!.title,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      statView(
                        context: context,
                        theme: 'gray',
                        view: bangumiDetail!.stat!['views'],
                        size: 'medium',
                      ),
                      const SizedBox(width: 6),
                      statDanMu(
                        context: context,
                        theme: 'gray',
                        danmu: bangumiDetail!.stat!['danmakus'],
                        size: 'medium',
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        bangumiDetail!.areas!.first['name'],
                        style: smallTitle,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        bangumiDetail!.publish!['pub_time_show'],
                        style: smallTitle,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        bangumiDetail!.newEp!['desc'],
                        style: smallTitle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '简介：',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 4),
                  SelectableText(
                    '${bangumiDetail!.evaluate!}',
                    style: smallTitle.copyWith(fontSize: 13),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '声优：',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 4),
                  SelectableText(
                    bangumiDetail.actors,
                    style: smallTitle.copyWith(fontSize: 13),
                  ),
                  if (videoTags is List && videoTags.isNotEmpty) ...[
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: (videoTags as List)
                          .map(
                            (item) => SearchText(
                              fontSize: 13,
                              text: item['tag_name'],
                              onTap: (_) => Get.toNamed('/searchResult',
                                  parameters: {'keyword': item['tag_name']}),
                              onLongPress: (_) =>
                                  Utils.copyText(item['tag_name']),
                            ),
                          )
                          .toList(),
                    )
                  ],
                  SizedBox(height: MediaQuery.of(context).padding.bottom + 20)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
