# Tarinoi for Godot — Quickstart

A ready-to-run Godot project with the [Tarinoi](https://tarinoi.com) plugin already
installed. Clone it, point it at your Tarinoi project, and play a dialogue in a few
minutes.

Requires the latest stable **Godot 4.x**. If you would rather add Tarinoi to a project
you already have, follow the [Godot plugin guide](https://tarinoi.app/docs/plugins/godot.html)
instead.

> **Status: early development.** Plugin version 0.2.0. The API is not stable yet.

## Running it

**1. Clone this repository.** The plugin is bundled under `addons/tarinoi/`, and its SQLite
dependency under `addons/godot-sqlite/` with prebuilt binaries for macOS, Windows, Linux,
Android and web — nothing else to install.

**2. Configure.** Open the project in Godot, then **Project → Project Settings → Tarinoi**:
set `tarinoi/api/path` to your project's documents URL, and set the token via
**Tools → Tarinoi: Set Tarinoi API token…**.

**3. Sync and generate.** **Tools → Tarinoi: Sync**, then
**Tools → Tarinoi: Regenerate Bindings**.

**4. Play.** Press **F5**. You should get a list of start cards from your Tarinoi project;
click one and the dialogue plays.

The main scene is already set to `res://tarinoi_quickstart.tscn`, and
`res://tarinoi_quickstart.gd` is where your game's own bindings get registered.

**Exporting to iOS?** The iOS binaries are too large to vendor. Install godot-sqlite from its
[GitHub releases](https://github.com/2shady4u/godot-sqlite/releases) and let it overwrite
`addons/godot-sqlite/`; every other platform works as shipped.

## Documentation

- **[Godot plugin guide](https://tarinoi.app/docs/plugins/godot.html)** — configuration, bindings, trigger nodes, replacing the dialogue UI, shipping a build, and troubleshooting
- [What the plugins do and don't do](https://tarinoi.app/docs/plugins/)
- [Writing your own integration](https://tarinoi.app/docs/plugins/writing_your_own.html)

## License

MIT — see [`LICENSE.md`](LICENSE.md).
