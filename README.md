International Obfuscated Ruby Code Contest (IORCC)
=====

Welcome to the (n+1th) IORCC.

Your mission, should you choose to accept it, is to write the most clever, surprising, malfunctional, obfuscated Ruby code you can.

Deadline: New Year's eve, midnight UTC.


How to submit an entry
===

1. Fork this repo.
2. Rename the [this year]/entries/example directory to [this year]/entries/[your github handle]_[entry name]. If you want to be anonymous, use a new account. Naming your entry something that's a clever clue to how it works is bonus points.
3. Modify the files there per guidelines below. Leave their basic structure as is.
4. Make a pull request to this repo with your changes; title your pull request "IORCC Entry [entry name]". Please make sure that your pull only affects your own folder, not anything else. If you are intending to suggest a rule change or the like, please make that separately.

Please note that the pull will not be executed until the deadline.

Feel free to change whatever you want up until then. Also, feel free to submit up to 3 entries (so long as they're significantly different from each other).


Requirements
===

0. See the example readme.md for what it should include. Be sure to say in plain English what your code _supposedly_ does, and how to run it.
 * It should also have a Rot13 encoded section explaining what it _really_ does and _how_ it works (i.e. document whatever crazy tricks you employed).
1. You must provide a test suite that shows _what_ your code does. (You're being judged on _how_ it does that, and if it does something nonobvious.) The test suite must:
 * provide a single master rake task called :test in the namespace [entry name]. Other than that, use whatever standard test suite library you want.
 * cover a reasonable set of the functionality (and intentional dysfunctionality) of your code
 * pass
 * We'll use [use Travis CI](http://about.travis-ci.org/docs/user/languages/ruby/) to monitor it; you can too if you want.
2. You must use the most current versions of everything (i.e. Ruby 1.8/1.9, current/canonical libraries, etc)
3. You may use other libraries, so long as they're in your Gemfile and they're fairly standard libraries.
 * "Standard" means "please don't make judges have to learn some obscure library".
 * You get no credit for the library's cleverness, nor for taking advantage of what would be acknowledged as bugs in the library. (Be a good OSS citizen and just report those w/ a fix.) Basically, don't try to sneak something in through a library, but feel free to use them as normal utilities.
 * You _do_ get credit for doing something unexpected and clever with the library.
4. All your code must be <4kB (not including libraries & test).
5. Code must be self-contained, and not depend on any external resources (eg a web service). Feel free to split classes into separate files or the like for clarity.
6. Code must be 100% correct Ruby code — no errors, no warnings. If it _also_ manages to run/compile as something else, that's probably clever, but you'll have to explain how to do so — for starters, by making sure it has test coverage under the other language(s) too.
 * Don't just outright punt to some other language — eg ` ` for bash, using a C compiler library, including Java via jruby, or the like.


Judging criteria
===

1. **Cleverness / novelty.** Do something that we haven't seen before, in a way we haven't seen before, that's surprising.
2. **Deviousness.** Make ordinary-looking code do the opposite of what it seems like it'd do; make easter eggs that are hard to spot; etc.
 * Note: obfuscation that's in the spirit of e.g. C #define abuse, compiler flag abuse, or just minification _isn't_ clever, it's annoying to read.
 * Please try to make your code aesthetic — i.e. either clearly readable & well formatted, or pretty in an ascii-art way, or its weird layout is somehow part of its trick.
 * Feel free to be malicious in context (eg [set up some task the code's "supposed" to do that it's devious about](http://underhanded.xcott.com/)) — don't hack people running the code.
3. **Stand-out-ish-ness.** Do something awesome that we wouldn't have thought to name a category for.

If you aren't a contestant and want to be a judge, email Sai at iorcc@saizai.com.