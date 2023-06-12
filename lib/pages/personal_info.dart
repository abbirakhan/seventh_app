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
   final items = [
    const DropdownMenuItem(value: "Islamabad", child: Text("ISB")),
    const DropdownMenuItem(value: "Rawalpindi", child: Text("RwP")),
    const DropdownMenuItem(value: "karachi", child: Text("kar"))
  ];
  String? dropdownButttonValue;

  final gender=[const  DropdownMenuItem(value: "Fe", child: Text("Female")),
    const DropdownMenuItem(value: "Ma", child: Text("Male")),];
    String? dropdownButtton;

 ///String?gender;
 //Gender? _defaultGender = Gender.male;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
         child:Column(
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
                      height: 10.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          //prefixIcon: const Icon(Icons.person),
                          prefixIcon: const Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(
                              Icons.person,
                              color: Color(0xff444444),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(16.h),
                          fillColor: const Color(0xffF1F1F1),
                          filled: true,
                          hintText: "Name",
                          hintStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Red Hat Display",
                            color: const Color(0xff444444),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(
                                color: Color(0xffF5F6FA),
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: const Color.fromARGB(255, 249, 251, 253)
                                .withOpacity(0),
                          )),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff6DA9E4),
                          ))),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          // prefixIcon: const Icon(Icons.person),
                          prefixIcon: const Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(
                              Icons.person,
                              color: Color(0xff444444),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(16.h),
                          fillColor: const Color(0xffF1F1F1),
                          filled: true,
                          hintText:"Full Name",
                          hintStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Red Hat Display",
                            color: const Color(0xff444444),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(
                                color: Color(0xffF5F6FA),
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: const Color.fromARGB(255, 249, 251, 253)
                                .withOpacity(0),
                          )),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff6DA9E4),
                          ))),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(
                              Icons.fingerprint,
                              color: Color(0xff444444),
                            ),
                          ),
                          //  iconColor: Colors.amber,

                          contentPadding: EdgeInsets.all(16.h),
                          fillColor: const Color(0xffF1F1F1),
                          filled: true,
                          hintText: "13302-1728416212-1",
                          hintStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Red Hat Display",
                            color: const Color(0xff444444),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(
                                color: Color(0xffF5F6FA),
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: const Color.fromARGB(255, 249, 251, 253)
                                .withOpacity(0),
                          )),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff6DA9E4),
                          ))),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    // TextField(
                    //   decoration: InputDecoration(
                    //       //prefixIcon: const Icon(Icons.person),
                    //       prefixIcon: const Align(
                    //         widthFactor: 1.0,
                    //         heightFactor: 1.0,
                    //         child: Icon(
                    //           Icons.person,
                    //           color: Color(0xff444444),
                    //         ),
                    //       ),
                    //       contentPadding: EdgeInsets.all(16.h),
                    //       fillColor: const Color(0xffF1F1F1),
                    //       filled: true,
                    //       hintText: "Gender",
                    //       hintStyle: TextStyle(
                    //         fontSize: 18.sp,
                    //         fontWeight: FontWeight.w400,
                    //         fontFamily: "Red Hat Display",
                    //         color: const Color(0xff444444),
                    //       ),
                    //       border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    //           borderSide: const BorderSide(
                    //             color: Color(0xffF5F6FA),
                    //           )),
                    //       enabledBorder: OutlineInputBorder(
                    //           borderSide: BorderSide(
                    //         color: const Color.fromARGB(255, 249, 251, 253)
                    //             .withOpacity(0),
                    //       )),
                    //       focusedBorder: const OutlineInputBorder(
                    //           borderSide: BorderSide(
                    //         color: Color(0xff6DA9E4),
                    //       ))),
                    // ),//    SizedBox(
                    //   height: 20.h,
                    // ),
                  DropdownButtonFormField<String>(
                      value: dropdownButtton,
                      items: gender,
                      onChanged: (value) {
                        setState(() {
                          dropdownButtton = value;
                          print("object $dropdownButttonValue");
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return "choose your gender";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.location_city),
                          contentPadding: EdgeInsets.all(16),
                          fillColor: Color(0xffF1F1F1),
                          filled: true,
                          hintText: 'Choose your gender',
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
                    SizedBox(
                      height: 20.h,
                    ),
                    DropdownButtonFormField<String>(
                      value: dropdownButttonValue,
                      items: items,
                      onChanged: (value) {
                        setState(() {
                          dropdownButttonValue = value;
                          print("object $dropdownButttonValue");
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return "choose your city";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.location_city),
                          contentPadding: EdgeInsets.all(16),
                          fillColor: Color(0xffF1F1F1),
                          filled: true,
                          hintText: 'Choose your city',
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
                    SizedBox(
                      height: 20.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          //     prefixIcon: const Icon(Icons.person),
                          prefixIcon: const Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(
                              Icons.person,
                              color: Color(0xff444444),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(16.h),
                          fillColor: const Color(0xffF1F1F1),
                          filled: true,
                          hintText: "Father’s Name",
                          hintStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Red Hat Display",
                            color: const Color(0xff444444),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(
                                color: Color(0xffF5F6FA),
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: const Color.fromARGB(255, 249, 251, 253)
                                .withOpacity(0),
                          )),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff6DA9E4),
                          ))),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          //   prefixIcon: const Icon(Icons.person),
                          prefixIcon: const Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(
                              Icons.work,
                              color: Color(0xff444444),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(16.h),
                          fillColor: const Color(0xffF1F1F1),
                          filled: true,
                          hintText: "Father’s  Occupation",
                          hintStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Red Hat Display",
                            color: const Color(0xff444444),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(
                                color: Color(0xffF5F6FA),
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: const Color.fromARGB(255, 249, 251, 253)
                                .withOpacity(0),
                          )),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff6DA9E4),
                          ))),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          //    prefixIcon: const Icon(Icons.person),
                          prefixIcon: const Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(
                              Icons.date_range,
                              color: Color(0xff444444),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(16.h),
                          fillColor: const Color(0xffF1F1F1),
                          filled: true,
                          hintText: "Date of Birth",
                          hintStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Red Hat Display",
                            color: const Color(0xff444444),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.r)),
                              borderSide: const BorderSide(
                                color: Color(0xffF5F6FA),
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: const Color.fromARGB(255, 249, 251, 253)
                                .withOpacity(0),
                          )),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff6DA9E4),
                          ))),
                    ),
                   // SizedBox(height: 20.h),
