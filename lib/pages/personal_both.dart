import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const PersonalInfo());

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

//enum Gender {male, female, other}
class _PersonalInfoState extends State<PersonalInfo> {
  final district = [
    const DropdownMenuItem(value: "england", child: Text("England")),
    const DropdownMenuItem(value: "china", child: Text("china")),
    const DropdownMenuItem(
      value: "pakistan ",
      child: Text("pakistan"),
    ),
    const DropdownMenuItem(
      value: "south korea",
      child: Text("south korea"),
    ),
    const DropdownMenuItem(
      value: "Austrila",
      child: Text("Austrila"),
    )
  ];
  String? dropdownButtton;
  bool? check1 = false, check2 = true, check3 = false;

// String?gender;
// Gender? _defaultGender = Gender.male;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/topRight.png'),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Personal Information",
                      style: TextStyle(
                        fontSize: 32.sp,
                        fontFamily: "Red Hat Display",
                        color: const Color(0xff8B010B),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 55,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(4.r)),
                        child: CheckboxListTile(
                          //checkbox positioned at right

                          value: check2,
                          onChanged: (bool? value) {
                            setState(() {
                              check2 = value;
                            });
                          },
                          title: Text("Disability"),
                          secondary: const Icon(
                            Icons.accessible_rounded,
                            // color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    DropdownButtonFormField<String>(
                      value: dropdownButtton,
                      items: district,
                      onChanged: (value) {
                        setState(() {
                          dropdownButtton = value;
                          print("object $dropdownButtton");
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return "choose your Domicile Distt";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.contact_page_rounded),
                          contentPadding: EdgeInsets.all(16),
                          fillColor: Color(0xffF1F1F1),
                          filled: true,
                          hintText: 'Other Nationality',
                          hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Red Hat Display",
                            color: Color(0xff444444),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Color(0xffF5F6FA),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 249, 251, 253),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff6DA9E4),
                          ))),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xff8B010B),
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        onPressed: () {
                          bool isValid = _formKey.currentState!.validate();
                          if (!isValid) {
                            return;
                          }
                          print('object form is ok');
                        },
                        child: Text(
                          'SAVE ',
                          style: TextStyle(
                            color: const Color(0xffFFFFFF),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
