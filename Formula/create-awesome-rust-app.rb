class CreateAwesomeRustApp < Formula
  desc "Composable scaffolding CLI for production-ready Rust apps"
  homepage "https://github.com/Create-Rust-App/create-rust-app"
  url "https://github.com/Create-Rust-App/create-rust-app/archive/refs/tags/create-rust-app@0.4.2.tar.gz"
  version "0.4.2"
  sha256 "41a85c188b7323c7d368dbb5fad38fe87a3de5a3bd06be20ece268b90376e10e"
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
