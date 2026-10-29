# typed: false
# frozen_string_literal: true
# Auto-updated by the Truzt release pipeline. DO NOT EDIT.
class Truzt < Formula
  desc "Truzt — secure mesh network client."
  homepage "https://truzt.lk/"
  version "2.9.4"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.intel?
      url "https://pkgs.truzt.lk/release/v2.9.4/truzt_2.9.4_darwin_amd64.tar.gz"
      sha256 "2ff0cdd7fbe1fa4e53aa72e756e954cafd76f66dcbc78261440025ce29265fd6"
      define_method(:install) { bin.install "truzt" }
    end
    if Hardware::CPU.arm?
      url "https://pkgs.truzt.lk/release/v2.9.4/truzt_2.9.4_darwin_arm64.tar.gz"
      sha256 "28f28cb7f7c0dbe6724f4813f2c17c2d707c7989ff4e7e065734fa5bbad04a31"
      define_method(:install) { bin.install "truzt" }
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://pkgs.truzt.lk/release/v2.9.4/truzt_2.9.4_linux_amd64.tar.gz"
      sha256 "de465ee1d105aa70251835bc5618a743ebea09b1cf53db17b8a082c302af8818"
      define_method(:install) { bin.install "truzt" }
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://pkgs.truzt.lk/release/v2.9.4/truzt_2.9.4_linux_arm64.tar.gz"
      sha256 "e53f273c1961b8961e31543ea9289a93e4815c753611be6412207d4d3a978161"
      define_method(:install) { bin.install "truzt" }
    end
  end

  test do
    system "#{bin}/truzt version"
  end
end
