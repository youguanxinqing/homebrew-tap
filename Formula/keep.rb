class Keep < Formula
  desc "Project-aware process supervisor for local development"
  homepage "https://github.com/youguanxinqing/keep"
  url "https://github.com/youguanxinqing/keep/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3c3cdb6a6c3f133ba6195287e93aa0df0eac608c91ba51b1467a6a7cd4743ae0"
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
