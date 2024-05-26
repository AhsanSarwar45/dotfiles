const battery = await Service.import("battery")

export const BatteryInfo = () =>
  Widget.Button({
    class_name: "battery",
    tooltipMarkup: battery.bind("percent").transform((p) => {
      return `Battery: ${p}%`;
    }),
    visible: battery.bind("available"),
    child: Widget.Box({
      children: [
        Widget.Icon({
          icon: battery.bind("percent").transform((p) => {
            return `battery-level-${Math.floor(p / 10) * 10}-symbolic`;
          }),
        }),
        Widget.ProgressBar({
          vpack: "center",
          fraction: battery.bind("percent").transform((p) => {
            return p > 0 ? p / 100 : 0;
          }),
        }),
      ],
    }),
  });
