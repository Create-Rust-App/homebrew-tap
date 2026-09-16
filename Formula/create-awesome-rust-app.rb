class CreateAwesomeRustApp < Formula
  desc "Composable scaffolding CLI for production-ready Rust apps"
  homepage "https://github.com/Create-Rust-App/create-rust-app"
  url "https://github.com/Create-Rust-App/create-rust-app/archive/refs/tags/create-rust-app@0.2.0.tar.gz"
  version "0.2.0"
  # Placeholder sha256: the CLI repo has no releases yet. The
  # "Update formula" workflow resolves the real tarball sha256 from the
  # GitHub Release and patches this value on the first release.
  sha256 "78db3b73edb670b09e13bdb034d428e3add1a4bdd6c976e287d170248bf8e02e"
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
