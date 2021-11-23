import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../api/extension.dart';
import '../models/comment_model.dart';
import 'user_profile.dart';

class CommentBubbble extends StatelessWidget {
  final CommentModel comment;
  const CommentBubbble({
    Key? key,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: UserProfile(
          size: 50,
          url: comment.avatarUrl,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        title: Text(
          comment.name,
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20),
        ),
        subtitle: RichText(
          text:
              TextSpan(style: Theme.of(context).textTheme.bodyText1, children: [
            TextSpan(
              text: comment.comment,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TextSpan(
              text: '\n ' +
                  StringExtension.displayTimeAgoFromTimestamp(
                    comment.commentCreatedAt,
                  ),
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
            ),
          ]),
        ));
    // Container(
    //   padding: const EdgeInsets.all(16),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Row(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Flexible(
    //             child: Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 12.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     crossAxisAlignment: CrossAxisAlignment.end,
    //                     children: [
    //                       Padding(
    //                         padding:
    //                             const EdgeInsets.symmetric(horizontal: 16.0),
    //                         child: Text(
    //                           "- ",
    //                           style: const TextStyle(
    //                             fontSize: 12,
    //                             color: Colors.white,
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   const SizedBox(height: 6),
    //                   Text(
    //                     comment.comment,
    //                     style: Theme.of(context).textTheme.bodyText1,
    //                   ),
    //                   const SizedBox(height: 6),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //       const SizedBox(height: 6),
    //     ],
    //   ),
    // );
  }
}
