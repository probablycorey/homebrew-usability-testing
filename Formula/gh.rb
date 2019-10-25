class Gh < Formula
  desc "For usability testing"
  homepage ""
  url "https://github.com/probablycorey/usability-testing/releases/download/v0.0.2/gh"
  
  def install
    bin.install "gh"
  end

  test do
    help_text = shell_output("#{bin}/gh --help")
    assert_includes help_text, "Usage:"
  end
end
