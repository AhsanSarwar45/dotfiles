const hyprland = await Service.import("hyprland")


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
        label: hyprland.active.client
          .bind("title")
          .transform((title) => trimString(title, 40)),
      }),
    ],
  });
