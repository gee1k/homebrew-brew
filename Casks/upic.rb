# frozen_string_literal: true

cask "upic" do
  version "0.21.0"
  sha256 "6957497e865b7ecba634ddbba77001f0881fbe7402c1381a470e0f201bdb677c"

  url "https://github.com/gee1k/uPic/releases/download/v#{version}/uPic.zip"
  appcast "https://github.com/gee1k/uPic/releases.atom"
  name "uPic"
  homepage "https://github.com/gee1k/uPic"

  depends_on macos: ">= :sierra"

  app "uPic.app"

  zap trash: [
    "~/Library/Preferences/com.svend.uPic.plist",
    "~/Library/Caches/com.svend.uPic",
  ]
end
