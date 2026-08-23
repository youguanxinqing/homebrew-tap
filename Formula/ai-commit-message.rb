class AiCommitMessage < Formula
  desc "Generate Conventional Commits messages from staged changes using Claude AI"
  homepage "https://github.com/youguanxinqing/ai-commit-message"
  url "https://github.com/youguanxinqing/ai-commit-message/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c7bd77ee2efd004b2e93399a64688423d750ff45816a233c0d00710166e35e36"
  license "MIT"
  head "https://github.com/youguanxinqing/ai-commit-message.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-commit-message --version")
  end
end
