# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Diderot < Formula
  desc "Diderot Compiler"
  homepage "https://github.com/diderot-edu/diderot-guide/"

  # The next 2 lines need to change whenever we upload a new version of dc
  url "https://diderot-dist.s3.amazonaws.com/dc-macos-0.16.6.zip"
  sha256 "8bf799bb24fba4bdc622a34d53263db9ff92328d05784174a51a9ae7010083cc"

  depends_on "pandoc"

  def install
    bin.install "dc"
    bin.install "texel"
  end

  test do
    # we should eventually do a real test here
    system "dc --help"
  end
end
