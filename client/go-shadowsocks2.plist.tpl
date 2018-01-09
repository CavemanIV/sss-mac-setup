<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <dict>
        <key>Label</key>
        <string>go-shadowsocks2</string>

        <key>ProgramArguments</key>
        <array>
            <string>/usr/local/bin/go-shadowsocks2</string>
            <string>-c</string>
            <string>${ss_conn_str}</string>
            <string>-verbose</string>
            <string>-socks</string>
            <string>:1080</string>
        </array>

        <key>RunAtLoad</key>
        <true/>
    </dict>
</plist>
