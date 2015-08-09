# alpine-ruby-fat

Ruby + Alpine for Rocket ACI conversion, focused on running Rails.

    FROM nowk/alpine-ruby:2.2.2


Includes everything in *nowk/alpine-ruby* and core dependencies to successfully
`bundle install` on a Rails app.


| Stats             |          |
| ----------------- | -------- |
| Docker Image Size | ~269 MB  |
| Rocket ACI Size   | ~81 MB   |

---

`ENV` variables

    RUBY_MAJOR        2.2
    RUBY_VERSION      2.2.2
    BUNDLER_VERSION   1.10.5
    GEM_HOME          /usr/local/bundle
    BUNDLE_APP_CONFIG $GEM_HOME
    PATH              $GEM_HOME/bin:$PATH

