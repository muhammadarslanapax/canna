import 'package:canna/app/core/const/resource.dart';
import 'package:canna/app/core/utils/colors.dart';
import 'package:canna/app/core/utils/style.dart';
import 'package:canna/app/core/widget/customfield.dart';
import 'package:canna/app/modules/auth/signup/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:language_picker/language_picker_dialog.dart';
import 'package:language_picker/languages.dart';

class SignupWithBudTenderView extends GetView<SignupController> with Style {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: defaultPadding,
          decoration: BoxDecoration(gradient: AppColors.bgGradient),
          width: Get.width,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => Theme(
                          data: Theme.of(context).copyWith(
                              dialogBackgroundColor:
                                  AppColors.black.withOpacity(0.5),
                              primaryColor: AppColors.green),
                          child: LanguagePickerDialog(
                              languages: controller.languageList,
                              onValuePicked: (Language language) {
                                controller.selectedDialogLanguage.value =
                                    language;
                                print(language.name);
                              },
                              itemBuilder: _buildDialogItem)),
                    );
                  },
                  child: SvgPicture.asset(
                    R.ASSETS_IMAGES_LANGUAGE_SVG,
                    width: 17,
                    height: 21,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              spacerh(Get.height * 0.025),
              Text(
                "Create Your Budtender",
                style: largeStyle.copyWith(
                    fontSize: 28, fontWeight: FontWeight.w700),
              ),
              spacerh(Get.height * 0.025),
              InkWell(
                onTap: () {},
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: Get.width * 0.3,
                  height: Get.width * 0.3,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffEC5858)),
                      shape: BoxShape.circle,
                      color: Color(0xffD72825)),
                  child: Center(
                      child: Image.asset(
                    "assets/images/profile.png",
                    width: 65,
                    height: 65,
                    fit: BoxFit.fill,
                  )),
                ),
              ),
              spacerh(Get.height * 0.025),
              Text(
                "Upload Your Photo",
                style: normalStyle,
              ),
              spacerh(Get.height * 0.025),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Budtender info",
                  style: smallStyle,
                ),
              ),
              spacerh(Get.height * 0.02),
              CustomField(
                validator: (v) {
                  return v!.isEmpty ? "" : null;
                },
                controller: controller.aboutContrller.value,
                hinttext: "About budtender",
              ),
              spacerh(Get.height * 0.02),
              Text(
                "Do you have a Cannabis License To Sell Cannabis Legally",
                style: defaultStyle,
                maxLines: 3,
              ),
              Obx(() => RadioListTile(
                  activeColor: AppColors.red,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  isThreeLine: false,
                  dense: true,
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    "Yes",
                    style: smallStyle.copyWith(
                        color: AppColors.white.withOpacity(0.5)),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: 1,
                  groupValue: controller.licenceValue.value,
                  onChanged: (val) {
                    controller.licenceValue.value = val!;
                  })),
              Obx(() => RadioListTile(
                  activeColor: AppColors.red,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  isThreeLine: false,
                  dense: true,
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    "No",
                    style: smallStyle.copyWith(
                        color: AppColors.white.withOpacity(0.5)),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: 2,
                  groupValue: controller.licenceValue.value,
                  onChanged: (val) {
                    controller.licenceValue.value = val!;
                  })),
              spacerh(Get.height * 0.02),
              Text(
                "Which Province Did You Get Your Cannabis License/Certificate",
                style: defaultStyle,
                maxLines: 3,
              ),
              spacerh(Get.height * 0.01),
              SelectableTextWithCheckbox(
                text: 'Manitoba (SmartChoice License)',
              ),
              SelectableTextWithCheckbox(
                text: 'Saskatchewan (CannaSell License)',
              ),
              SelectableTextWithCheckbox(
                text: 'Alberta (Cannabis Retail License)',
              ),
              SelectableTextWithCheckbox(
                text: 'British Columbia (Cannabis Retail Store License)',
              ),
              SelectableTextWithCheckbox(
                text: 'Ontario (CannSell Certificate)',
              ),
              SelectableTextWithCheckbox(
                text: 'Quebec (SQDC License)',
              ),
              SelectableTextWithCheckbox(
                text: 'Newfoundland (NL Certificate)',
              ),
              SelectableTextWithCheckbox(
                text: 'Prince Edward Island (PEICMC License)',
              ),
              SelectableTextWithCheckbox(
                text: 'Nova Scotia (NSLC License/Certificate)',
              ),
              SelectableTextWithCheckbox(
                text:
                    'Yukon (Approved License from the Cannabis Licensing Board)',
              ),
              SelectableTextWithCheckbox(
                text:
                    'North West Territories (Approved License from the NTLCC)',
              ),
              SelectableTextWithCheckbox(
                text: 'Nunavut (Nunavut Cannabis Retail License)',
              ),
              spacerh(Get.height * 0.03),
              Text(
                "Do Have A Cannabislicense To Sell Cannabis Legally.",
                style: defaultStyle,
                maxLines: 3,
              ),
              spacerh(Get.height * 0.005),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _buildDialogItem(Language language) => Row(
        children: <Widget>[
          Text(
            language.name,
            style: TextStyle(color: AppColors.white),
          ),
          const SizedBox(width: 8.0),
          Flexible(
              child: Text(
            "(${language.isoCode})",
            style: TextStyle(color: AppColors.white),
          ))
        ],
      );

  Color getColor(Set<MaterialState> states) {
    return Colors.white;
  }
}

class SelectableTextWithCheckbox extends StatefulWidget {
  final String text;
  final ValueChanged<bool>? onChanged;

  const SelectableTextWithCheckbox({
    Key? key,
    required this.text,
    this.onChanged,
  }) : super(key: key);

  @override
  _SelectableTextWithCheckboxState createState() =>
      _SelectableTextWithCheckboxState();
}

class _SelectableTextWithCheckboxState extends State<SelectableTextWithCheckbox>
    with Style {
  bool isSelected = false;

  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
      if (widget.onChanged != null) {
        widget.onChanged!(isSelected);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleSelection,
      child: Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Checkbox(
              side: const BorderSide(color: AppColors.white),
              activeColor: AppColors.white,
              checkColor: AppColors.green,
              value: isSelected,
              onChanged: (bool? value) {
                setState(() {
                  isSelected = value ?? false;
                  if (widget.onChanged != null) {
                    widget.onChanged!(isSelected);
                  }
                });
              },
            ),
          ),
          Expanded(
              child: Text(
            widget.text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style:
                defaultStyle.copyWith(color: AppColors.white.withOpacity(0.75)),
          )),
        ],
      ),
    );
  }
}
