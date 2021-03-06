(defproject api "2.7.2-SNAPSHOT"
  :min-lein-version "2.6.1"
  :description "Optly API"
  :url "https://github.com/optly/api"
  :license {:name "MIT License"
            :url "https://mit-license.org"}
  :release-tasks [["change" "version" "leiningen.release/bump-version" "release"]
                  ["vcs" "commit"]
                  ["vcs" "tag"]
                  ["change" "version" "leiningen.release/bump-version"]
                  ["vcs" "commit"]
                  ["vcs" "push"]]
  :target-path "target/%s")
