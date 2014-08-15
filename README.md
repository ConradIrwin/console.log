The `console.log` gem allows you to log to the Javascript console from ruby/rails apps.

## Usage

1. Call `console.log` in rails.

    ```ruby
    def load_user
      user = User.where(email: 'foo@bar.com')
      console.log "User: ", user
      user
    end
    ```

2. Open your browser's developer console.

    ![Screen shot](http://i.imgur.com/QJjjmjf.png)

3. (optional) Scream with delight!

## Installation

1. Add `gem "console.log"` to your Gemfile.

    ```ruby
    gem "console.log" # makes console.log available in ruby
    ```

2. Bundle install

    ```shell
    bundle install
    ```
## Reference

### `console.log`

See the full documentation for
[console.log](https://developer.chrome.com/devtools/docs/console-api#consolelogobject-object),
which shows you how to use colour and various other formatting tweaks.

### `console.warn`

If you want a little yellow triangle beside your message, call `console.warn` instead of `console.log`.

### `console.error`

If you want your text to be bright red, call `console.error` instead of `console.log`.

## Why??

I wrote it to solve 2 problems:

1. It's hard to use rails logs for debugging because they're noisy, or (if you use something like pow)
   completely hidden. Using `console.log` lets you easily see only log messages in this request.
1. When working on the js for [Bugsnag](https://bugsnag.com/) I kept accidentally typing `console.log`
   into Rails. Now that works!

## License

`console.log` is licensed under the MIT license, see LICENSE.MIT for details.
Contributions and Bug Reports welcome!
