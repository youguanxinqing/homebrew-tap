class Keep < Formula
  desc "Project-aware process supervisor for local development"
  homepage "https://github.com/youguanxinqing/keep"
  url "https://github.com/youguanxinqing/keep/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7515bf959b73b956ceb967351c7e299cbb3668a53d35f9c770eb72e00d93ced6"
  license "MIT"
  head "https://github.com/youguanxinqing/keep.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keep --version")
  end
end
