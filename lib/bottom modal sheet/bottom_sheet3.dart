import 'package:flutter/material.dart';

class BottomSheet3 extends StatelessWidget {
  const BottomSheet3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 249,
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 137.22,
            top: 25.32,
            child: GestureDetector(
              onTap: () async {},
              child: const bottom_sheet_text_widget(
                text: "image",
                imageIcon: 'assets/image icon.png',
              ),
            ),
          ),
          Positioned(
            left: 250.45,
            top: 25.32,
            child: GestureDetector(
              onTap: () async {},
              child: const bottom_sheet_text_widget(
                text: "video",
                imageIcon: 'assets/video.png',
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 128.08,
            child: GestureDetector(
              onTap: () async {},
              child: const bottom_sheet_text_widget(
                text: "document",
                imageIcon: "assets/document.png",
              ),
            ),
          ),
          Positioned(
            left: 137.22,
            top: 128.08,
            child: GestureDetector(
              onTap: () {},
              child: const bottom_sheet_text_widget(
                text: "opinionPoll",
                imageIcon: "assets/poll.png",
              ),
            ),
          ),
          Positioned(
            left: 250.45,
            top: 128.08,
            child: GestureDetector(
              onTap: () {},
              child: const bottom_sheet_text_widget(
                text: "events",
                imageIcon: "assets/event.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class bottom_sheet_text_widget extends StatelessWidget {
  const bottom_sheet_text_widget(
      {super.key, required this.text, required this.imageIcon});

  final String text;
  final String imageIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.55,
      height: 94.90,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF212121)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 35.98,
            height: 30.84,
            child: Stack(children: [Image.asset(imageIcon)]),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF010A1B),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0.12,
            ),
          ),
        ],
      ),
    );
  }
}

// class BottomTimeSheet extends StatefulWidget {
//   const BottomTimeSheet({
//     super.key,
//   });

//   @override
//   State<BottomTimeSheet> createState() => _BottomTimeSheetState();
// }

// class _BottomTimeSheetState extends State<BottomTimeSheet> {
//   DateTime _selectedDate = DateTime.now();
//   TimeOfDay _selectedTime = TimeOfDay.now();

//   @override
//   void initState() {
//     super.initState();

//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       PostProvider postProvider =
//           Provider.of<PostProvider>(context, listen: false);
//       postProvider.timeController.text =
//           '${_selectedTime.hour}:${_selectedTime.minute.toString().padLeft(2, '0')}';
//       postProvider.dateController.text =
//           '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}';
//     });
//   }

//   // Time picker dialog
//   Future<void> _selectTime(
//       {required BuildContext context,
//       required PostProvider postProvider}) async {
//     // Custom Dialog
//     await showDialog(
//       barrierDismissible: false,
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           backgroundColor: Colors.white,
//           title: Text(AppLocalizations.of(context)!.selectTime),
//           content: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                   child: TimePickerWidget(
//                     onTimeSelected: (TimeOfDay time) {
//                       Navigator.of(context).pop();
//                       _selectedTime = time;
//                       postProvider.setPostDateAndTime(
//                           date: _selectedDate, time: _selectedTime);
//                       postProvider.timeController.text =
//                           '${time.hour}:${time.minute.toString().padLeft(2, '0')}';
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   // Date picker dialog
//   Future<void> _selectDate(
//       {required BuildContext context,
//       required PostProvider postProvider}) async {
//     DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: _selectedDate,
//       firstDate: DateTime.now(),
//       lastDate: DateTime(2101),
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             colorScheme: const ColorScheme.light(primary: Color(0xFFFFCD07)),
//           ),
//           child: child!,
//         );
//       },
//     );

