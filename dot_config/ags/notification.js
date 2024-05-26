
// we don't need dunst or any other notification daemon
// because the Notifications module is a notification daemon itself
const notifications = await Service.import("notifications")

import { trimString } from "./utils.js";
export const Notification = () =>
  Widget.Box({
    class_name: "notification",
    spacing: 12,
    children: [
      Widget.Icon({
        class_names: ["notification-icon", "icon"],
        icon: "preferences-system-notifications-symbolic",
      }),
      Widget.Label({
        label: notifications.bind("popups").transform((p) =>
          trimString(p[0]?.summary || "", 40),
        ),
      }),
    ],
  });
