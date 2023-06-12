// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// void main() => runApp(const PersonalInfo());

// class PersonalInfo extends StatefulWidget {
//   const PersonalInfo({super.key});

//   @override
//   State<PersonalInfo> createState() => _PersonalInfoState();
// }
// //enum Gender {male, female, other}
// class _PersonalInfoState extends State<PersonalInfo> {
//    final district = [
//     const DropdownMenuItem(value: "punjab", child: Text("punjab")),
//     const DropdownMenuItem(value: "Sindh", child: Text("Sindh")),
//     const DropdownMenuItem(value: "Balochistan ", child: Text("Balochistan "),
//     ),
//      const DropdownMenuItem(value: "Gilgit Baltistan", child: Text("Gilgit Baltistan"),
//     ), const DropdownMenuItem(value: "Khyber Pakhtunkhwa", child: Text("Khyber Pakhtunkhwa"),
//     )
//   ];
//   String? dropdownButtton;
//  bool? check1 = false, check2 = true, check3 = false;
  

// // String?gender;
// // Gender? _defaultGender = Gender.male;

//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: SafeArea(
//             child: Column(
//               children: [
//                 Row(mainAxisAlignment: MainAxisAlignment.end,children: [
//                   Image.asset('assets/images/topRight.png')
//                 ],),
                
//                 Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20.w),
//           child: Form(
//                 key: _formKey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 0.h,
//                     ),
//                     Text(
//                       "Personal Information",
//                       style: TextStyle(
//                         fontSize: 32.sp,
//                         fontFamily: "Red Hat Display",
//                         color: const Color(0xff8B010B),
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
                     
