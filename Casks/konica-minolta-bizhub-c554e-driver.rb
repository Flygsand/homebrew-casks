cask 'konica-minolta-bizhub-c554e-driver' do
  version '5.2.1'
  sha256 'dc9759ad89977336da60fb3deae7af8b292c1fbbb2ab9b9637e096bd71e2c2d4'

  url 'https://o.cses.konicaminolta.com/file/Default.aspx?FilePath=DL/201410/20120754/BHC554ePSMacOS109_521MU.dmg'
  name 'Konica Minolta Bizhub C554e Driver'
  homepage 'http://www.biz.konicaminolta.com/download/'
  license :gratis

  pkg 'bizhub_C554_C364_109.pkg'

  uninstall :pkgutil => 'jp.konicaminolta.print.package.C554'
end
