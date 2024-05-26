
const hyprland = await Service.import("hyprland")
const systemtray = await Service.import("systemtray")
const notifications = await Service.import("notifications")

import { applauncher, Launcher } from "./launcher.js";
import { Clock } from "./clock.js";
import { Notification } from "./notification.js";
import { SysTray } from "./systray.js";
import { CpuProgress, RamProgress } from "./system.js";
// import { NetworkIndicator } from "./network.js";
import { BatteryInfo } from "./battery.js";
import { Volume } from "./volume.js";
import { Workspaces } from "./workspaces.js";
import { Media } from "./media.js";
import { ClientTitle } from "./title.js";

// // layout of the bar
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
          hyprland.active.client.bind("address").transform((addr) => !!addr) &&
          hyprland.active.client.bind("title").transform((title) => !!title),
        children: [ClientTitle()],
      }),
      Widget.Box({
        class_names: ["section"],
        hpack: "end",
        visible: notifications.bind("popups").transform((p) => p.length > 0),
        spacing: 8,
        children: [Notification()],
      }),
    ],
  });
//
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
        visible: systemtray.bind("items").transform((items) => items.length > 0),
        spacing: 8,
        children: [SysTray()],
      }),
      Widget.Box({
        class_names: ["section"],
        hpack: "end",
        spacing: 2,
        children: [
          CpuProgress(),
          RamProgress(),
          BatteryInfo(),
          // NetworkIndicator(),
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

// monitorFile(`${App.configDir}/style.css`, function() {
//   App.resetCss();
//   App.applyCss(`${App.configDir}/style.css`);
// });

// exporting the config so ags can manage the windows
export default {
  style: App.configDir + "/style.css",
  windows: [
    Bar(),
    applauncher,
    // you can call it, for each monitor
    // Bar(0),
    // Bar(1)
  ],
};
