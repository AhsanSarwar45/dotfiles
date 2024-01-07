import Widget from "resource:///com/github/Aylur/ags/widget.js";
import Battery from "resource:///com/github/Aylur/ags/service/battery.js";

export const BatteryInfo = () =>
  Widget.Button({
    class_name: "battery",
    tooltipMarkup: Battery.bind("percent").transform((p) => {
      return `Battery: ${p}%`;
    }),
    visible: Battery.bind("available"),
    child: Widget.Box({
      children: [
        Widget.Icon({
          icon: Battery.bind("percent").transform((p) => {
            return `battery-level-${Math.floor(p / 10) * 10}-symbolic`;
          }),
        }),
        Widget.ProgressBar({
          vpack: "center",
          fraction: Battery.bind("percent").transform((p) => {
            return p > 0 ? p / 100 : 0;
          }),
        }),
      ],
    }),
  });
