class Keep < Formula
  desc "Project-aware process supervisor for local development"
  homepage "https://github.com/youguanxinqing/keep"
  url "https://github.com/youguanxinqing/keep/releases/download/v0.2.1/keep-0.2.1.tar.gz"
  sha256 "1cb58d9f62d08bfce7300180c6bfc481effc52a118dccd6bcce4c97cfab23a63"
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
