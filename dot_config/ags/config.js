import App from "resource:///com/github/Aylur/ags/app.js";
import Widget from "resource:///com/github/Aylur/ags/widget.js";
import Hyprland from "resource:///com/github/Aylur/ags/service/hyprland.js";
import { monitorFile } from "resource:///com/github/Aylur/ags/utils.js";
import SystemTray from "resource:///com/github/Aylur/ags/service/systemtray.js";
import { Launcher, launcher } from "./launcher.js";
import { Clock } from "./clock.js";
import { Notification } from "./notification.js";
import { SysTray } from "./systray.js";
import { CpuProgress, RamProgress } from "./system.js";
import { NetworkIndicator } from "./network.js";
import { Volume } from "./volume.js";
import { Workspaces } from "./workspaces.js";
import { Media } from "./media.js";
import { ClientTitle } from "./title.js";
import Notifications from "resource:///com/github/Aylur/ags/service/notifications.js";
import { BatteryInfo } from "./battery.js";
// layout of the bar
const Left = () =>
  Widget.Box({
    spacing: 6,
    children: [
      Widget.Box({
        hpack: "start",
        spacing: 8,
        class_names: ["section"],
        children: [Launcher()],
      }),
      Widget.Box({
        hpack: "start",
        spacing: 8,
        class_names: ["section"],
        children: [Workspaces()],
      }),
      Widget.Box({
        hpack: "start",
        spacing: 8,
        class_names: ["section"],
        visible:
          Hyprland.active.client.bind("address").transform((addr) => !!addr) &&
          Hyprland.active.client.bind("title").transform((title) => !!title),
        children: [ClientTitle()],
      }),
      Widget.Box({
        class_names: ["section"],
        hpack: "end",
        visible: Notifications.bind("popups").transform((p) => p.length > 0),
        spacing: 8,
        children: [Notification()],
      }),
    ],
  });

const Center = () =>
  Widget.Box({
    spacing: 8,
    class_names: ["section"],
    children: [Clock()],
  });

const Right = () =>
  Widget.Box({
    hpack: "end",
    spacing: 6,
    children: [
      Widget.Box({
        hpack: "start",
        spacing: 8,
        class_names: ["section"],
        children: [Media()],
      }),
     
      Widget.Box({
        class_names: ["section"],
        hpack: "end",
        visible: SystemTray.bind("items").transform((items) => items.length > 0),
        spacing: 8,
        children: [SysTray()],
      }),
      Widget.Box({
        class_names: ["section"],
        hpack: "end",
        spacing: 8,
        children: [
          CpuProgress(),
          RamProgress(),
          BatteryInfo(),
          NetworkIndicator(),
          Volume(),
        ],
      }),
    ],
  });

const Bar = (monitor = 0) =>
  Widget.Window({
    name: `bar`, // name has to be unique
    class_name: "bar",
    monitor,
    vpack: "center",
    margins: [6, 0, 0, 0],
    anchor: ["top", "left", "right"],
    exclusivity: "exclusive",
    child: Widget.CenterBox({
      // margin: 2,
      marginStart: 8,
      marginEnd: 8,
      start_widget: Left(),
      center_widget: Center(),
      end_widget: Right(),
    }),
  });

monitorFile(`${App.configDir}/style.css`, function () {
  App.resetCss();
  App.applyCss(`${App.configDir}/style.css`);
});

// exporting the config so ags can manage the windows
export default {
  style: App.configDir + "/style.css",
  windows: [
    Bar(),
    launcher,
    // you can call it, for each monitor
    // Bar(0),
    // Bar(1)
  ],
};
