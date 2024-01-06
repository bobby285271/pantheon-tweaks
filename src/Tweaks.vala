/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: elementary Tweaks Developers, 2014-2020
 *                         Pantheon Tweaks Developers, 2020-2023
 */

public class PantheonTweaks.Tweaks : Gtk.Application {
    private MainWindow window;

    public Tweaks () {
        GLib.Intl.bindtextdomain (GETTEXT_PACKAGE, LOCALEDIR);
        GLib.Intl.bind_textdomain_codeset (GETTEXT_PACKAGE, "UTF-8");

        Object (
            application_id: "com.github.pantheon-tweaks.pantheon-tweaks",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        if (window != null) {
            window.present ();
            return;
        }

        window = new MainWindow (this);
        window.show_all ();
    }

    public static int main (string[] args) {
        // Prevent Tweaks from launching and breaking preferences on other DEs
        string desktop_environment = GLib.Environment.get_variable ("XDG_CURRENT_DESKTOP");
        if (desktop_environment != "Pantheon") {
            warning ("Tweaks is made for and only runs on Pantheon. Your desktop environment \"%s\" is not supported.",
                     desktop_environment);
            return -1;
        }

        var app = new Tweaks ();
        return app.run (args);
    }
}
