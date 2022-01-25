# lua-sessiond_dbus

lua-sessiond_dbus is a lua library for interfacing with the
[sessiond](https://github.com/jcrd/sessiond) DBus service.

## Installation

```
$ git clone https://github.com/jcrd/lua-sessiond_dbus.git
$ cd lua-sessiond_dbus
$ luarocks make --local rockspec/sessiond_dbus-devel-1.rockspec
```

## Usage

```lua
session = require("sessiond_dbus")

-- Increase the 'default' backlight's brightness by 10.
session.backlights.default.inc_brightness(10)

-- Set the 'default' backlight's brightness to 50.
session.backlights.default.set_brightness(50)

-- Decrease 'intel_backlight' brightness by 100.
session.backlights.intel_backlight.dec_brightness(100)

-- Increase the 'default' audio sink's volume by 0.1.
session.audiosinks.default.inc_volume(0.1)

-- Toggle the 'default' audio sink's mute state.
session.audiosinks.default.toggle_mute()

-- Lock the session.
session.lock()

-- Inhibit.
id = session.inhibit('chromium', 'media')

-- Stop inhibitor.
session.uninhibit(id)

-- Connect callback to sessiond DBus signal.
session.connect_signal("PrepareForSleep", function (state)
    if state then
        print("Preparing for sleep...")
    end
end)

-- Add function to be called when the DBus service appears.
session.add_hook(function (appear)
    if appear then
        print("Service appeared")
    end
end)
```

See the [API documentation](https://jcrd.github.io/lua-sessiond_dbus/) for
descriptions of all functions.

## License

lua-sessiond_dbus is licensed under the MIT License (see [LICENSE](LICENSE)).
