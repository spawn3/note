
package { [
    "chromium-browser",
    "sysstat",
    "iftop",
    "vim",
    "exuberant-ctags",
    "cscope",
    "git",
    "r-base",
    "r-base-dev",
    "rstudio",
    "python-pip",
    "openjdk-7-jdk",
    "rubygems",
    "gnome-commander",
    "screen",
    "nmon"
    ]:
    ensure => "installed",
}

package { [
    "pymongo",
    "redis",
    "python-memcached",
    "tornado",
    "web.py",
    "numpy"
    ]:
    ensure => present,
    provider => pip,
}

