import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/color.dart';
import 'package:flutter_blog/_core/constants/font.dart';
import 'package:flutter_blog/_core/constants/move.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/ui/pages/auth/join_page/widgets/join_form.dart';
import 'package:flutter_blog/ui/widgets/custom_elavated_button.dart';
import 'package:flutter_blog/ui/widgets/custom_logo.dart';
import 'package:flutter_blog/ui/widgets/custom_text_button.dart';

class JoinBody extends StatelessWidget {
  const JoinBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          elevation: 0.1,
          automaticallyImplyLeading: false,
          backgroundColor: basicColorW,
          leading: IconButton(
            icon: Icon(Icons.close, size: 26, color: basicColorB5),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          titleSpacing: 0,
          centerTitle: true,
          title: Text(
            "회원가입",
            style: subTitle(),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: smallGap),
                  JoinForm(),
                  SizedBox(height: smallGap),
                  CustomTextButton(
                    "가입하기",
                    () {
                      Navigator.pushNamed(context, Move.joinPage);
                    },
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
