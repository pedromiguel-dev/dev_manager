/* window.vala
 *
 * Copyright 2023 Pedro Miguel
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

namespace DevManager {
    [GtkTemplate (ui = "/com/github/pedromiguel_dev/dev_manager/ui/window.ui")]
    public class Window : Adw.ApplicationWindow {

        [GtkChild] public unowned Adw.NavigationSplitView split_view;
        [GtkChild] public unowned Adw.ViewStack main_content;
        [GtkChild] public unowned Gtk.ListBox sections;

        [GtkChild] public unowned DevManager.ManagePage manage_page;

        public SimpleActionGroup actions { get; construct; }

        ActionEntry[] ACTION_ENTRIES = {
                { "go_manage_page", go_manage_page },
                { "go_foo", go_foo },
        };

        public Window (Gtk.Application app) {
            Object (application: app, actions: new SimpleActionGroup ());

            actions.add_action_entries (ACTION_ENTRIES, this);
            this.insert_action_group ("win", actions);

        }

        private void go_manage_page () {
            split_view.set_show_content (true);
            main_content.set_visible_child_name ("manager_page");
            print("go to manage page");
        }
        private void go_foo () {
            split_view.set_show_content (true);
            main_content.set_visible_child_name ("foo_page");
            print("go to foo page");
        }
    }
}
