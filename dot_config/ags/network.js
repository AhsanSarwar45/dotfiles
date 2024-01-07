import Network from "resource:///com/github/Aylur/ags/service/network.js";
import Widget from "resource:///com/github/Aylur/ags/widget.js";

const WifiIndicator = () =>
  Widget.Button({
    class_names: ["wifi"],
    child: Widget.Icon({
      class_names: ["icon"],
      icon: Network.wifi.bind("icon-name"),
    }),
    // Widget.Label({
    //   label: Network.wifi.bind("ssid"),
    // }),
  });

const WiredIndicator = () =>
  Widget.Icon({
    icon: Network.wired.bind("icon-name"),
  });

export const NetworkIndicator = () =>
  Widget.Stack({
    class_names: ["wifi", "element"],
    tooltipMarkup: Network.wifi.bind("ssid").transform((p) => {
      return p ? `Connected to ${p}` : "Not connected";
    }),
    items: [
      ["wifi", WifiIndicator()],
      ["wired", WiredIndicator()],
    ],
    shown: Network.bind("primary").transform((p) => p || "wifi"),
  });
