International Obfuscated Ruby Code Contest (IORCC)
=====

Welcome to the (n+1th) IORCC. (#1 ran in 2006, but is sadly now [down](http://www.rubyinside.com/advent2006/4-ruby-obfuscation.html).)

Your mission, should you choose to accept it, is to write the most clever, surprising, malfunctional, obfuscated Ruby code you can.

Deadline: New Year's eve, midnight UTC.


How to submit an entry
===

1. Fork this repo.
2. Copy the example `2012/entries/saizai_tic_tac_toe` directory to `2012/entries/[your github handle]_[your entry name]`. 
 * If you want to be anonymous, use a new account. Naming your entry something that's a clever clue to how it works is bonus style points.
3. Modify the files there per guidelines below. Leave their basic structure as is — Gemfile, entry_name.rake, readme, code/, and test/.
4. Be sure that your tests pass.
5. Make a pull request to this repo with your changes; title your pull request "IORCC Entry [entry name]". 
 * Please make sure that your pull only is for your own folder, not anything else. If you are intending to suggest a rule change or the like, please make that separately.

Please note that the pull will not be executed until the deadline, so feel free to change whatever you want up until then. 

Also, feel free to submit up to 3 entries (so long as they're significantly different from each other).

Have fun.


Requirements
===

0. See the example readme.md for what it should include. Be sure to say in plain English what your code _supposedly_ does, and how to run it.
 * It should also have a Rot13 encoded section explaining what it _really_ does and _how_ it works (i.e. document whatever crazy tricks you employed).
1. You must provide a test suite that shows _what_ your code does. (You're being judged on _how_ it does that, and if it does something nonobvious.) The test suite must:
 * provide a single master rake task called :test in the namespace [entry name]. Other than that, use whatever standard test suite library you want.
 * cover a reasonable set of the functionality (and intentional dysfunctionality) of your code
 * fully pass
 We'll use [use Travis CI](http://about.travis-ci.org/docs/user/languages/ruby/) to monitor it; you can too if you want; just [go here](https://travis-ci.org), sign in,  turn it on for your fork of this repo, and swap out saizai for your github username here: [![Build Status](https://travis-ci.org/saizai/iorcc.png)](https://travis-ci.org/saizai/iorcc). Assuming you have a test rake task, it should work automagically when you push.
2. You may use other libraries, so long as they're in your Gemfile and they're fairly standard libraries.
 * "Standard" means "please don't make judges have to learn some obscure library".
 * You get no credit for the library's cleverness, nor for taking advantage of what would be acknowledged as bugs in the library. (Be a good OSS citizen and just report those w/ a fix.) Basically, don't try to sneak something in through a library, but feel free to use them as normal utilities.
 * You _do_ get credit for doing something unexpected and clever with it.
3. You must use current versions of everything (i.e. Ruby 1.8/1.9, current/canonical libraries, etc)
4. All your code must be <~4kB (not including libraries & test). Don't use gzip packing or the like.
5. Code must be self-contained, and not depend on any external resources (eg a web service).
 * Feel free to split classes into separate files or the like for clarity.
6. Code must be 100% correct Ruby code — no errors, no warnings. 
 * If it _also_ manages to run/compile as some other language, that's probably quite clever, but you'll have to provide test coverage for the other language(s) too.
 * Don't just outright punt to some other language — eg ` ` for bash, using a C compiler library, including Java via jruby, or the like.


Judging criteria
===

1. **Cleverness / novelty.** Do something that we haven't seen before, in a way we haven't seen before, that's surprising.
2. **Deviousness.** Make ordinary-looking code do the opposite of what it seems like it'd do; make easter eggs that are hard to spot; etc.
 * Note: obfuscation that's in the spirit of e.g. C #define abuse, compiler flag abuse, or just minification _isn't_ clever, it's annoying to read.
 * Please try to make your code aesthetic — i.e. either clearly readable & well formatted, or pretty in an ascii-art way, or its weird layout is somehow part of its trick.
 * Feel free to be malicious in context (eg [set up some task the code's "supposed" to do that it's devious about](http://underhanded.xcott.com/)) — don't hack people running the code.
3. **Stand-out-ish-ness.** Do something awesome that we wouldn't have thought to name a category for.

If you aren't a contestant and want to be a judge, email Sai at iorcc@saizai.com. You'll have a few weeks at the start of January to judgificate.

If you have any other questions, please contact Sai at [twitter](http://twitter.com/saizai) or [g+](http://profiles.google.com/saizai).