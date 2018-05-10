export TERM="xterm-256color"
export EDITOR=nvim
setopt PROMPT_SUBST
alias prt="import test.png"
# For Golang
export GOPATH=/home/changvvb/go
export RUBYPATH=/home/changvvb/.gem/ruby/2.4.0
export PATH=$PATH:$GOPATH/bin:$RUBYPATH/bin:/opt/android/android-studio/bin:/usr/local/go/bin:/opt/node-v8.9.1-linux-x64/bin
alias run="go run main.go"
alias vim="nvim"

# For Swift
export SWIFTPATH=/opt/swift-DEVELOPMENT-SNAPSHOT-2017-04-24-a-ubuntu16.10/usr/bin
export PATH=$SWIFTPATH:$PATH

#proxy
# export http_proxy=http://127.0.0.1:3128/
export https_proxy=$http_proxy
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$HTTP_PROXY
export ftp_proxy=$http_proxy
export ALL_PROXY=$http_proxy
export all_proxy=$http_proxy
alias unsetproxy="unset http_proxy && unset https_proxy && unset HTTP_PROXY && unset HTTPS_PROXY && unset ALL_PROXY && unset ftp_proxy && unset all_proxy && echo OK"
# unsetproxy

export ZSH=/home/changvvb/.oh-my-zsh

# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/

# For Esp8266
# alias espmake="make -f /home/changvvb/Projects/makeEspArduino/makeEspArduino.mk"
# export SDK_PATH=~/esp8266/ESP8266_RTOS_SDK
# export BIN_PATH=~/esp8266/project/template/bin
#
#For pkg-config
# export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/home/changvvb/iotivity/out/linux/x86_64/release/lib/pkgconfig


# Setup alljoyn environment 
# export AJ_ROOT=/home/changvvb/alljoynRoot
# export AJ_DIST="$AJ_ROOT/core/alljoyn/build/linux/x86_64/debug/dist"
# export ALLJOYN_DISTDIR=$AJ_DIST
# export LD_LIBRARY_PATH=/home/changvvb/alljoynRoot/core/alljoyn/build/linux/x86_64/debug/dist/cpp/lib:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=/home/changvvb/alljoynRoot/gateway/gwagent/build/linux/x86_64/debug/dist/notification/lib:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=/home/changvvb/alljoynRoot/gateway/gwagent/build/linux/x86_64/debug/dist/gatewayConnector/lib:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=/home/changvvb/alljoynRoot/gateway/gwagent/build/linux/x86_64/debug/dist/services_common/lib:$LD_LIBRARY_PATH
# # export LD_LIBRARY_PATH=/home/changvvb/Downloads/iotivity-1.2.1/out/linux/x86_64/release:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=/home/changvvb/iotivity/out/linux/x86_64/release:$LD_LIBRARY_PATH
# export PATH=/home/changvvb/alljoynRoot/core/alljoyn/build/linux/x86_64/debug/dist/cpp/bin:$PATH
# #for ajtcl
# export LD_LIBRARY_PATH=/home/changvvb/alljoynRoot/core/ajtcl/dist/lib:$LD_LIBRARY_PATH
#
# export CXXFLAGS="$CXXFLAGS \
#     -I$AJ_DIST/cpp/inc \
#     -I$AJ_DIST/about/inc \
#     -I$AJ_DIST/services_common/inc \
#     -I$AJ_DIST/notification/inc \
#     -I$AJ_DIST/controlpanel/inc \
#     -I$AJ_DIST/services_common/inc \
#     -I$AJ_DIST/samples_common/inc"
#
# export LDFLAGS="$LDFLAGS \
#     -L$AJ_DIST/cpp/lib \
#     -L$AJ_DIST/about/lib \
#     -L$AJ_DIST/services_common/lib \
#     -L$AJ_DIST/notification/lib \
#     -L$AJ_DIST/controlpanel/lib"
#
# for java
export CLASSPATH=/opt/jdk1.7.0_25/lib
# export CLASSPATH=/usr/share/java
# export CLASSPATH=/usr/lib/jvm/java-8-openjdk-amd64/jre/lib
export JAVA_HOME=/opt/jdk1.7.0_25
# export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# for XX-Net
alias overwall='nohup /home/changvvb/XX-Net/start > /dev/null &'
alias hotspot='sudo create_ap wlan0 eth0 changvvb 1234567890 '

# For google app engine
export PATH=$PATH:/home/changvvb/project/google-cloud-sdk/bin


# for adb
setopt no_nomatch

# for ibus
# export XMODIFIERS=@im=SCIM
# export GTK_IM_MODULE=scim
# export QT_IM_MODULE=scim
# ibus-daemon -d -x
#
export XMODIFIERS=@im=fcitx
