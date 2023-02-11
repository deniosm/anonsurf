using Gtk;


public class AnonSurfDialogAbout: AboutDialog {
  public AnonSurfDialogAbout() {
    const string authors[] = {
      "Lorenzo \"Palinuro\" Faletra",
      "Nong Hoang \"DmKnght\" Tu",
      "Lisetta \"Sheireen\" Ferrero",
      "Francesco \"Mibofra\" Bonanno",
      "Manuel \"Serverket\" Hernandez",
      "Denis \"D3ni05\" Maslo",
    };
    const string artists[] = {
      "Federica \"marafed\" Marasà",
      "David \"mcder3\" Linares",
    };

    this.set_icon_name("anonsurf");
    this.set_logo_icon_name("anonsurf");
    this.set_program_name("AnonSurf");
    this.set_version("4.1.2"); // FIXME use correct version of anonsurf
    this.set_artists(artists);
    this.set_authors(authors);
    this.set_comments("D3NIOS-Anonymous Toolkit");
    this.set_copyright("Copyright © 2022 - 2023 Denis \"D3ni05\" Maslo\nCopyright © 2023 Denios Gnu/Linux");
    this.set_license_type(GPL_3_0);
    this.set_website("https://github.com/deniosm/anonsurf");
    this.set_website_label("Github Source");
  }
}
