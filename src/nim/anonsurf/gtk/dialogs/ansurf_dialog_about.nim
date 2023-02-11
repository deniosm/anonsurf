import gintro / [gtk, gdkpixbuf]
import system
import .. / .. / cores / version
import .. / gui_activities / core_activities


proc onClickAbout*(b: Button) =
  #[
    Show help for main and credit in new dialog
  ]#
  const readImgLogo = staticRead("../../../../../icons/anon-about.svg")
  let
    showAbout = newAboutDialog()
    bufLoader = newPixbufLoader()

  discard bufLoader.write(readImgLogo)
  discard bufLoader.close()

  let imgLogo: Pixbuf = bufLoader.getPixbuf()

  showAbout.setLogo(imgLogo)
  showAbout.setIcon(imgLogo)
  showAbout.setProgramName("AnonSurf")
  showAbout.setVersion(surfVersion)
  showAbout.setArtists([
    "Federica \"marafed\" Marasà",
    "David \"mcder3\" Linares",
  ])

  showAbout.setAuthors([
    "Lorenzo \"Palinuro\" Faletra",
    "Nong Hoang \"DmKnght\" Tu",
    "Lisetta \"Sheireen\" Ferrero",
    "Francesco \"Mibofra\" Bonanno",
    "Manuel \"Serverket\" Hernandez",
    "Denis \"D3ni05\" Maslo",
  ])
  showAbout.setComments("D3NIOS-Anonymous Toolkit")
  showAbout.setCopyright(
    "Copyright © 2022 - 2023 Denis \"D3ni05\" Maslo\nCopyright © 2023 Denios Gnu/Linux"
  )
  showAbout.setLicenseType(gpl_3_0)
  showAbout.setWebsite("https://github.com/deniosm/anonsurf")
  showAbout.setWebsiteLabel("Github Source")

  discard showAbout.run()
  ansurf_gtk_close_dialog(showAbout)
