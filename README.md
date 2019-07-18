https://github.com/ddollar/foreman/issues/694

```
$ docker build -t foreman-test .
Sending build context to Docker daemon  45.57kB
Step 1/3 : FROM ruby:2.3.5-alpine3.4
2.3.5-alpine3.4: Pulling from library/ruby
ab7e51e37a18: Pull complete
442b117d3b3d: Pull complete
7f1f0257edc6: Pull complete
65d6b2a929c4: Pull complete
Digest: sha256:a70a4f73340441c0be1634f244bc81fb70409384309fb6423aa9e3f8109b37c3
Status: Downloaded newer image for ruby:2.3.5-alpine3.4
---> 4e0e0ef6f3cf
Step 2/3 : COPY Gemfile* Procfile ./
---> 352d596970b5
Step 3/3 : RUN gem install bundler --no-document && bundle install
---> Running in c8d452e481d0
Successfully installed bundler-2.0.2
1 gem installed
Fetching gem metadata from https://rubygems.org/...
Resolving dependencies...
Using bundler 1.16.0
Fetching thor 0.19.1
Installing thor 0.19.1
Fetching foreman 0.84.0
Installing foreman 0.84.0
Bundle complete! 2 Gemfile dependencies, 3 gems now installed.
Bundled gems are installed into `/usr/local/bundle`
Removing intermediate container c8d452e481d0
---> 47d1901442bb
Successfully built 47d1901442bb
Successfully tagged foreman-test:latest
$ docker run -it foreman-test /bin/sh
/ # uname -a
Linux ab465a5c65e9 4.9.125-linuxkit #1 SMP Fri Sep 7 08:20:28 UTC 2018 x86_64 Linux
/ # ruby -v
ruby 2.3.5p376 (2017-09-14 revision 59905) [x86_64-linux-musl]
/ # bundle exec foreman start
12:18:46 test.1 | started with pid 12
12:18:46 test.1 | ruby 2.3.5p376 (2017-09-14 revision 59905) [x86_64-linux-musl]
12:18:46 test.1 | exited with code 0
12:18:46 system | sending SIGTERM to all processes
/ #
```