//     if (picked != null && picked != _selectedDate) {
//       setState(() {
//         _selectedDate = picked;
//         postProvider.setPostDateAndTime(
//             date: _selectedDate, time: _selectedTime);
//         postProvider.dateController.text =
//             '${picked.day}/${picked.month}/${picked.year}';
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     PostProvider postProvider = Provider.of<PostProvider>(context);
//     return Container(
//       height: 330,
//       clipBehavior: Clip.antiAlias,
//       decoration: ShapeDecoration(
//         color: Theme.of(context).primaryColor,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//           ),
//         ),
//       ),
//       child: Padding(
//         padding:
//             const EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   top: 10.0, bottom: 5, left: 5, right: 0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     AppLocalizations.of(context)!.schedule,
//                     style: const TextStyle(
//                       color: Color(0xFF212121),
//                       fontSize: 22,
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w500,
//                       height: 0,
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pushNamed(
//                           context, RouteNames.scheduledPostScreen);
//                     },
//                     child: Row(
//                       children: [
//                         Text(
//                           AppLocalizations.of(context)!.viewScheduled,
//                           style: const TextStyle(
//                             color: Color(0xFF212121),
//                             fontSize: 12,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w500,
//                             height: 0,
//                           ),
//                         ),
//                         const Icon(
//                           Icons.arrow_forward,
//                           color: Colors.black,
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 _selectDate(context: context, postProvider: postProvider);
//               },
//               child: AbsorbPointer(
//                 child: ShadowCustomTextField(
//                   textFieldStyle: Theme.of(context)
//                       .textTheme
//                       .titleSmall!
//                       .copyWith(color: CustomColors.hintGrey),
//                   fillColor: CustomColors.primary,
//                   maxLines: 1,
//                   readOnly: true,
//                   controller: postProvider.dateController,
//                   hintText: AppLocalizations.of(context)!.date,
//                   enabled: true,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 15),
//             GestureDetector(
//               onTap: () {
//                 _selectTime(context: context, postProvider: postProvider);
//               },
//               child: AbsorbPointer(
//                 child: ShadowCustomTextField(
//                     textFieldStyle: Theme.of(context)
//                         .textTheme
//                         .titleSmall!
//                         .copyWith(color: CustomColors.hintGrey),
//                     fillColor: CustomColors.primary,
//                     maxLines: 1,
//                     readOnly: false,
//                     controller: postProvider.timeController,
//                     hintText: AppLocalizations.of(context)!.time,
//                     enabled: true),
//               ),
//             ),
//             const SizedBox(height: 25),
//             SizedBox(
//               height: 60,
//               child: CustomButton(
//                 title: AppLocalizations.of(context)!.done,
//                 onTap: () {
//                   // postProvider.clearTextField();
//                   Navigator.pop(context);
//                 },
//                 loading: false,
//                 bgColor: Colors.black,
//                 textColor: Colors.white,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class BottomEventSheet extends StatefulWidget {
//   final EventModel eventModel;
//   final UserModel? userModel;

//   const BottomEventSheet({Key? key, required this.eventModel, this.userModel})
//       : super(key: key);

//   @override
//   State<BottomEventSheet> createState() => _BottomEventSheetState();
// }

// class _BottomEventSheetState extends State<BottomEventSheet> {
//   @override
//   Widget build(BuildContext context) {
//     AuthProvider authProvider = Provider.of<AuthProvider>(context);
//     return Container(
//       height: 500,
//       clipBehavior: Clip.antiAlias,
//       decoration: ShapeDecoration(
//         color: Theme.of(context).primaryColor,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//           ),
//         ),
//       ),
//       child: Padding(
//         padding:
//             const EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 itemCount: widget.eventModel.response!.length,
//                 itemBuilder: (context, i) {
//                   print(widget.eventModel.response![i]['response'].length);
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const SizedBox(height: 10),
//                       Text(
//                         "${widget.eventModel.response![i]['value']} (${widget.eventModel.response![i]['response'].length})",
//                         style: const TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       widget.eventModel.response![i]['response'].length > 0
//                           ? SizedBox(
//                               height: 100,
//                               child: ListView.builder(
//                                 itemCount: widget
//                                     .eventModel.response![i]['response'].length,
//                                 itemBuilder: (context, index) {
//                                   String userId = widget.eventModel.response![i]
//                                       ['response'][index];
//                                   UserModel user =
//                                       authProvider.getUserById(userId);
//                                   print("IMGAEEEE");
//                                   print(user.profilePicture.toString());

//                                   return ListTile(
//                                     leading: CircleAvatar(
//                                       radius: 20,
//                                       backgroundImage: user.profilePicture !=
//                                               null
//                                           ? NetworkImage(
//                                               user.profilePicture.toString())
//                                           : user.gender == "male"
//                                               ? const AssetImage(
//                                                   MediaConstants.maleIcon)
//                                               : const AssetImage(
//                                                       MediaConstants.femaleIcon)
//                                                   as ImageProvider,
//                                     ),
//                                     title: Row(
//                                       children: [
//                                         Text(
//                                           user.firstName,
//                                           style: const TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 15,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                         const SizedBox(width: 10),
//                                         Text(
//                                           user.userName,
//                                           style: const TextStyle(
//                                               color: Colors.black,
//                                               fontSize: 12),
//                                         ),
//                                       ],
//                                     ),
//                                   );
//                                 },
//                               ),
//                             )
//                           : Center(
//                               child: Text(
//                                   AppLocalizations.of(context)!.noResponses),
//                             ),
//                     ],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class BottomPublicSheet extends StatefulWidget {
//   final StateSetter setSheetState;

//   const BottomPublicSheet({super.key, required this.setSheetState});

//   @override
//   State<BottomPublicSheet> createState() => _BottomPublicSheetState();
// }

// class _BottomPublicSheetState extends State<BottomPublicSheet> {
//   int selectedValueScope = 0;
//   int selectedValueGender = 0;
//   PostProvider postProvider = PostProvider();

//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     postProvider = Provider.of<PostProvider>(context);
//     return Container(
//       clipBehavior: Clip.antiAlias,
//       decoration: ShapeDecoration(
//         color: Theme.of(context).primaryColor,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//           ),
//         ),
//       ),
//       child: Padding(
//         padding:
//             const EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 AppLocalizations.of(context)!.scope,
//                 style: const TextStyle(
//                   color: Color(0xFF212121),
//                   fontSize: 22,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w700,
//                   height: 0,
//                 ),
//               ),
//               CustomRadio(
//                 value: postProvider.selectedValueScope,
//                 groupValue: 1,
//                 onChanged: (value) {
//                   widget.setSheetState(() {
//                     postProvider.setSelectedValueScopeAndIndex(
//                         index: value, scopeType: 'Public');
//                   });
//                 },
//                 text: AppLocalizations.of(context)!.public,
//                 icon: MediaConstants.globe,
//               ),
//               CustomRadio(
//                   text: AppLocalizations.of(context)!.friends,
//                   icon: MediaConstants.friends,
//                   value: postProvider.selectedValueScope,
//                   groupValue: 2,
//                   onChanged: (value) {
//                     widget.setSheetState(() {
//                       postProvider.setSelectedValueScopeAndIndex(
//                           index: value, scopeType: 'Friends');
//                     });
//                   }),
//               CustomRadio(
//                   text: AppLocalizations.of(context)!.group,
//                   icon: MediaConstants.groupsIcon,
//                   value: postProvider.selectedValueScope,
//                   groupValue: 3,
//                   onChanged: (value) {
//                     widget.setSheetState(() {
//                       postProvider.setSelectedValueScopeAndIndex(
//                           index: value, scopeType: 'Group');
//                       selectedValueScope = value;
//                     });
//                   }),

//               // genders
//               SizedBox(width: width * 0.3),
//               Text(
//                 AppLocalizations.of(context)!.gender,
//                 style: const TextStyle(
//                   color: Color(0xFF212121),
//                   fontSize: 22,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w700,
//                   height: 0,
//                 ),
//               ),
//               CustomRadio(
//                 value: postProvider.selectedValueGender,
//                 groupValue: 4,
//                 onChanged: (value) {
//                   widget.setSheetState(() {
//                     postProvider.setSelectedGenderTypeAndIndex(
//                         index: value, genderType: 'Both');
//                     selectedValueGender = value;
//                   });
//                 },
//                 text: AppLocalizations.of(context)!.both,
//               ),
//               CustomRadio(
//                   text: AppLocalizations.of(context)!.male,
//                   value: postProvider.selectedValueGender,
//                   groupValue: 5,
//                   onChanged: (value) {
//                     widget.setSheetState(() {
//                       postProvider.setSelectedGenderTypeAndIndex(
//                           index: value, genderType: 'Male');
//                     });
//                   }),
//               CustomRadio(
//                   text: AppLocalizations.of(context)!.female,
//                   value: postProvider.selectedValueGender,
//                   groupValue: 6,
//                   onChanged: (value) {
//                     widget.setSheetState(() {
//                       postProvider.setSelectedGenderTypeAndIndex(
//                           index: value, genderType: 'Female');
//                       selectedValueGender = value;
//                     });
//                   }),

//               // Padding(
//               //   padding: const EdgeInsets.only(
//               //       top: 10.0, bottom: 5, left: 5, right: 0),
//               //   child: Row(
//               //     mainAxisAlignment: MainAxisAlignment.start,
//               //     children: [
//               //       Text(
//               //         AppLocalizations.of(context)!.scope,
//               //         style: const TextStyle(
//               //           color: Color(0xFF212121),
//               //           fontSize: 22,
//               //           fontFamily: 'Poppins',
//               //           fontWeight: FontWeight.w700,
//               //           height: 0,
//               //         ),
//               //       ),
//               //       SizedBox(width: width * 0.3),
//               //       Text(
//               //         AppLocalizations.of(context)!.gender,
//               //         style: const TextStyle(
//               //           color: Color(0xFF212121),
//               //           fontSize: 22,
//               //           fontFamily: 'Poppins',
//               //           fontWeight: FontWeight.w500,
//               //           height: 0,
//               //         ),
//               //       ),
//               //     ],
//               //   ),
//               // ),
//               // Row(
//               //   children: [
//               //     Column(
//               //       children: [
//               //         CustomRadio(
//               //           value: postProvider.selectedValueScope,
//               //           groupValue: 1,
//               //           onChanged: (value) {
//               //             widget.setSheetState(() {
//               //               postProvider.setSelectedValueScopeAndIndex(
//               //                   index: value, scopeType: 'Public');
//               //             });
//               //           },
//               //           text: AppLocalizations.of(context)!.public,
//               //           icon: MediaConstants.globe,
//               //         ),
//               //         CustomRadio(
//               //             text: AppLocalizations.of(context)!.friends,
//               //             icon: MediaConstants.friends,
//               //             value: postProvider.selectedValueScope,
//               //             groupValue: 2,
//               //             onChanged: (value) {
//               //               widget.setSheetState(() {
//               //                 postProvider.setSelectedValueScopeAndIndex(
//               //                     index: value, scopeType: 'Friends');
//               //               });
//               //             }),
//               //         CustomRadio(
//               //             text: AppLocalizations.of(context)!.group,
//               //             icon: MediaConstants.groupsIcon,
//               //             value: postProvider.selectedValueScope,
//               //             groupValue: 3,
//               //             onChanged: (value) {
//               //               widget.setSheetState(() {
//               //                 postProvider.setSelectedValueScopeAndIndex(
//               //                     index: value, scopeType: 'Group');
//               //                 selectedValueScope = value;
//               //               });
//               //             }),
//               //       ],
//               //     ),
//               //     SizedBox(
//               //       width: width * 0.07,
//               //     ),
//               //     Column(
//               //       children: [
//               //         CustomRadio(
//               //           value: postProvider.selectedValueGender,
//               //           groupValue: 4,
//               //           onChanged: (value) {
//               //             widget.setSheetState(() {
//               //               postProvider.setSelectedGenderTypeAndIndex(
//               //                   index: value, genderType: 'Both');
//               //               selectedValueGender = value;
//               //             });
//               //           },
//               //           text: AppLocalizations.of(context)!.both,
//               //         ),
//               //         CustomRadio(
//               //             text: AppLocalizations.of(context)!.male,
//               //             value: postProvider.selectedValueGender,
//               //             groupValue: 5,
//               //             onChanged: (value) {
//               //               widget.setSheetState(() {
//               //                 postProvider.setSelectedGenderTypeAndIndex(
//               //                     index: value, genderType: 'Male');
//               //               });
//               //             }),
//               //         CustomRadio(
//               //             text: AppLocalizations.of(context)!.female,
//               //             value: postProvider.selectedValueGender,
//               //             groupValue: 6,
//               //             onChanged: (value) {
//               //               widget.setSheetState(() {
//               //                 postProvider.setSelectedGenderTypeAndIndex(
//               //                     index: value, genderType: 'Female');
//               //                 selectedValueGender = value;
//               //               });
//               //             }),
//               //       ],
//               //     ),
//               //   ],
//               // ),

//               // reactions and comments switch
//               SizedBox(width: width * 0.3),
//               ListTile(
//                 tileColor: Colors.transparent,
//                 contentPadding: EdgeInsets.zero,
//                 title: Text(AppLocalizations.of(context)!.reactions),
//                 subtitle: Text(
//                   AppLocalizations.of(context)!.letUsersReactToYourPost,
//                   style: Theme.of(context).textTheme.bodyMedium,
//                 ),
//                 trailing: Switch(
//                     activeTrackColor: Colors.grey,
//                     activeColor: Colors.white,
//                     inactiveTrackColor: Colors.black,
//                     value: postProvider.isReactionAllowed,
//                     onChanged: (bool value) {
//                       print('value $value');
//                       postProvider.setReactionStatus(value);
//                     }),
//               ),
//               ListTile(
//                 contentPadding: EdgeInsets.zero,
//                 title: Text(AppLocalizations.of(context)!.comments),
//                 subtitle: Text(
//                   AppLocalizations.of(context)!.letUsersCommentToYourPost,
//                   style: Theme.of(context).textTheme.bodyMedium,
//                 ),
//                 trailing: Switch(
//                     activeTrackColor: Colors.grey,
//                     inactiveTrackColor: Colors.black,
//                     activeColor: Colors.white,
//                     value: postProvider.isCommentAllowed,
//                     onChanged: (bool value) {
//                       postProvider.setCommentStatus(value);
//                     }),
//               ),
//               const SizedBox(height: 20),
//               SizedBox(
//                 height: 60,
//                 child: CustomButton(
//                   title: AppLocalizations.of(context)!.done,
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   loading: false,
//                   bgColor: Colors.black,
//                   textColor: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomRadio extends StatefulWidget {
//   final int value;
//   final int groupValue;
//   final String text;
//   final String? icon;
//   final void Function(int) onChanged;

//   const CustomRadio(
//       {Key? key,
//       required this.text,
//       this.icon,
//       required this.value,
//       required this.groupValue,
//       required this.onChanged})
//       : super(key: key);

//   @override
//   _CustomRadioState createState() => _CustomRadioState();
// }

// class _CustomRadioState extends State<CustomRadio> {
//   @override
//   Widget build(BuildContext context) {
//     bool selected = (widget.value == widget.groupValue);
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 6.0),
//       child: InkWell(
//         onTap: () => widget.onChanged(widget.groupValue),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 12.0, right: 12.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               if (widget.icon != null && widget.icon!.isNotEmpty)
//                 SvgPicture.asset(
//                   widget.icon!,
//                   colorFilter:
//                       const ColorFilter.mode(Colors.black, BlendMode.srcIn),
//                   // width: 40,
//                   // height: 40,
//                 ),
//               const SizedBox(width: 10),
//               SizedBox(
//                 width: 75,
//                 child: Text(
//                   widget.text,
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontSize: 16.0,
//                     fontFamily: 'Poppins',
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//               const Spacer(),
//               Container(
//                 height: 20,
//                 width: 20,
//                 margin: const EdgeInsets.all(4),
//                 padding: const EdgeInsets.all(4),
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.black),
//                     shape: BoxShape.circle,
//                     color: selected ? Colors.black : Colors.transparent),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TimePickerWidget extends StatefulWidget {
//   final Function(TimeOfDay) onTimeSelected;

