class Keep < Formula
  desc "Project-aware process supervisor for local development"
  homepage "https://github.com/youguanxinqing/keep"
  url "https://github.com/youguanxinqing/keep/releases/download/v0.2.0/keep-0.2.0.tar.gz"
  sha256 "21ee1ebdc818434b29293f01025012d0d79992db4bb30c85215c0e5dee3e2a2d"
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
