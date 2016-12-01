cask 'odbc-administrator' do
  version '1.0'
  name 'ODBC Administrator'
  homepage 'https://support.apple.com/kb/dl895'
  license :gratis

  url 'http://support.apple.com/downloads/DL895/en_US/ODBCAdministrator.dmg'
  sha256 'a22f864740e74a4473e6c1a9b3abfbc7a32a7e729e7c15ac1248c8ea66ec7051'
  pkg 'ODBCAdministrator.pkg'

  uninstall :pkgutil => 'com.apple.pkg.ODBCAdministratorLeo'
end
