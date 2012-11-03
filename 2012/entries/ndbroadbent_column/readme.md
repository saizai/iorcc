* title: Columns
* author: Nathan Broadbent (github: ndbroadbent), madebynathan.com

What it does:
===
Formats input into aligned columns. Accepts an optional delimiter and alignment format as arguments.

How to run it:
===

NOTE: Only runs under Ruby 1.9.3.

Run `./bin/column_demo` to see the code aligning itself in different ways.
(From the root folder, run: `./2012/entries/ndbroadbent_column/bin/column_demo`)

Pipe to `./bin/column` to justify the columns in the input. `./bin/column` accepts any of the following arguments:

* -d : Delimiter
* -a : Pipe separated alignment string
  * :- = Left justify (default)
  * -: = Right justify
  * :: = Center

Example: `-:||:-|::`  =  'right, default (left), left, center'

Use `./bin/column` to trim your username in `ls -l`:

```bash
ls -l | sed "s/$USER/${USER:0:1}/g" | ./bin/column
```

What it really does:
===

Sorry, nothing malicious! Was just having some fun with obfuscation and golfing.