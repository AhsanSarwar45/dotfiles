import Widget from "resource:///com/github/Aylur/ags/widget.js";
import Mpris from "resource:///com/github/Aylur/ags/service/mpris.js";
import { execAsync } from "resource:///com/github/Aylur/ags/utils.js";
import { trimString } from "./utils.js";

export const Media = () =>
  Widget.Button({
    class_name: "media",
    on_primary_click: () =>
      Mpris.getPlayer("") !== null
        ? Mpris.getPlayer("")?.playPause()
        : execAsync("wezterm -e cmus"),
    on_scroll_up: () => Mpris.getPlayer("")?.next(),
    on_scroll_down: () => Mpris.getPlayer("")?.previous(),
    child: Widget.Box({
      vpack: "center",
      spacing: 12,
      children: [
        Widget.Icon({
          class_names: ["media-icon", "icon"],
          icon: "emblem-music-symbolic",
        }),
        Widget.Label("-").hook(
          Mpris,
          (self) => {
            print(Mpris.players.map((p) => p.name).join(", "));
            const cmusIndex = Mpris.players.findIndex((p) => p.name === "cmus");
            const player =
              cmusIndex >= 0 ? Mpris.players[cmusIndex] : Mpris.players[0];
            if (player) {
              self.label = trimString(
                `${
                  player.track_artists.length > 0 &&
                  player.track_artists[0] != "Unknown artist"
                    ? `${player.track_artists.join(", ")} - `
                    : ""
                }${player.track_title}`,
                40,
              );
            } else {
              self.label = "Nothing is playing";
            }
          },
          "player-changed",
        ),
        Widget.Icon().hook(
          Mpris,
          (self) => {
            const cmusIndex = Mpris.players.findIndex((p) => p.name === "cmus");
            const player =
              cmusIndex >= 0 ? Mpris.players[cmusIndex] : Mpris.players[0];
            if (!player) {
              self.icon = "media-playback-start-symbolic";
            } else {
              self.icon =
                player.play_back_status === "Playing"
                  ? "media-playback-pause-symbolic"
                  : "media-playback-start-symbolic";
            }
          },
          "player-changed",
        ),
      ],
    }),
  });
