cask :v1 => 'irapp-server' do
  name 'iRAPP Server'
  homepage 'http://www.coderebel.com/products/irapp/'
  license :commercial
  tags :vendor => 'Code Rebel'

  if MacOS.release == :el_capitan
    url 'http://www.coderebel.com/download/iRAPP_Server_Mac_Setup_For_10.11.dmg'
    version '2.8.8632.0'
    sha256 '44936a94d610823e08c4410fc60c38ca630651d823612215db4349d8b41de609'

    installer :script => 'iRAPP Setup.app/Contents/Resources/rapsetup.src/101100/rapsetup',
              :args => %w[install]
    uninstall :script => {
                :executable => 'iRAPP Setup.app/Contents/Resources/rapsetup.src/101100/rapsetup',
                :args => %w[uninstall]
              }
  elsif MacOS.release == :yosemite
    url 'http://www.coderebel.com/download/iRAPP_Server_Mac_Setup_For_10.10.dmg'
    version '2.7.8386.0'
    sha256 '75a05b94e6c896cc70f2a22084d4479a2dd154dd90dc146dc51ab00e7200b752'

    installer :script => 'iRAPP Setup.app/Contents/Resources/rapsetup.src/101000/rapsetup',
              :args => %w[install]
    uninstall :script => {
                :executable => 'iRAPP Setup.app/Contents/Resources/rapsetup.src/101000/rapsetup',
                :args => %w[uninstall]
              }
  elsif MacOS.release == :mavericks
    url 'http://www.coderebel.com/download/iRAPP_Server_Mac_Setup_For_10.9.dmg'
    version '2.7.8385.0'
    sha256 '75a05b94e6c896cc70f2a22084d4479a2dd154dd90dc146dc51ab00e7200b752'

    installer :script => 'iRAPP Setup.app/Contents/Resources/rapsetup.src/1090/rapsetup',
              :args => %w[install]
    uninstall :script => {
                :executable => 'iRAPP Setup.app/Contents/Resources/rapsetup.src/1090/rapsetup',
                :args => %w[uninstall]
              }
  elsif MacOS.release == :mountain_lion
    url 'http://www.coderebel.com/download/iRAPP_Server_Mac_Setup_For_10.8.dmg'
    version '2.6.7884.0'
    sha256 'c6c9e1ae096f840b80489be3c364608a19dca726f00fa6fa295028006b6a7109'

    installer :script => 'iRAPP Setup.app/Contents/Resources/rapsetup.src/1080/rapsetup',
              :args => %w[install]
    uninstall :script => {
                :executable => 'iRAPP Setup.app/Contents/Resources/rapsetup.src/1080/rapsetup',
                :args => %w[uninstall]
              }
  elsif MacOS.release == :lion
    url 'http://www.coderebel.com/download/iRAPP_Server_Mac_Setup_For_10.7.dmg'
    sha256 '31510555d590b6bd018e875716004c263ff420cb11ffa294cf7a8b397b057572'
    version '2.5.7542.0'

    installer :script => 'iRAPP Setup.app/Contents/Resources/rapsetup.src/1070/rapsetup',
              :args => %w[install]
    uninstall :script => {
                :executable => 'iRAPP Setup.app/Contents/Resources/rapsetup.src/1070/rapsetup',
                :args => %w[uninstall]
              }
  end

  caveats do
    puts <<-EOS.undent
      Users of El Capitan or greater should consult the following KB article (regarding System Integrity Protection):
      https://coderebel.zendesk.com/hc/en-us/articles/206192300-How-to-change-settings-locked-by-System-Integrity-Protection
    EOS

    reboot
  end

end