//                 SizedBox(
//                       height: 20.h,
//                     ),
//                     TextField(
//                       decoration: InputDecoration(
//                           //prefixIcon: const Icon(Icons.person),
//                           prefixIcon: const Align(
//                             widthFactor: 1.0,
//                             heightFactor: 1.0,
//                             child: Icon(
//                               Icons.email,
//                               color: Color(0xff444444),
//                             ),
//                           ),
//                           contentPadding: EdgeInsets.all(16.h),
//                           fillColor: const Color(0xffF1F1F1),
//                           filled: true,
//                           hintText: "Email ",
//                           hintStyle: TextStyle(
//                             fontSize: 18.sp,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: "Red Hat Display",
//                             color: const Color(0xff444444),
//                           ),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(Radius.circular(10.r)),
//                               borderSide: const BorderSide(
//                                 color: Color(0xffF5F6FA),
//                               )),
//                           enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: const Color.fromARGB(255, 249, 251, 253)
//                                 .withOpacity(0),
//                           )),
//                           focusedBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: Color(0xff6DA9E4),
//                           ))),
//                     ),
//                       SizedBox(
//                       height: 20.h,
//                     ),
//                     TextField(
//                       decoration: InputDecoration(
//                           //prefixIcon: const Icon(Icons.person),
//                           prefixIcon: const Align(
//                             widthFactor: 1.0,
//                             heightFactor: 1.0,
//                             child: Icon(
//                               Icons.phone,                          color: Color(0xff444444),
//                             ),
//                           ),
//                           contentPadding: EdgeInsets.all(16.h),
//                           fillColor: const Color(0xffF1F1F1),
//                           filled: true,
//                           hintText: "Contact No.",
//                           hintStyle: TextStyle(
//                             fontSize: 18.sp,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: "Red Hat Display",
//                             color: const Color(0xff444444),
//                           ),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(Radius.circular(10.r)),
//                               borderSide: const BorderSide(
//                                 color: Color(0xffF5F6FA),
//                               )),
//                           enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: const Color.fromARGB(255, 249, 251, 253)
//                                 .withOpacity(0),
//                           )),
//                           focusedBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: Color(0xff6DA9E4),
//                           ))),
//                     ),  SizedBox(
//                       height: 20.h,
//                     ),
//                     TextField(
//                       decoration: InputDecoration(
//                           //prefixIcon: const Icon(Icons.person),
//                           prefixIcon: const Align(
//                             widthFactor: 1.0,
//                             heightFactor: 1.0,
//                             child: Icon(
//                               Icons.phone,                          color: Color(0xff444444),
//                             ),
//                           ),
//                           contentPadding: EdgeInsets.all(16.h),
//                           fillColor: const Color(0xffF1F1F1),
//                           filled: true,
//                           hintText: "Other Contact No.",
//                           hintStyle: TextStyle(
//                             fontSize: 18.sp,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: "Red Hat Display",
//                             color: const Color(0xff444444),
//                           ),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(Radius.circular(10.r)),
//                               borderSide: const BorderSide(
//                                 color: Color(0xffF5F6FA),
//                               )),
//                           enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: const Color.fromARGB(255, 249, 251, 253)
//                                 .withOpacity(0),
//                           )),
//                           focusedBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: Color(0xff6DA9E4),
//                           ))),
//                     ),  SizedBox(
//                       height: 20.h,
//                     ),
//                     TextField(
//                       decoration: InputDecoration(
//                           //prefixIcon: const Icon(Icons.person),
//                           prefixIcon: const Align(
//                             widthFactor: 1.0,
//                             heightFactor: 1.0,
//                             child: Icon(
//                               Icons.phone,                          color: Color(0xff444444),
//                             ),
//                           ),
//                           contentPadding: EdgeInsets.all(16.h),
//                           fillColor: const Color(0xffF1F1F1),
//                           filled: true,
//                           hintText: "Guardian Contact No.",
//                           hintStyle: TextStyle(
//                             fontSize: 18.sp,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: "Red Hat Display",
//                             color: const Color(0xff444444),
//                           ),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(Radius.circular(10.r)),
//                               borderSide: const BorderSide(
//                                 color: Color(0xffF5F6FA),
//                               )),
//                           enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: const Color.fromARGB(255, 249, 251, 253)
//                                 .withOpacity(0),
//                           )),
//                           focusedBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: Color(0xff6DA9E4),
//                           ))),
//                     ),  SizedBox(
//                       height: 20.h,
//                     ),
//                     TextField(
//                       decoration: InputDecoration(
//                           //prefixIcon: const Icon(Icons.person),
//                           prefixIcon: const Align(
//                             widthFactor: 1.0,
//                             heightFactor: 1.0,
//                             child: Icon(
//                               Icons.location_on_outlined,                          color: Color(0xff444444),
//                             ),
//                           ),
//                           contentPadding: EdgeInsets.all(16.h),
//                           fillColor: const Color(0xffF1F1F1),
//                           filled: true,
//                           hintText: "Postal Address",
//                           hintStyle: TextStyle(
//                             fontSize: 18.sp,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: "Red Hat Display",
//                             color: const Color(0xff444444),
//                           ),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(Radius.circular(10.r)),
//                               borderSide: const BorderSide(
//                                 color: Color(0xffF5F6FA),
//                               )),
//                           enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: const Color.fromARGB(255, 249, 251, 253)
//                                 .withOpacity(0),
//                           )),
//                           focusedBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: Color(0xff6DA9E4),
//                           ))),
//                     ),  SizedBox(
//                       height: 20.h,
//                     ),
//                     TextField(
//                       decoration: InputDecoration(
//                           //prefixIcon: const Icon(Icons.person),
//                           prefixIcon: const Align(
//                             widthFactor: 1.0,
//                             heightFactor: 1.0,
//                             child: Icon(
//                               Icons.location_on_outlined,                          color: Color(0xff444444),
//                             ),
//                           ),
//                           contentPadding: EdgeInsets.all(16.h),
//                           fillColor: const Color(0xffF1F1F1),
//                           filled: true,
//                           hintText: "Permanent Address",
//                           hintStyle: TextStyle(
//                             fontSize: 18.sp,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: "Red Hat Display",
//                             color: const Color(0xff444444),
//                           ),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(Radius.circular(10.r)),
//                               borderSide: const BorderSide(
//                                 color: Color(0xffF5F6FA),
//                               )),
//                           enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: const Color.fromARGB(255, 249, 251, 253)
//                                 .withOpacity(0),
//                           )),
//                           focusedBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: Color(0xff6DA9E4),
//                           ))),
//                     ),
//                      SizedBox(
//                       height: 20.h,
//                     ),
//                     DropdownButtonFormField<String>(
//                       value: dropdownButtton,
//                       items: district,
//                       onChanged: (value) {
//                         setState(() {
//                           dropdownButtton= value;
//                           print("object $dropdownButtton");
//                         });
//                       },
//                       validator: (value) {
//                         if (value == null) {
//                           return "choose your Domicile Distt";
//                         }
//                         return null;
//                       },
//                       decoration: const InputDecoration(
//                           prefixIcon: Icon(Icons.location_city),
//                           contentPadding: EdgeInsets.all(16),
//                           fillColor: Color(0xffF1F1F1),
//                           filled: true,
//                           hintText: 'Domicile Distt',
//                           hintStyle: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: "Red Hat Display",
//                             color: Color(0xff444444),
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.all(Radius.circular(10)),
//                             borderSide: BorderSide(
//                               color: Color(0xffF5F6FA),
//                             ),
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color.fromARGB(255, 249, 251, 253),
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                             color: Color(0xff6DA9E4),
//                           ))),
//                     ),
//                     SizedBox(
//                       height: 20.h,
//                     ),
//                      SizedBox(
//                       height: 50,
//                        child: Container(
                                         
//                                          decoration: BoxDecoration(color: Color(0xffF1F1F1),borderRadius: BorderRadius.circular(5.r)),
//                          child: CheckboxListTile(
//                            //checkbox positioned at right
//                             value: check2,
//                             onChanged: (bool? value) {  
//                                 setState(() {
//                                     check2 = value;
//                                 });
//                             },
//                             title: Text("Minority"),
//                              secondary: const Icon(
//                                  Icons.person,
//                                 // color: Colors.blue,
//                                ),
                             
                       
                          
//                           ),
//                        ),
//                      ),
//                     ],
                    
//                 ),
//           ),
//         ),
//               ],
//             )),
//       ),
//     );
//   }
// }