import 'package:flutter/material.dart';
import 'package:plm_app_final/account_information//accountinformation.dart';

final personalData = <Data>[
  Data(
      label: 'First Name',
      details: 'JUAN',
  ),
  Data(
    label: 'Last Name',
    details: 'DELA CRUZ',
  ),
  Data(
    label: 'Middle Name',
    details: 'MARTINEZ',
  ),
  Data(
    label: 'Pedigree',
    details: 'None',
  ),
  Data(
    label: 'Gender',
    details: 'Male',
  ),
  Data(
    label: 'Civil Status',
    details: 'Status',
  ),
  Data(
    label: 'Country of Citizenship',
    details: 'Philippines',
  ),
  Data(
    label: 'Personal Email',
    details: 'jdelacruz2021@gmail.com',
  ),
  Data(
    label: 'Mobile Number',
    details: '09639392864',
  ),
];

final schoolData = <Data>[
  Data(
    label: 'Student Number',
    details: '2021-12345',
  ),
  Data(
    label: 'Student Type',
    details: 'Old',
  ),
  Data(
    label: 'Registration Status',
    details: 'Regular',
  ),
  Data(
    label: 'Degree Program',
    details: 'Bachelor of Science in Computer Science',
  ),
  Data(
    label: 'Year Level',
    details: '2',
  ),
  Data(
    label: 'Official PLM Email',
    details: 'jdelacruz2021@plm.edu',
  ),
];

class Data {
  final String label;
  final String details;

  const Data({
    required this.label,
    required this.details,
  });
}
