import type { ExtensionAPI } from "@earendil-works/pi-coding-agent";

const MESSAGE = "pi-tickets has been renamed to pi-tk-tickets. Install it with: pi install npm:pi-tk-tickets";

export default function (pi: ExtensionAPI) {
  pi.on("session_start", async (_event, ctx) => {
    ctx.ui.notify(MESSAGE, "warning");
  });
}
