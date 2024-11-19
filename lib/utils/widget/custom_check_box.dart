import 'package:flutter/material.dart';

import '../../constrants/app_color.dart';

class CustomCheckBox extends StatelessWidget {
  final bool isSelect;
  final String text;
  final GestureTapCallback? onTap;
  const CustomCheckBox({
    super.key,
    this.isSelect = false,
    this.text = '',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            isSelect ? Icons.check_box_outlined : Icons.check_box_outline_blank,
            size: 25,
            color: isSelect == true ? AppColor.primaryColor : null,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: isSelect ? AppColor.primaryColor : null,
                    overflow: TextOverflow.ellipsis,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
