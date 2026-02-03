import 'package:flutter/material.dart';

import 'home_item_picdeliver.dart';

class HomeMenuCard extends StatelessWidget {
  const HomeMenuCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 20,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        // color: theme.colorScheme.primary,
        borderRadius: .circular(10),
        border: Border.all(
          color: theme.colorScheme.secondary,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Spacer(),
              HomeItemPickdeliv(
                assets: 'assets/coffee-shop.png',
              ),
              Spacer(),
              SizedBox(
                height: 50,
                child: VerticalDivider(
                  color: theme.colorScheme.secondary,
                  width: 10,
                  thickness: 2,
                ),
              ),
              Spacer(),
              HomeItemPickdeliv(
                assets: 'assets/delivery-man.png',
                text: 'Delivery',
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 25),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     HomeItem(
          //       label: 'Free Coffee',
          //       asset: 'assets/coffee.png',
          //       isNew: true,
          //     ),
          //     HomeItem(
          //       label: 'Mission',
          //       asset: 'assets/paper-clip.png',
          //     ),
          //     HomeItem(
          //       label: 'Member Promo',
          //       asset: 'assets/membership.png',
          //     ),
          //     HomeItem(
          //       label: 'Voucher Pack',
          //       asset: 'assets/vouchers.png',
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
