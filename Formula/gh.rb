class Gh < Formula
  desc "For usability testing"
  homepage ""
  url "https://github.com/probablycorey/usability-testing/releases/download/v0.0.1/gh"
  sha256 "a5607f503f253d5cd4e2c451a8f74e371fbacead022e3d56706ee0dce76dd901"

  def install
    bin.install "gh"
  end

  test do
    help_text = shell_output("#{bin}/gh --help")
    assert_includes help_text, "Usage:"
  end
end