//CheckboxListTile(value: true, onChanged:(minoritycheck))
          //    Column(children: [RadioListTile(title: Text('male'),value: "male", groupValue: gender,onChanged: (value){
          //   setState(() {
          //       gender = value.toString();
          //   });
          // },),
          // RadioListTile(title: Text('Female'),value: "Female", groupValue: gender,onChanged: (value){
          //   setState(() {
          //       gender = value.toString();
          //   });
          // },),
          // RadioListTile(title: Text('other'),value: "other", groupValue: gender,onChanged: (value){
          //   setState(() {
          //       gender = value.toString();
          //   });
          // },),
          // ],),
           //SizedBox(height: 20.h),
           
          // Row(
          //           children: [
          //             Radio<Gender>(
          //               // title: const Text('Male'),
          //               value: Gender.male,
          //               groupValue: _defaultGender,
          //               onChanged: (genderValue) {
          //                 setState(() {
          //                   _defaultGender = genderValue;
          //                 });
          //               },
          //             ),
          //             Text('Male'),
          //             Radio<Gender>(
          //               // title: const Text('Female'),
          //               value: Gender.female,
          //               groupValue: _defaultGender,
          //               onChanged: (genderValue) {
          //                 setState(() {
          //                   _defaultGender = genderValue;
          //                 });
          //               },
          //             ),
          //             Text('Female'),
          //             Radio<Gender>(
          //               // title: const Text('Other'),
          //               value: Gender.other,
          //               groupValue: _defaultGender,
          //               onChanged: (genderValue) {
          //                 setState(() {
          //                   _defaultGender = genderValue;
          //                 });
          //               },
          //             ),
          //             Text('Other')
          //           ],
          //         ),
          //        SizedBox(height: 20.h),
          //       SizedBox(
          //         width: double.maxFinite,
          //         child: TextButton(
          //           style: TextButton.styleFrom(
          //             backgroundColor: const Color(0xff8B010B),
          //             padding: EdgeInsets.symmetric(vertical: 16.h),
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(10.r),
          //             ),
          //           ),
          //           onPressed: () {
          //             bool isValid = _formKey.currentState!.validate();
          //             if (!isValid) {
          //               return;
          //             }
          //             print('object form is ok');
          //           },
          //           child: Text(
          //             'Create Account',
          //             style: TextStyle(
          //               color: const Color(0xffFFFFFF),
          //               fontSize: 16.sp,
          //               fontWeight: FontWeight.w600,
          //             ),
          //           ),
          //         ),
          //      )
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
