import Hyprland from "resource:///com/github/Aylur/ags/service/hyprland.js";
import Variable from "resource:///com/github/Aylur/ags/variable.js";
import Widget from "resource:///com/github/Aylur/ags/widget.js";
import { exec, execAsync } from "resource:///com/github/Aylur/ags/utils.js";
const divide = ([total, free]) => free / total;

const cpu = Variable(0, {
  poll: [
    2000,
    "top -b -n 1",
    (out) =>
      divide([
        100,
        out
          .split("\n")
          .find((line) => line.includes("Cpu(s)"))
          .split(/\s+/)[1]
          .replace(",", "."),
      ]),
  ],
});

const ram = Variable(0, {
  poll: [
    2000,
    "free",
    (out) =>
      divide(
        out
          .split("\n")
          .find((line) => line.includes("Mem:"))
          .split(/\s+/)
          .splice(1, 2),
      ),
  ],
});

export const CpuProgress = () =>
  Widget.Button({
    class_names: ["cpu"],
    on_primary_click: () => execAsync("wezterm -e htop"),
    child: Widget.CircularProgress({
      rounded: true,
      class_names: ["circular-progress"],
      value: cpu.bind(),
    }),
    tooltipMarkup: cpu
      .bind()
      .transform((v) => `CPU: ${((v ?? 0) * 100).toPrecision(2)}%`),
  });

export const RamProgress = () =>
  Widget.Button({
    class_names: ["memory"],
    on_primary_click: () => execAsync("wezterm -e htop"),
    child: Widget.CircularProgress({
      rounded: true,
      class_names: ["circular-progress"],
      value: ram.bind(),
    }),
    tooltipMarkup: ram
      .bind()
      .transform((v) => `RAM: ${((v ?? 0) * 100).toPrecision(2)}%`),
  });
