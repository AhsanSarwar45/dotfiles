// const WifiIndicator = () =>
//   Widget.Button({
//     class_names: ["wifi"],
//     child: Widget.Icon({
//       class_names: ["icon"],
//       icon: Network.wifi.bind("icon-name"),
//     }),
//     // Widget.Label({
//     //   label: Network.wifi.bind("ssid"),
//     // }),
//   });
//
// const WiredIndicator = () =>
//   Widget.Icon({
//     icon: Network.wired.bind("icon-name"),
//   });
//
// export const NetworkIndicator = () =>
//   Widget.Stack({
//     class_names: ["wifi", "element"],
//     tooltipMarkup: Network.wifi.bind("ssid").transform((p) => {
//       return p ? `Connected to ${p}` : "Not connected";
//     }),
//     items: [
//       ["wifi", WifiIndicator()],
//       ["wired", WiredIndicator()],
//     ],
//     shown: Network.bind("primary").transform((p) => p || "wifi"),
//   });
//
const network = await Service.import('network')

const WifiIndicator = () => Widget.Box({
  children: [
    Widget.Icon({
      icon: network.wifi.bind('icon_name'),
    }),
    Widget.Label({
      label: network.wifi.bind('ssid')
        .as(ssid => ssid || 'Unknown'),
    }),
  ],
})

const WiredIndicator = () => Widget.Icon({
  icon: network.wired.bind('icon_name'),
})

export const NetworkIndicator = () => Widget.Stack({
  children: {
    wifi: WifiIndicator(),
    wired: WiredIndicator(),
  },
  shown: network.bind('primary').as(p => p || 'wifi'),
})
