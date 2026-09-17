class CreateAwesomeRustApp < Formula
  desc "Composable scaffolding CLI for production-ready Rust apps"
  homepage "https://github.com/Create-Rust-App/create-rust-app"
  url "https://github.com/Create-Rust-App/create-rust-app/archive/refs/tags/create-rust-app@0.4.0.tar.gz"
  version "0.4.0"
  sha256 "2900eae986c37dadebf5a6d4ee2d649d1d8e43fa3ff5cc5a6f9932d3d7d0fae7"
  license "MIT"

  depends_on "rust" => :build

  def install
    # Homebrew already unpacks the GitHub archive into the build directory.
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/create-rust-app --version")
    help = shell_output("#{bin}/create-rust-app --help")
    assert_includes help, "create-rust-app"
    assert_includes help, "list-templates"
    assert_includes help, "list-addons"
  end
end
