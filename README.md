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

-- Set the step by which the 'default' backlight's brightness will be changed.
session.backlights.default.brightness_step = 10

-- Increase the 'default' backlight's brightness by 10.
session.backlights.default.inc_brightness()

-- Set the 'default' backlight's brightness to 50.
session.backlights.default.set_brightness(50)

-- Decrease 'intel_backlight' brightness by 100.
session.backlights.intel_backlight.dec_brightness(100)

-- Lock the session.
session.lock()
```

See the [API documentation](https://jcrd.github.io/lua-sessiond_dbus/) for
descriptions of all functions.

## License

lua-sessiond_dbus is licensed under the MIT License (see [LICENSE](LICENSE)).
