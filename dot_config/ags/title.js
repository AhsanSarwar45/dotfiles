import Hyprland from "resource:///com/github/Aylur/ags/service/hyprland.js";
import Widget from "resource:///com/github/Aylur/ags/widget.js";
import { trimString } from "./utils.js";

export const ClientTitle = () =>
  Widget.Box({
    spacing: 12,
    class_names: ["client-title"],
    vpack: "center",
    children: [
      Widget.Icon({
        icon: "window-restore-symbolic",
        class_names: ["client-title-icon", "icon"],
      }),
      Widget.Label({
        label: Hyprland.active.client
          .bind("title")
          .transform((title) => trimString(title, 40)),
      }),
    ],
  });
