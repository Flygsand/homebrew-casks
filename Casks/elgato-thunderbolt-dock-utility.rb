cask 'elgato-thunderbolt-dock-utility' do

  version '1.1.2'
  name 'Elgato Thunderbolt Dock Utility'
  homepage 'https://www.elgato.com/en/thunderbolt/thunderbolt-2-dock'
  license :gratis

  if MacOS.version == :el_capitan
    url 'http://dl.elgato.com/thunderbolt/dockutility/Elgato_Thunderbolt_Dock_Software_112_114_1011.pkg'
    sha256 'd8ea4428ed0d3ad43eb52e629bbaa0ef959a9331feaff2f8e8ddcabcfeaf6de0'
    pkg 'Elgato_Thunderbolt_Dock_Software_112_114_1011.pkg'
  else
    url 'http://dl.elgato.com/thunderbolt/dockutility/Elgato_Thunderbolt_Dock_Software_112_114.pkg'
    sha256 'd9b2711a65922a89f48107715cbba275f276bf4ebe2c4b6cdf6428a935ef275b'
    pkg 'Elgato_Thunderbolt_Dock_Software_112_114.pkg'
  end

  uninstall :pkgutil => %w[
    com.Elgato.Thunderbolt2DockChargingSupport
    com.Elgato.ThunderboltDockChargingSupport
    com.elgato.Elgato-Thunderbolt-Dock-Utility
    com.elgato.ElgatoThunderboltDockAudioRename
  ]

  caveats do
    reboot
  end

end
