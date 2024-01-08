import Widget from "resource:///com/github/Aylur/ags/widget.js";
import { exec, execAsync } from "resource:///com/github/Aylur/ags/utils.js";

export const dateFormat = "+%H:%M %e %b";
export const Clock = () =>
  Widget.Button({
    class_names: ["clock"],
    child: Widget.Box({
      spacing: 12,
      vpack: "center",
      children: [
        Widget.Icon({
          icon: "clock-applet-symbolic",
          class_names: ["clock-icon", "icon"],
        }),
        Widget.Label({
          // class_name: "clock",
          setup: (self) =>
            self
              // this is bad practice, since exec() will block the main event loop
              // in the case of a simple date its not really a problem
              .poll(1000, (self) => (self.label = exec(`date "${dateFormat}"`)))

              // this is what you should do
              .poll(1000, (self) =>
                execAsync(["date", dateFormat]).then(
                  (date) => (self.label = date),
                ),
              ),
        }),
      ],
    }),
  });
