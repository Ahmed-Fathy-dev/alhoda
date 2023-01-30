enum AppImages {
  logo(name: 'logo'),
  header(name: 'header'),
  bgGreen(name: 'bg-green'),
  bgblue(name: 'bg-blue'),
  quraanCat(name: 'quraan-cat'),
  hadethCat(name: 'hadeth-cat'),
  prayTimesCat(name: 'pray-times'),
  azkarCat(name: 'azkar-cat'),
  qeblaCat(name: 'qebla-cat'),
  settingsCat(name: 'settings-cat'),
  separator(name: 'separator'),
  madina(name: 'madina'),
  mecca(name: 'mecca'),
  ;

  final String name;
  const AppImages({
    required this.name,
  });
}
