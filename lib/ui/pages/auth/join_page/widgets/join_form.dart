import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/color.dart';
import 'package:flutter_blog/_core/constants/font.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/_core/utils/validator_util.dart';
import 'package:flutter_blog/data/dto/user_request.dart';
import 'package:flutter_blog/data/model/pram_store.dart';
import 'package:flutter_blog/data/store/session_store.dart';
import 'package:flutter_blog/ui/components/checkbox_item.dart';
import 'package:flutter_blog/ui/components/radio_button.dart';
import 'package:flutter_blog/ui/pages/auth/join_page/widgets/join_birth_text_form.dart';
import 'package:flutter_blog/ui/pages/auth/join_page/widgets/join_rich_text_item.dart';
import 'package:flutter_blog/ui/widgets/custom_join_text_form_field.dart';
import 'package:flutter_blog/ui/widgets/custom_elavated_button.dart';
import 'package:flutter_check_box_rounded/flutter_check_box_rounded.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class JoinForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  JoinForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomJoinTextFormField(
            text: "아이디",
            strong: " *",
            placeholderText: "아이디를 입력해주세요",
            obscureText: false,
            funValidator: validateUsername(),
            controller: _username,
          ),
          const SizedBox(height: mediumGap),
          CustomJoinTextFormField(
            text: "비밀번호",
            strong: " *",
            placeholderText: "비밀번호를 입력해주세요",
            obscureText: false,
            funValidator: validateEmail(),
            controller: _email,
          ),
          const SizedBox(height: mediumGap),
          CustomJoinTextFormField(
            text: "비밀번호 확인",
            strong: " *",
            placeholderText: "비밀번호를 한번 더 입력해주세요",
            obscureText: true,
            funValidator: validatePassword(),
            controller: _password,
          ),
          const SizedBox(height: mediumGap),
          CustomJoinTextFormField(
            text: "이름",
            strong: " *",
            placeholderText: "이름을 입력해주세요",
            obscureText: true,
            funValidator: validatePassword(),
            controller: _password,
          ),
          const SizedBox(height: mediumGap),
          CustomJoinTextFormField(
            text: "이메일",
            strong: " *",
            placeholderText: "예) marketkurly@kurly.com",
            obscureText: true,
            funValidator: validatePassword(),
            controller: _password,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: 100,
                  child: JoinBirthTextForm(
                    labelText: "x",
                    controller: _password,
                  ),
                ),
                Container(
                  width: 100,
                  child: JoinBirthTextForm(
                    labelText: "x",
                    controller: _password,
                  ),
                ),
                Container(
                  width: 100,
                  child: JoinBirthTextForm(
                    labelText: "x",
                    controller: _password,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: mediumGap),
          RadioButton(),
          const SizedBox(height: mediumGap),
          Container(
            height: 10, // 선의 높이를 조절하여 선의 두께를 설정
            color: bgAndLineColor, // 선의 색상 설정
          ),
          const SizedBox(height: mediumGap),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              JoinRichTextItem(
                text: "이용약관동의",
                strong: "*",
              ),
              SizedBox(
                height: mediumGap,
              ),
              CheckBoxItem(
                text: "전체 동의합니다",
              ),
              SizedBox(
                height: smallGap,
              ),
              Text(
                "선택 항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.",
                style: subContents(),
              ),
              SizedBox(
                height: smallGap,
              ),
              CheckBoxItem(
                text: "이용 약관 동의",
                iconSize: 20,
              ),
              SizedBox(
                height: xsmallGap,
              ),
              CheckBoxItem(
                text: "개인정보 수집·이용 동의",
                iconSize: 20,
              ),
              SizedBox(
                height: mediumGap,
              )
            ],
          ),
        ],
      ),
    );
  }
}
