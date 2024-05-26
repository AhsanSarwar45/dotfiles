const hyprland = await Service.import("hyprland")

export const Workspaces = () =>
  Widget.Box({
    class_name: "workspaces",
    spacing: 4,
    children: hyprland.bind("workspaces").transform((ws) => {
      return ws
        .sort((a, b) => a.id - b.id)
        .map(({ id }) =>
          Widget.Button({
            class_name: hyprland.active.workspace
              .bind("id")
              .transform((i) => `${i === id ? "focused" : ""}`),
            on_clicked: () => hyprland.sendMessage(`dispatch workspace ${id}`),
            child: Widget.Label({
              label: `${id}`,
              class_names: ["workspace-item"],
            }),
          }),
        );
    }),
  });
