import Hyprland from "resource:///com/github/Aylur/ags/service/hyprland.js";
import Widget from "resource:///com/github/Aylur/ags/widget.js";

export const Workspaces = () =>
  Widget.Box({
    class_name: "workspaces",
    spacing: 4,
    children: Hyprland.bind("workspaces").transform((ws) => {
      return ws
        .sort((a, b) => a.id - b.id)
        .map(({ id }) =>
          Widget.Button({
            class_name: Hyprland.active.workspace
              .bind("id")
              .transform((i) => `${i === id ? "focused" : ""}`),
            on_clicked: () => Hyprland.sendMessage(`dispatch workspace ${id}`),
            child: Widget.Label({
              label: `${id}`,
              class_names: ["workspace-item"],
            }),
          }),
        );
    }),
  });
