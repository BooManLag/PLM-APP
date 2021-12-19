import 'package:flutter/material.dart';
import 'package:plm_app_final/contacts/contactinformation.dart';

final allData = <Data>[
  Data(
      office: 'Board of Regents',
      phone: '(+632) 86432565',
      email: 'plmbor@plm.edu.ph'),
  Data(
      office: 'Office of the President',
      phone: '(+63 2) 8 643 2503',
      email: 'plm_op@plm.edu.ph'),
  Data(
      office: 'Office of the Executive President',
      phone: '(+63 2) 8 643 2507',
      email: 'oevp@plm.edu.ph'),
  Data(
      office: 'Office of the Vice President for Public Affairs',
      phone: ' (+63 2) 8 643 2518',
      email: 'vppa@plm.edu.p'),
  Data(
      office: 'Office of the University Legal Counsel',
      phone: '(+632) 86432565',
      email: 'plmbor@plm.edu.ph'),
  Data(
      office: 'Office of the Senior Vice President of Academic Affairs',
      phone: '(+63 2) 8 643 2512',
      email: 'svpaa@plm.edu.ph'),
  Data(
      office: 'Office of the Vice President for Finance and Management',
      phone: '(+63 2) 8 643 2516	',
      email: 'ovpfm@plm.edu.ph'),
  Data(
      office: 'Office of the Vice President of Administration',
      phone: '(+63 2) 8 643 2514',
      email: 'vpa@plm.edu.ph '),
  Data(
      office: 'Information and Communications Technology Office ',
      phone: '(+63 2) 8 643 2580',
      email: 'ithelp@plm.edu.ph'),
  Data(
      office: 'Internal Audit Office',
      phone: '(+63 2) 8 643 2554',
      email: 'iao@plm.edu.ph '),
  Data(
      office: 'Office of the University Registrar',
      phone: '(+63 2) 8 643 2566 to 67',
      email: 'registrar@plm.edu.ph'),
  Data(
      office: 'Admissions Office',
      phone: '(+63 2) 8 643 2557',
      email: 'admission@plm.edu.ph '),
  Data(
      office: 'Office of the Guidance and Testing Services',
      phone: '(+63 2) 8 643 2561',
      email: 'ogts@plm.edu.ph'),
  Data(
      office: 'Office of the Student and Development Services',
      phone: '(+63 2) 8 643 2562',
      email: 'osds@plm.edu.ph'),
  Data(
      office: 'University Center for Research and Extension Services',
      phone: ' (+63 2) 8 643 2559 to 60',
      email: 'ulibrary@plm.edu.ph'),
  Data(
      office: 'University Library',
      phone: '(+63 2) 8 643 2557',
      email: 'admission@plm.edu.ph'),
  Data(
      office: 'Human Resource Development Office',
      phone: '(+63 2) 8 643 2552',
      email: 'hrdo@plm.edu.ph'),
  Data(
      office: 'University Health Services',
      phone: '(+63 2) 8 643 2573',
      email: 'uhs@plm.edu.ph'),
  Data(
      office: 'National Service Training  Program',
      phone: '(+63 2) 8 643 2563',
      email: 'nstp@plm.edu.ph'),
  Data(
      office: 'Physical Facilities Management Office',
      phone: '(+63 2) 8 643 2569 to 70',
      email: 'pfmo@plm.edu.ph'),
  Data(
      office: 'University Security Office',
      phone: '(+63 2) 8 643 2575',
      email: 'uso@plm.edu.ph'),
  Data(
      office: 'Procurement Office',
      phone: '(+63 2) 8 643 2549',
      email: 'procurement@plm.edu.ph'),
  Data(
      office: 'Property and Supply Office',
      phone: '(+63 2) 8 643 2550',
      email: '-'),
  Data(
      office: 'Physical Facilities Management Office',
      phone: '(+63 2) 8 643 2569 to 70',
      email: 'pfmo@plm.edu.ph'),
  Data(
      office: 'Treasurer\'s Office',
      phone: '(+63 2) 8 643 2523',
      email: 'to@plm.edu.ph'),
  Data(
      office: 'Budget Office',
      phone: '(+63 2) 8 643 2521',
      email: 'budget@plm.edu.ph'),
  Data(office: 'Accounting Office', phone: '(+63 2) 8 643 2520', email: '-'),
  Data(office: 'Cash Office', phone: '(+63 2) 8 643 2523', email: '-'),
];

class Data {
  final String office;
  final String phone;
  final String email;

  const Data({
    required this.office,
    required this.phone,
    required this.email,
  });
}
