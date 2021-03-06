import 'package:customized/customized.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_package/src/utils/uihelper.dart';
import 'package:flutter_package/src/presentation/core/svg_icon.dart';
import 'package:flutter_package/src/utils/theme.dart';
import 'package:flutter_package/src/utils/util.dart';
import 'package:flutter_package/src/l18n.dart';
import '../utils/constants.dart';
import '../utils/uihelper.dart';

class SettingScreen extends StatelessWidget {
  static const route = '/settings_screen';

  @override
  Widget build(BuildContext context) {
    return _SettingView();
  }
}

class _SettingView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingState();
  }
}

class _SettingState extends State<_SettingView>
    with SingleTickerProviderStateMixin {
  _SettingState();

  @override
  void initState() {
    super.initState();
  }

  onGoGit() async {
    try {
      Util.openLink(url: Constants.GITHUB);
    } catch (ex) {}
  }

  onGoPlayStore() async {
    try {
      Util.openLink(url: Constants.PLAYSTORE);
    } catch (ex) {}
  }

  onGoWebsite() async {
    try {
      Util.openLink(url: Constants.PUBDEV);
    } catch (ex) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Scaffold(
        backgroundColor: CustomTheme.backgroundColor,
        appBar: AppBar(
          elevation: 0.0,
          brightness: CustomTheme.brightness,
          backgroundColor: CustomTheme.backgroundColor,
          title: Txt(
            'about'.translate,
            textStyle: (_) => _.copyWith(
                fontWeight: FontWeight.bold, color: CustomTheme.titleColor),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Txt(
                        'app'.translate,
                        textStyle: (_) =>
                            _.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Txt(
                        'v${Constants.VERSION_APP}',
                        textStyle: (_) => _.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: CustomTheme.subtitleColor),
                      ),
                      Txt(
                        'app_desc'.translate,
                        textStyle: (_) => _.copyWith(
                            color: CustomTheme.subtitleColor, fontSize: 14.0),
                      )
                    ],
                  )),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: CustomTheme.placeholderColor,
                        shape: BoxShape.circle),
                    child: Image.asset(
                      'assets/images/dartlogo.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium(),
              Divider(
                color: CustomTheme.placeholderColor,
              ),
              UIHelper.verticalSpaceMedium(),
              InkWell(
                onTap: onGoGit,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: CustomTheme.placeholderColor,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        'git_desc'.translate,
                      )),
                      CustomIcon(icon: 'github')
                    ],
                  ),
                ),
              ),
              UIHelper.verticalSpaceMedium(),
              InkWell(
                onTap: onGoWebsite,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: CustomTheme.placeholderColor,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Txt(
                        'website'.translate,
                      )),
                      CustomIcon(icon: 'globe')
                    ],
                  ),
                ),
              ),
              UIHelper.verticalSpaceMedium(),
              Divider(color: CustomTheme.placeholderColor),
            ],
          ),
        ),
      )),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
