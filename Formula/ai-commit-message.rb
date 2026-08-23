class AiCommitMessage < Formula
  desc "Generate Conventional Commits messages from staged changes using Claude AI"
  homepage "https://github.com/youguanxinqing/ai-commit-message"
  url "https://github.com/youguanxinqing/ai-commit-message/releases/download/v0.1.0/ai-commit-message-0.1.0.tar.gz"
  sha256 "43eb3f2cad80e6dc149d793d787a3bb52e24103e15c67f34b19e44c10eb23896"
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
