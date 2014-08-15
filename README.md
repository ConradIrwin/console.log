The `console.log` gem allows you to use `console.log` in your Ruby on Rails apps.

I wrote it to solve 2 problems:
1. It's hard to use rails logs for debugging because their either noisy, or completely hidden. Using
   `console.log` lets you easily see only log messages in this request.
1. When working on the js for [Bugsnag](https://bugsnag.com/) I kept accidentally typing `console.log`
   into Rails. Now that works!

## Installation

1. Add `gem "console.log"` to your Gemfile.
    ```ruby
    gem "console.log" # makes console.log available in ruby
    ```
2. Bundle install
    ```shell
    bundle install
    ```

## Usage

In rails you can now use console.log for debugging. This means you don't need
to have the rails logs open (which is hard with servers like Pow), because log
messages will go to your browser console.

```ruby
def load_user
  user = User.where(email: 'foo@bar.com')
  console.log user
  user
end
```

![Screen shot](http://i.imgur.com/QJjjmjf.png)

### `console.log`

See the full documentation for
[console.log](https://developer.chrome.com/devtools/docs/console-api#consolelogobject-object),
which shows you how to use colour and various other formatting tweaks.

### `console.warn`

If you want a little yellow triangle beside your message, call `console.warn` instead of `console.log`.

### `console.error`

If you want your text to be bright red, call `console.error` instead of `console.log`.

## License

`console.log` is licensed under the MIT license, see LICENSE.MIT for details.
Contributions and Bug Reports welcome!
