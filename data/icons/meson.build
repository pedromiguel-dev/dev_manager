application_id = 'com.github.pedromiguel_dev.dev_manager'

scalable_dir = 'hicolor' / 'scalable' / 'apps'
install_data(
  scalable_dir / ('@0@.svg').format(application_id),
  install_dir: get_option('datadir') / 'icons' / scalable_dir
)

symbolic_dir = 'hicolor' / 'symbolic' / 'apps'
install_data(
  symbolic_dir / ('@0@-symbolic.svg').format(application_id),
  install_dir: get_option('datadir') / 'icons' / symbolic_dir
)

scalable_dir = 'hicolor' / 'scalable' / 'actions'
install_data(
  scalable_dir / ('git-symbolic.svg'),
  install_dir: get_option('datadir') / 'icons' / scalable_dir
)
install_data(
  scalable_dir / ('flatpak-symbolic.svg'),
  install_dir: get_option('datadir') / 'icons' / scalable_dir
)
install_data(
  scalable_dir / ('check-round-outline2-symbolic.svg'),
  install_dir: get_option('datadir') / 'icons' / scalable_dir
)

