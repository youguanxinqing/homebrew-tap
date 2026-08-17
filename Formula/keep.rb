class Keep < Formula
  desc "Project-aware process supervisor for local development"
  homepage "https://github.com/youguanxinqing/keep"
  url "https://github.com/youguanxinqing/keep/releases/download/v0.1.0/keep-0.1.0.tar.gz"
  sha256 "e6181a8162893c2721f1a33d93fb4d7bd260e240acde38983a3ce0106d6d2c4a"
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