//   const TimePickerWidget({Key? key, required this.onTimeSelected})
//       : super(key: key);

//   @override
//   _TimePickerWidgetState createState() => _TimePickerWidgetState();
// }

// class _TimePickerWidgetState extends State<TimePickerWidget> {
//   late TimeOfDay _time;

//   @override
//   void initState() {
//     super.initState();
//     _time = TimeOfDay.now();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Expanded(
//               child: SizedBox(
//                 height: 200,
//                 child: CupertinoTheme(
//                   data: const CupertinoThemeData(
//                     textTheme: CupertinoTextThemeData(
//                       dateTimePickerTextStyle: TextStyle(
//                         fontSize: 24,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                   child: CupertinoDatePicker(
//                     mode: CupertinoDatePickerMode.time,
//                     initialDateTime: DateTime(
//                       DateTime.now().year,
//                       DateTime.now().month,
//                       DateTime.now().day,
//                       _time.hour,
//                       _time.minute,
//                     ),
//                     onDateTimeChanged: (DateTime dateTime) {
//                       setState(() {
//                         _time = TimeOfDay.fromDateTime(dateTime);
//                       });
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         TextButton(
//           onPressed: () {
//             widget.onTimeSelected(_time);
//           },
//           child: Text(
//             AppLocalizations.of(context)!.ok,
//             style: const TextStyle(color: Colors.blue),
//           ),
//         ),
//         TextButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text(
//             AppLocalizations.of(context)!.cancel,
//             style: const TextStyle(color: Colors.blue),
//           ),
//         ),
//       ],
//     );
//   }
// }
