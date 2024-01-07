import Widget from "resource:///com/github/Aylur/ags/widget.js";
import App from "resource:///com/github/Aylur/ags/app.js";
import Applications from "resource:///com/github/Aylur/ags/service/applications.js";

const WINDOW_NAME = "launcher";

/** @param {import('resource:///com/github/Aylur/ags/service/applications.js').Application} app */
const AppItem = (app) =>
  Widget.Button({
    class_names: ["launcher-item"],
    on_clicked: () => {
      launcher.hide();
      app.launch();
    },
    attribute: { app },
    child: Widget.Box({
      spacing: 8,
      children: [
        Widget.Icon({
          icon: app.icon_name || "",
          size: 42,
        }),
        Widget.Label({
          class_name: "title",
          label: app.name,
          xalign: 0,
          vpack: "center",
          truncate: "end",
        }),
      ],
    }),
  });

const Applauncher = ({ width = 500, height = 500, spacing = 2 }) => {
  // list of application buttons
  let applications = Applications.query("").map(AppItem);

  // container holding the buttons
  const list = Widget.Box({
    vertical: true,
    children: applications,
  });

  // repopulate the box, so the most frequent apps are on top of the list
  function repopulate() {
    applications = Applications.query("").map(AppItem);
    list.children = applications;
  }

  // search entry
  const entry = Widget.Entry({
    hexpand: true,
    // to launch the first item on Enter
    on_accept: () => {
      const visibleItems = applications.filter((item) => item.visible);
      if (visibleItems.length > 0) {
        App.toggleWindow(WINDOW_NAME);
        visibleItems[0].attribute.app.launch();
      }
    },

    // filter out the list
    on_change: ({ text }) =>
      applications.forEach((item) => {
        item.visible = item.attribute.app.match(text);
      }),
  });

  return Widget.Box({
    vertical: true,
    class_names: ["launcher-container"],
    spacing: 8,
    children: [
      entry,
      // wrap the list in a scrollable
      Widget.Scrollable({
        class_names: ["launcher-list"],
        hscroll: "never",
        child: list,
      }),
    ],
    setup: (self) =>
      self.hook(App, (_, windowName, visible) => {
        if (windowName !== WINDOW_NAME) return;

        // when the applauncher shows up
        if (visible) {
          repopulate();
          entry.text = "";
          entry.grab_focus();
        }
      }),
  });
};

// there needs to be only one instance
export const launcher = Widget.Window({
  name: WINDOW_NAME,
  popup: true,
  visible: false,
  class_names: ["launcher"],
  focusable: true,
  child: Applauncher({
    width: 500,
    height: 100,
    spacing: 12,
  }),
});

export const Launcher = () =>
  Widget.Button({
    class_name: "launcher",
    on_primary_click: () => launcher.show_now(),
    child: Widget.Icon({
      class_names: ["icon-large"],
      icon: "archlinux",
    }),
  });
