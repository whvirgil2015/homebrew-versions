class Gradle21401 < Formula
  desc "Gradle build automation tool"
  homepage "https://www.gradle.org/"
  url "https://downloads.gradle.org/distributions/gradle-2.14.1-bin.zip"
  sha256 "cfc61eda71f2d12a572822644ce13d2919407595c2aec3e3566d2aab6f97ef39"

  bottle :unneeded

  conflicts_with "gradle", because: "Differing version of same formula"

  def install
    libexec.install %w[bin lib]
    bin.install_symlink libexec+"bin/gradle"
  end

  test do
    system "#{bin}/gradle", "-version"
  end
end
