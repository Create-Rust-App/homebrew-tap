# Create-Rust-App Homebrew Tap

[![Release](https://img.shields.io/github/v/release/Create-Rust-App/create-rust-app?filter=create-rust-app%40*&style=flat-square&label=Release)](https://github.com/Create-Rust-App/create-rust-app/releases/tag/create-rust-app%400.1.0)
[![Discord](https://img.shields.io/discord/1527933660764831825?label=Discord&logo=discord&logoColor=white)](https://discord.gg/bR5VyATgka)

Homebrew formula for [create-rust-app](https://github.com/Create-Rust-App/create-rust-app).

Pinned to tag [`create-rust-app@0.1.0`](https://github.com/Create-Rust-App/create-rust-app/releases/tag/create-rust-app%400.1.0).

> **Note:** the CLI repo has no releases yet. The formula below is wired to
> future `create-rust-app@X.Y.Z` release tags: the first release will patch
> the `url`, `version`, and `sha256` via the automated update workflow. The
> `sha256` currently holds a placeholder value.

## Install

```bash
brew tap Create-Rust-App/tap
brew install create-rust-app
```

## Usage

```bash
create-rust-app my-app --template web-server --addons github-setup
```

Browse templates and extensions: **[cra-templates](https://github.com/Create-Rust-App/cra-templates)**

## Other channels

| Channel | How |
|---------|-----|
| GitHub Release | [linux amd64 binary](https://github.com/Create-Rust-App/create-rust-app/releases/tag/create-rust-app%400.1.0) |
| AUR | `yay -S create-rust-app` |
| Source | Build from [create-rust-app](https://github.com/Create-Rust-App/create-rust-app) |

## Automated updates

Release tags `create-rust-app@X.Y.Z` trigger formula bumps via `repository_dispatch` from the CLI repo. Manual:

```bash
gh workflow run "Update formula" --repo Create-Rust-App/homebrew-tap -f version=0.1.0
```

## Formulae

| Formula | Description |
|---------|-------------|
| `create-rust-app` | Composable scaffolding CLI for production-ready Rust apps |

## Contributors

<a href="https://github.com/Create-Rust-App/homebrew-tap/contributors">
  <img src="https://contrib.rocks/image?repo=Create-Rust-App/homebrew-tap" alt="contrib.rocks"/>
</a>
