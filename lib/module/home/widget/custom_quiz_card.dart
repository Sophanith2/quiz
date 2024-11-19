import 'package:ditech_crm/utils/widget/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomQuizCard extends StatelessWidget {
  final String? question;
  final Function()? onTap;
  final bool? isSelect;
  final bool? isMultipleSelect;
  const CustomQuizCard(
      {super.key,
      this.onTap,
      this.question,
      this.isSelect = false,
      this.isMultipleSelect = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 15),
        margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                spreadRadius: 0.5,
                color: Colors.black12,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question ?? '',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            isMultipleSelect == false
                ? const Column(
                    children: [
                      Gap(10),
                      CustomCheckBox(
                        isSelect: true,
                        text: 'True',
                      ),
                      Gap(10),
                      CustomCheckBox(
                        isSelect: false,
                        text: 'False',
                      ),
                    ],
                  )
                : const Column(
                    children: [
                      Gap(10),
                      CustomCheckBox(
                        isSelect: false,
                        text: '11',
                      ),
                      Gap(10),
                      CustomCheckBox(
                        isSelect: false,
                        text: '12',
                      ),
                      Gap(10),
                      CustomCheckBox(
                        isSelect: true,
                        text: '13',
                      ),
                      Gap(10),
                      CustomCheckBox(
                        isSelect: false,
                        text: '14',
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
