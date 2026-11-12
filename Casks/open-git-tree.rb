# Homebrew cask for GitTree (P12-T08; releases live in the public
# git-tree-app/gittree repository, ADR-0016). Rendered by
# tooling/render-manifests.py from a published release; do not edit the
# placeholders by hand.
cask "open-git-tree" do
  version "3.0.2"
  sha256 "aa11827793fdfa3a05c7493a5900afc3122407e2e479a9ca995d481e5d85cefd"

  url "https://github.com/git-tree-app/gittree/releases/download/v#{version}/Git-Tree_#{version}_universal.dmg"
  name "GitTree"
  desc "Local-first desktop Git client"
  homepage "https://gittree.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Git Tree.app"

  zap trash: [
    "~/Library/Application Support/com.eslamfaisal.opengittree",
    "~/Library/Caches/com.eslamfaisal.opengittree",
    "~/Library/Logs/com.eslamfaisal.opengittree",
  ]
end
