# Tarinoi for Godot — Quickstart

A ready-to-run Godot project with the [Tarinoi](https://tarinoi.com) plugin already
installed. Clone it, point it at your Tarinoi project, and play a dialogue in a few
minutes.

Requires the latest stable **Godot 4.x**. If you would rather add Tarinoi to a project
you already have, follow the [Godot plugin guide](https://tarinoi.app/docs/plugins/godot.html)
instead.

> **Status: early development.** Plugin version 0.2.0. The API is not stable yet.

## Running it

**1. Clone this repository.** The plugin is bundled under `addons/tarinoi/` — no separate
checkout needed.

**2. Install the godot-sqlite binaries.** They are gitignored, since native binaries do not
belong in git, so this is a one-time step per machine. Download the
[v4.7 release](https://github.com/2shady4u/godot-sqlite/releases/tag/v4.7) for your platform
and extract its `bin/` into `addons/godot-sqlite/bin/`.

Skipping this does not produce an obvious error — the editor opens fine, but anything that
touches the database fails at step 4.

> **macOS:** clear the quarantine flag *before* opening the project, or Gatekeeper blocks the
> binaries: `xattr -cr addons/godot-sqlite/bin/`
>
> **Windows:** unblock the zip before extracting (`Unblock-File -Path bin.zip`), or antivirus
> may silently delete the unsigned DLLs.
>
> Both are explained in full in the [plugin guide](https://tarinoi.app/docs/plugins/godot.html#_1-install-the-sqlite-extension).

**3. Configure.** Open the project in Godot, then **Project → Project Settings → Tarinoi**:
set `tarinoi/api/path` to your project's documents URL, and set the token via
**Tools → Tarinoi: Set Tarinoi API token…**.

**4. Sync and generate.** **Tools → Tarinoi: Clone / Sync**, then
**Tools → Tarinoi: Regenerate Bindings**.

**5. Play.** Press **F5**. You should get a list of start cards from your Tarinoi project;
click one and the dialogue plays.

The main scene is already set to `res://tarinoi_quickstart.tscn`, and
`res://tarinoi_quickstart.gd` is where your game's own bindings get registered.

## Documentation

- **[Godot plugin guide](https://tarinoi.app/docs/plugins/godot.html)** — configuration, bindings, trigger nodes, replacing the dialogue UI, shipping a build, and troubleshooting
- [What the plugins do and don't do](https://tarinoi.app/docs/plugins/)
- [Writing your own integration](https://tarinoi.app/docs/plugins/writing_your_own.html)

## License

MIT — see [`LICENSE.md`](LICENSE.md).
