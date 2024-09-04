import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 0.63,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/test_image.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'The Jungle Book',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'J.K Rowling',
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.99 \$',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.solidStar,
                            size: 20,
                            color: Color(0xffffdd4f),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            '4.8',
                            style: Styles.textStyle16.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '(2465)',
                            style: Styles.textStyle14.copyWith(
                              color: const Color(0xff707070),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
