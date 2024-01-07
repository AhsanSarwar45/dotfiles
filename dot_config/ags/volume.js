import Widget from "resource:///com/github/Aylur/ags/widget.js";
import Audio from "resource:///com/github/Aylur/ags/service/audio.js";

export const Volume = () =>
  Widget.Button({
    class_names: ["volume", "element"],
    tooltipMarkup: Audio.bind("speaker").transform((speaker) => {
      if (!speaker) return "No speaker";
      return `Volume: ${(speaker.volume * 100).toPrecision(2)}%`;
    }),
    on_primary_click: (_, event) =>
      Widget.Menu({
        children: [
          Widget.MenuItem({
            child: Widget.Slider({
              hexpand: true,
              draw_value: false,
              on_change: ({ value }) => {
                if (Audio.speaker) Audio.speaker.volume = value;
              },
              setup: (self) =>
                self.hook(
                  Audio,
                  () => {
                    self.value = Audio.speaker?.volume || 0;
                  },
                  "speaker-changed",
                ),
            }),
          }),
        ],
      }).popup_at_pointer(event),
    child: Widget.Icon().hook(
      Audio,
      (self) => {
        if (!Audio.speaker) return;

        const category = {
          101: "overamplified",
          67: "high",
          34: "medium",
          1: "low",
          0: "muted",
        };

        const icon = Audio.speaker.is_muted
          ? 0
          : [101, 67, 34, 1, 0].find(
              (threshold) => threshold <= (Audio.speaker?.volume ?? 0) * 100,
            );
        self.class_names = ["icon"];
        self.icon = `audio-volume-${category[icon]}-symbolic`;
      },
      "speaker-changed",
    ),
  });
