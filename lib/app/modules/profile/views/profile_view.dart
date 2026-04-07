import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import './widgets/build_list_tile.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          buildListTile(
            () {},
            FontAwesomeIcons.solidUser,
            'PROFILE',
            'ubah data profile',
          ),
          buildListTile(
            () {},
            FontAwesomeIcons.gear,
            'PASSWORD',
            'ubah password',
          ),
          buildListTile(
            () {},
            FontAwesomeIcons.circleInfo,
            'TENTANG',
            'tentang aplikasi',
          ),
          buildListTile(
            () {},
            FontAwesomeIcons.solidCircleQuestion,
            'BANTUAN',
            'ubah password',
          ),
          buildListTile(
            () {},
            FontAwesomeIcons.doorClosed,
            'KELUAR',
            'keluar dari aplikasi',
          ),
        ],
      ),
    );
  }
}
