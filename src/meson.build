dev_manager_sources = [
  'main.vala',
  'application.vala',
  'widgets/window.vala',
]

dev_manager_deps = [
  dependency('gtk4'),
  dependency('libadwaita-1', version: '>= 1.4'),
]

dev_manager_sources += gnome.compile_resources('dev_manager-resources',
  'dev_manager.gresource.xml',
  c_name: 'dev_manager'
)

executable('dev_manager', dev_manager_sources,
  dependencies: dev_manager_deps,
       install: true,
)
