const mpris = await Service.import("mpris")

import { trimString } from "./utils.js";

const getActivePlayer = (players) => {
  const cmusIndex = players.findIndex((p) => p.name === "cmus");
  return cmusIndex >= 0 ? players[cmusIndex] : players[0];

}

export const Media = () =>
  Widget.Button({
    class_name: "media",
    on_primary_click: () => {
      const player = getActivePlayer(mpris.players);
      if (player) player.playPause()
      else Utils.execAsync("wezterm -e cmus");
    },
    on_scroll_up: () => getActivePlayer(mpris.players)?.next(),
    on_scroll_down: () => getActivePlayer(mpris.players)?.previous(),
    child: Widget.Box({
      vpack: "center",
      spacing: 12,
      children: [
        Widget.Icon({
          class_names: ["media-icon", "icon"],
          icon: "emblem-music-symbolic",
        }),
        Widget.Label("-").hook(
          mpris,
          (self) => {
            const player = getActivePlayer(mpris.players);
            if (player) {
              self.label = trimString(
                `${player.track_artists.length > 0 &&
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
          mpris,
          (self) => {
            const player = getActivePlayer(mpris.players);
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
