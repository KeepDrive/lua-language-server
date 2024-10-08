---@diagnostic disable: undefined-global, lowercase-global

arg                 =
'Command-line arguments of Lua Standalone.'

assert              =
'Raises an error if the value of its argument v is false (i.e., `nil` or `false`); otherwise, returns all its arguments. In case of error, `message` is the error object; when absent, it defaults to `"assertion failed!"`'

cgopt.collect       =
'Performs a full garbage-collection cycle.'
cgopt.stop          =
'Stops automatic execution.'
cgopt.restart       =
'Restarts automatic execution.'
cgopt.restartCYF    =
'Also performs a full garbage-collection cycle.'
cgopt.count         =
'Returns the total memory in Kbytes.'
cgopt.step          =
'Performs a garbage-collection step.'
cgopt.setpause      =
'Set `pause`.'
cgopt.setstepmul    =
'Set `step multiplier`.'
cgopt.incremental   =
'Change the collector mode to incremental.'
cgopt.generational  =
'Change the collector mode to generational.'
cgopt.isrunning     =
'Returns whether the collector is running.'

collectgarbage      =
'This function is a generic interface to the garbage collector. It performs different functions according to its first argument, `opt`.'
collectgarbageCYF   =
'This function is a generic interface to the garbage collector. You can supply an `opt` string and an `arg` integer, but they go mostly ignored, any valid `opt` will just do a garbage-collection cycle, the rest do nothing.'
dofile              =
'Opens the named file and executes its content as a Lua chunk. When called without arguments, `dofile` executes the content of the standard input (`stdin`). Returns all values returned by the chunk. In case of errors, `dofile` propagates the error to its caller. (That is, `dofile` does not run in protected mode.)'

error               =
[[
Terminates the last protected function called and returns message as the error object.

Usually, `error` adds some information about the error position at the beginning of the message, if the message is a string.
]]

_G                  =
'A global variable (not a function) that holds the global environment (see §2.2). Lua itself does not use this variable; changing its value does not affect any environment, nor vice versa.'

_MOONSHARP          =
'Table with MoonSharp data.'
_MOONSHARP.version  =
'MoonSharp version.'
_MOONSHARP.luacompat=
'MoonSharp Lua version.'
_MOONSHARP.platform =
'MoonSharp platform name.'
_MOONSHARP.is_aot   =
'True if on an ahead-of-time compilation platform.'
_MOONSHARP.is_unity =
'True if running on Unity.'
_MOONSHARP.is_mono  =
'True if running on Mono.'
_MOONSHARP.is_clr4  =
'True if running on .NET 4.'
_MOONSHARP.is_pcl   =
'True if running as a portable class library.'
_MOONSHARP.banner   =
'MoonSharp REPL banner containing version and copyright info.'

getfenv             =
'Returns the current environment in use by the function. `f` can be a Lua function or a number that specifies the function at that stack level.'

getmetatable        =
'If object does not have a metatable, returns nil. Otherwise, if the object\'s metatable has a __metatable field, returns the associated value. Otherwise, returns the metatable of the given object.'

ipairs              =
[[
Returns three values (an iterator function, the table `t`, and `0`) so that the construction
```lua
    for i,v in ipairs(t) do body end
```
will iterate over the key–value pairs `(1,t[1]), (2,t[2]), ...`, up to the first absent index.
]]

loadmode.b          =
'Only binary chunks.'
loadmode.t          =
'Only text chunks.'
loadmode.bt         =
'Both binary and text.'

load['<5.1']        =
'Loads a chunk using function `func` to get its pieces. Each call to `func` must return a string that concatenates with previous results.'
load['>5.2']        =
[[
Loads a chunk.

If `chunk` is a string, the chunk is this string. If `chunk` is a function, `load` calls it repeatedly to get the chunk pieces. Each call to `chunk` must return a string that concatenates with previous results. A return of an empty string, `nil`, or no value signals the end of the chunk.
]]

loadsafe            =
[[
Same as `load`, except `env` defaults to `_ENV`, instead of `_G`.
]]

loadfile            =
'Loads a chunk from file `filename` or from the standard input, if no file name is given.'

loadfilesafe        =
[[
Same as `loadfile`, except `env` defaults to `_ENV`, instead of `_G`.
]]

loadstring          =
'Loads a chunk from the given string.'

module              =
'Creates a module.'

next                =
[[
Allows a program to traverse all fields of a table. Its first argument is a table and its second argument is an index in this table. A call to `next` returns the next index of the table and its associated value. When called with `nil` as its second argument, `next` returns an initial index and its associated value. When called with the last index, or with `nil` in an empty table, `next` returns `nil`. If the second argument is absent, then it is interpreted as `nil`. In particular, you can use `next(t)` to check whether a table is empty.

The order in which the indices are enumerated is not specified, *even for numeric indices*. (To traverse a table in numerical order, use a numerical `for`.)

The behavior of `next` is undefined if, during the traversal, you assign any value to a non-existent field in the table. You may however modify existing fields. In particular, you may set existing fields to nil.
]]

pairs               =
[[
If `t` has a metamethod `__pairs`, calls it with t as argument and returns the first three results from the call.

Otherwise, returns three values: the $next function, the table `t`, and `nil`, so that the construction
```lua
    for k,v in pairs(t) do body end
```
will iterate over all key–value pairs of table `t`.

See function $next for the caveats of modifying the table during its traversal.
]]

pcall               =
[[
Calls the function `f` with the given arguments in *protected mode*. This means that any error inside `f` is not propagated; instead, `pcall` catches the error and returns a status code. Its first result is the status code (a boolean), which is true if the call succeeds without errors. In such case, `pcall` also returns all results from the call, after this first result. In case of any error, `pcall` returns `false` plus the error object.
]]

print               =
[[
Receives any number of arguments and prints their values to `stdout`, converting each argument to a string following the same rules of $tostring.
The function print is not intended for formatted output, but only as a quick way to show a value, for instance for debugging. For complete control over the output, use $string.format and $io.write.
]]

printCYF            =
'Prints arguments to `stdout`, but `stdout` is unavailable in CYF, if you want to write text to the debugger use @(cyf-api-functions-main)DEBUG instead.'

rawequal            =
'Checks whether v1 is equal to v2, without invoking the `__eq` metamethod.'

rawget              =
'Gets the real value of `table[index]`, without invoking the `__index` metamethod.'

rawlen              =
'Returns the length of the object `v`, without invoking the `__len` metamethod.'

rawset              =
[[
Sets the real value of `table[index]` to `value`, without using the `__newindex` metavalue. `table` must be a table, `index` any value different from `nil` and `NaN`, and `value` any Lua value.
This function returns `table`.
]]

select              =
'If `index` is a number, returns all arguments after argument number `index`; a negative number indexes from the end (`-1` is the last argument). Otherwise, `index` must be the string `"#"`, and `select` returns the total number of extra arguments it received.'

setfenv             =
'Sets the environment to be used by the given function.'

setmetatable        =
[[
Sets the metatable for the given table. If `metatable` is `nil`, removes the metatable of the given table. If the original metatable has a `__metatable` field, raises an error.

This function returns `table`.

To change the metatable of other types from Lua code, you must use the debug library (§6.10).
]]

tonumber            =
[[
When called with no `base`, `tonumber` tries to convert its argument to a number. If the argument is already a number or a string convertible to a number, then `tonumber` returns this number; otherwise, it returns `fail`.

The conversion of strings can result in integers or floats, according to the lexical conventions of Lua (see §3.1). The string may have leading and trailing spaces and a sign.
]]

tostring            =
[[
Receives a value of any type and converts it to a string in a human-readable format.

If the metatable of `v` has a `__tostring` field, then `tostring` calls the corresponding value with `v` as argument, and uses the result of the call as its result. Otherwise, if the metatable of `v` has a `__name` field with a string value, `tostring` may use that string in its final result.

For complete control of how numbers are converted, use $string.format.
]]

type                =
[[
Returns the type of its only argument, coded as a string. The possible results of this function are `"nil"` (a string, not the value `nil`), `"number"`, `"string"`, `"boolean"`, `"table"`, `"function"`, `"thread"`, and `"userdata"`.
]]

_VERSION            =
'A global variable (not a function) that holds a string containing the running Lua version.'

warn                =
'Emits a warning with a message composed by the concatenation of all its arguments (which should be strings).'

xpcall['=5.1']      =
'Calls function `f` with the given arguments in protected mode with a new message handler.'
xpcall['>5.2']      =
'Calls function `f` with the given arguments in protected mode with a new message handler.'

unpack              =
[[
Returns the elements from the given `list`. This function is equivalent to
```lua
    return list[i], list[i+1], ···, list[j]
```
]]

pack                =
[[
Same as `table.pack`.
Returns a new table with all arguments stored into keys `1`, `2`, etc. and with a field `"n"` with the total number of arguments.
]]

bit32               =
''
bit32.arshift       =
[[
Returns the number `x` shifted `disp` bits to the right. Negative displacements shift to the left.

This shift operation is what is called arithmetic shift. Vacant bits on the left are filled with copies of the higher bit of `x`; vacant bits on the right are filled with zeros.
]]
bit32.band          =
'Returns the bitwise *and* of its operands.'
bit32.bnot          =
[[
Returns the bitwise negation of `x`.

```lua
assert(bit32.bnot(x) ==
(-1 - x) % 2^32)
```
]]
bit32.bor           =
'Returns the bitwise *or* of its operands.'
bit32.btest         =
'Returns a boolean signaling whether the bitwise *and* of its operands is different from zero.'
bit32.bxor          =
'Returns the bitwise *exclusive or* of its operands.'
bit32.extract       =
'Returns the unsigned number formed by the bits `field` to `field + width - 1` from `n`.'
bit32.replace       =
'Returns a copy of `n` with the bits `field` to `field + width - 1` replaced by the value `v` .'
bit32.lrotate       =
'Returns the number `x` rotated `disp` bits to the left. Negative displacements rotate to the right.'
bit32.lshift        =
[[
Returns the number `x` shifted `disp` bits to the left. Negative displacements shift to the right. In any direction, vacant bits are filled with zeros.

```lua
assert(bit32.lshift(b, disp) ==
(b * 2^disp) % 2^32)
```
]]
bit32.rrotate       =
'Returns the number `x` rotated `disp` bits to the right. Negative displacements rotate to the left.'
bit32.rshift        =
[[
Returns the number `x` shifted `disp` bits to the right. Negative displacements shift to the left. In any direction, vacant bits are filled with zeros.

```lua
assert(bit32.rshift(b, disp) ==
math.floor(b % 2^32 / 2^disp))
```
]]

coroutine                   =
''
coroutine.create            =
'Creates a new coroutine, with body `f`. `f` must be a function. Returns this new coroutine, an object with type `"thread"`.'
coroutine.isyieldable       =
'Returns true when the running coroutine can yield.'
coroutine.isyieldable['>5.4']=
'Returns true when the coroutine `co` can yield. The default for `co` is the running coroutine.'
coroutine.close             =
'Closes coroutine `co` , closing all its pending to-be-closed variables and putting the coroutine in a dead state.'
coroutine.resume            =
'Starts or continues the execution of coroutine `co`.'
coroutine.running           =
'Returns the running coroutine plus a boolean, true when the running coroutine is the main one.'
coroutine.status            =
'Returns the status of coroutine `co`.'
coroutine.wrap              =
'Creates a new coroutine, with body `f`; `f` must be a function. Returns a function that resumes the coroutine each time it is called.'
coroutine.yield             =
'Suspends the execution of the calling coroutine.'

costatus.running            =
'Is running.'
costatus.suspended          =
'Is suspended or not started.'
costatus.normal             =
'Is active but not running.'
costatus.dead               =
'Has finished or stopped with an error.'

debug                       =
''
debug.debug                 =
'Enters an interactive mode with the user, running each string that the user enters.'
debug.debugCYF              =
'This function should enter an interactive debug mode for the user, but there\'s no way to input anything to it in CYF, so it leaves the engine frozen.'
debug.getfenv               =
'Returns the environment of object `o` .'
debug.gethook               =
'Returns the current hook settings of the thread.'
debug.getinfo               =
'Returns a table with information about a function.'
debug.getlocal['<5.1']      =
'Returns the name and the value of the local variable with index `local` of the function at level `level` of the stack.'
debug.getlocal['>5.2']      =
'Returns the name and the value of the local variable with index `local` of the function at level `f` of the stack.'
debug.getmetatable          =
'Returns the metatable of the given value.'
debug.getregistry           =
'Returns the registry table.'
debug.getupvalue            =
'Returns the name and the value of the upvalue with index `up` of the function.'
debug.getuservalue['<5.3']  =
'Returns the Lua value associated to u.'
debug.getuservalue['>5.4']  =
[[
Returns the `n`-th user value associated
to the userdata `u` plus a boolean,
`false` if the userdata does not have that value.
]]
debug.setcstacklimit        =
[[
### **Deprecated in `Lua 5.4.2`**

Sets a new limit for the C stack. This limit controls how deeply nested calls can go in Lua, with the intent of avoiding a stack overflow.

In case of success, this function returns the old limit. In case of error, it returns `false`.
]]
debug.setfenv               =
'Sets the environment of the given `object` to the given `table` .'
debug.sethook               =
'Sets the given function as a hook.'
debug.setlocal              =
'Assigns the `value` to the local variable with index `local` of the function at `level` of the stack.'
debug.setmetatable          =
'Sets the metatable for the given value to the given table (which can be `nil`).'
debug.setupvalue            =
'Assigns the `value` to the upvalue with index `up` of the function.'
debug.setuservalue['<5.3']  =
'Sets the given value as the Lua value associated to the given udata.'
debug.setuservalue['>5.4']  =
[[
Sets the given `value` as
the `n`-th user value associated to the given `udata`.
`udata` must be a full userdata.
]]
debug.traceback             =
'Returns a string with a traceback of the call stack. The optional message string is appended at the beginning of the traceback.'
debug.upvalueid             =
'Returns a unique identifier (as a light userdata) for the upvalue numbered `n` from the given function.'
debug.upvaluejoin           =
'Make the `n1`-th upvalue of the Lua closure `f1` refer to the `n2`-th upvalue of the Lua closure `f2`.'

infowhat.n                  =
'`name` and `namewhat`'
infowhat.S                  =
'`source`, `short_src`, `linedefined`, `lastlinedefined`, and `what`'
infowhat.SCYF               =
'`source`, `short_src`, and `what`'
infowhat.l                  =
'`currentline`'
infowhat.t                  =
'`istailcall`'
infowhat.u['<5.1']          =
'`nups`'
infowhat.u['>5.2']          =
'`nups`, `nparams`, and `isvararg`'
infowhat.f                  =
'`func`'
infowhat.r                  =
'`ftransfer` and `ntransfer`'
infowhat.L                  =
'`activelines`'

hookmask.c                  =
'Calls hook when Lua calls a function.'
hookmask.r                  =
'Calls hook when Lua returns from a function.'
hookmask.l                  =
'Calls hook when Lua enters a new line of code.'

file                        =
''
file[':close']              =
'Close `file`.'
file[':flush']              =
'Saves any written data to `file`.'
file[':lines']              =
[[
------
```lua
for c in file:lines(...) do
    body
end
```
]]
file[':read']               =
'Reads the `file`, according to the given formats, which specify what to read.'
file[':seek']               =
'Sets and gets the file position, measured from the beginning of the file.'
file[':setvbuf']            =
'Sets the buffering mode for an output file.'
file[':write']              =
'Writes the value of each of its arguments to `file`.'

readmode.n                  =
'Reads a numeral and returns it as number.'
readmode.a                  =
'Reads the whole file.'
readmode.l                  =
'Reads the next line skipping the end of line.'
readmode.L                  =
'Reads the next line keeping the end of line.'

seekwhence.set              =
'Base is beginning of the file.'
seekwhence.cur              =
'Base is current position.'
seekwhence['.end']          =
'Base is end of file.'

vbuf.no                     =
'Output operation appears immediately.'
vbuf.full                   =
'Performed only when the buffer is full.'
vbuf.line                   =
'Buffered until a newline is output.'

io                          =
''
io.stdin                    =
'standard input.'
io.stdout                   =
'standard output.'
io.stderr                   =
'standard error.'
io.close                    =
'Close `file` or default output file.'
io.flush                    =
'Saves any written data to default output file.'
io.input                    =
'Sets `file` as the default input file.'
io.lines                    =
[[
------
```lua
for c in io.lines(filename, ...) do
    body
end
```
]]
io.open                     =
'Opens a file, in the mode specified in the string `mode`.'
io.output                   =
'Sets `file` as the default output file.'
io.popen                    =
'Starts program prog in a separated process.'
io.read                     =
'Reads the `file`, according to the given formats, which specify what to read.'
io.tmpfile                  =
'In case of success, returns a handle for a temporary file.'
io.type                     =
'Checks whether `obj` is a valid file handle.'
io.write                    =
'Writes the value of each of its arguments to default output file.'

openmode.r                  =
'Read mode.'
openmode.w                  =
'Write mode.'
openmode.a                  =
'Append mode.'
openmode['.r+']             =
'Update mode, all previous data is preserved.'
openmode['.w+']             =
'Update mode, all previous data is erased.'
openmode['.a+']             =
'Append update mode, previous data is preserved, writing is only allowed at the end of file.'
openmode.rb                 =
'Read mode. (in binary mode.)'
openmode.wb                 =
'Write mode. (in binary mode.)'
openmode.ab                 =
'Append mode. (in binary mode.)'
openmode['.r+b']            =
'Update mode, all previous data is preserved. (in binary mode.)'
openmode['.w+b']            =
'Update mode, all previous data is erased. (in binary mode.)'
openmode['.a+b']            =
'Append update mode, previous data is preserved, writing is only allowed at the end of file. (in binary mode.)'

popenmode.r                 =
'Read data from this program by `file`.'
popenmode.w                 =
'Write data to this program by `file`.'

filetype.file               =
'Is an open file handle.'
filetype['.closed file']    =
'Is a closed file handle.'
filetype['.nil']            =
'Is not a file handle.'

math                        =
''
math.abs                    =
'Returns the absolute value of `x`.'
math.acos                   =
'Returns the arc cosine of `x` (in radians).'
math.asin                   =
'Returns the arc sine of `x` (in radians).'
math.atan['<5.2']           =
'Returns the arc tangent of `x` (in radians).'
math.atan['>5.3']           =
'Returns the arc tangent of `y/x` (in radians).'
math.atan2                  =
'Returns the arc tangent of `y/x` (in radians).'
math.ceil                   =
'Returns the smallest integral value larger than or equal to `x`.'
math.cos                    =
'Returns the cosine of `x` (assumed to be in radians).'
math.cosh                   =
'Returns the hyperbolic cosine of `x` (assumed to be in radians).'
math.deg                    =
'Converts the angle `x` from radians to degrees.'
math.exp                    =
'Returns the value `e^x` (where `e` is the base of natural logarithms).'
math.floor                  =
'Returns the largest integral value smaller than or equal to `x`.'
math.fmod                   =
'Returns the remainder of the division of `x` by `y` that rounds the quotient towards zero.'
math.frexp                  =
'Decompose `x` into tails and exponents. Returns `m` and `e` such that `x = m * (2 ^ e)`, `e` is an integer and the absolute value of `m` is in the range [0.5, 1) (or zero when `x` is zero).'
math.huge                   =
'A value larger than any other numeric value.'
math.ldexp                  =
'Returns `m * (2 ^ e)` .'
math.log['<5.1']            =
'Returns the natural logarithm of `x` .'
math.log['>5.2']            =
'Returns the logarithm of `x` in the given base.'
math.log10                  =
'Returns the base-10 logarithm of x.'
math.max                    =
'Returns the argument with the maximum value, according to the Lua operator `<`.'
math.maxinteger['>5.3']     =
'An integer with the maximum value for an integer.'
math.min                    =
'Returns the argument with the minimum value, according to the Lua operator `<`.'
math.mininteger['>5.3']     =
'An integer with the minimum value for an integer.'
math.modf                   =
'Returns the integral part of `x` and the fractional part of `x`.'
math.pi                     =
'The value of *π*.'
math.pow                    =
'Returns `x ^ y` .'
math.rad                    =
'Converts the angle `x` from degrees to radians.'
math.random                 =
[[
* `math.random()`: Returns a float in the range [0,1).
* `math.random(n)`: Returns a integer in the range [1, n].
* `math.random(m, n)`: Returns a integer in the range [m, n].
]]
math.randomseed['<5.3']     =
'Sets `x` as the "seed" for the pseudo-random generator.'
math.randomseed['>5.4']     =
[[
* `math.randomseed(x, y)`: Concatenate `x` and `y` into a 128-bit `seed` to reinitialize the pseudo-random generator.
* `math.randomseed(x)`: Equate to `math.randomseed(x, 0)` .
* `math.randomseed()`: Generates a seed with a weak attempt for randomness.
]]
math.sin                    =
'Returns the sine of `x` (assumed to be in radians).'
math.sinh                   =
'Returns the hyperbolic sine of `x` (assumed to be in radians).'
math.sqrt                   =
'Returns the square root of `x`.'
math.tan                    =
'Returns the tangent of `x` (assumed to be in radians).'
math.tanh                   =
'Returns the hyperbolic tangent of `x` (assumed to be in radians).'
math.tointeger['>5.3']      =
'If the value `x` is convertible to an integer, returns that integer.'
math.type['>5.3']           =
'Returns `"integer"` if `x` is an integer, `"float"` if it is a float, or `nil` if `x` is not a number.'
math.ult['>5.3']            =
'Returns `true` if and only if `m` is below `n` when they are compared as unsigned integers.'

os                          =
''
os.clock                    =
'Returns an approximation of the amount in seconds of CPU time used by the program.'
os.date                     =
'Returns a string or a table containing date and time, formatted according to the given string `format`.'
os.difftime                 =
'Returns the difference, in seconds, from time `t1` to time `t2`.'
os.execute                  =
'Passes `command` to be executed by an operating system shell.'
os.exit['<5.1']             =
'Calls the C function `exit` to terminate the host program.'
os.exit['>5.2']             =
'Calls the ISO C function `exit` to terminate the host program.'
os.getenv                   =
'Returns the value of the process environment variable `varname`.'
os.remove                   =
'Deletes the file with the given name.'
os.rename                   =
'Renames the file or directory named `oldname` to `newname`.'
os.setlocale                =
'Sets the current locale of the program.'
os.time                     =
'Returns the current time when called without arguments, or a time representing the local date and time specified by the given table.'
os.tmpname                  =
'Returns a string with a file name that can be used for a temporary file.'

osdate.year                 =
'four digits'
osdate.month                =
'1-12'
osdate.day                  =
'1-31'
osdate.hour                 =
'0-23'
osdate.min                  =
'0-59'
osdate.sec                  =
'0-61'
osdate.wday                 =
'weekday, 1–7, Sunday is 1'
osdate.yday                 =
'day of the year, 1–366'
osdate.isdst                =
'daylight saving flag, a boolean'

package                     =
''

require['<5.3']             =
'Loads the given module, returns any value returned by the given module(`true` when `nil`).'
require['>5.4']             =
'Loads the given module, returns any value returned by the searcher(`true` when `nil`). Besides that value, also returns as a second result the loader data returned by the searcher, which indicates how `require` found the module. (For instance, if the module came from a file, this loader data is the file path.)'

package.config              =
'A string describing some compile-time configurations for packages.'
package.cpath               =
'The path used by `require` to search for a C loader.'
package.loaded              =
'A table used by `require` to control which modules are already loaded.'
package.loaders             =
'A table used by `require` to control how to load modules.'
package.loadlib             =
'Dynamically links the host program with the C library `libname`.'
package.path                =
'The path used by `require` to search for a Lua loader.'
package.preload             =
'A table to store loaders for specific modules.'
package.searchers           =
'A table used by `require` to control how to load modules.'
package.searchpath          =
'Searches for the given `name` in the given `path`.'
package.seeall              =
'Sets a metatable for `module` with its `__index` field referring to the global environment, so that this module inherits values from the global environment. To be used as an option to function `module` .'

string                      =
''
string.byte                 =
'Returns the internal numeric codes of the characters `s[i], s[i+1], ..., s[j]`.'
string.char                 =
'Returns a string with length equal to the number of arguments, in which each character has the internal numeric code equal to its corresponding argument.'
string.dump                 =
'Returns a string containing a binary representation (a *binary chunk*) of the given function.'
string.find                 =
'Looks for the first match of `pattern` (see §6.4.1) in the string.'
string.format               =
'Returns a formatted version of its variable number of arguments following the description given in its first argument.'
string.gmatch               =
[[
Returns an iterator function that, each time it is called, returns the next captures from `pattern` (see §6.4.1) over the string s.

As an example, the following loop will iterate over all the words from string s, printing one per line:
```lua
    s =
"hello world from Lua"
    for w in string.gmatch(s, "%a+") do
        print(w)
    end
```
]]
string.gsub                 =
'Returns a copy of s in which all (or the first `n`, if given) occurrences of the `pattern` (see §6.4.1) have been replaced by a replacement string specified by `repl`.'
string.len                  =
'Returns its length.'
string.lower                =
'Returns a copy of this string with all uppercase letters changed to lowercase.'
string.match                =
'Looks for the first match of `pattern` (see §6.4.1) in the string.'
string.pack                 =
'Returns a binary string containing the values `v1`, `v2`, etc. packed (that is, serialized in binary form) according to the format string `fmt` (see §6.4.2) .'
string.packsize             =
'Returns the size of a string resulting from `string.pack` with the given format string `fmt` (see §6.4.2) .'
string.rep['>5.2']          =
'Returns a string that is the concatenation of `n` copies of the string `s` separated by the string `sep`.'
string.rep['<5.1']          =
'Returns a string that is the concatenation of `n` copies of the string `s` .'
string.reverse              =
'Returns a string that is the string `s` reversed.'
string.sub                  =
'Returns the substring of the string that starts at `i` and continues until `j`.'
string.unpack               =
'Returns the values packed in string according to the format string `fmt` (see §6.4.2) .'
string.upper                =
'Returns a copy of this string with all lowercase letters changed to uppercase.'
string.unicode              =
'Similar to $string.byte, except it returns unicode codepoints of a given string/substring.'
string.contains             =
'Returns true if `str1` contains `str2`.'
string.startsWith           =
'Returns true if beginning of `str1` matches `str2`.'
string.endsWith             =
'Returns true if end of `str1` matches `str2`.'


table                       =
''
table.concat                =
'Given a list where all elements are strings or numbers, returns the string `list[i]..sep..list[i+1] ··· sep..list[j]`.'
table.insert                =
'Inserts element `value` at position `pos` in `list`.'
table.maxn                  =
'Returns the largest positive numerical index of the given table, or zero if the table has no positive numerical indices.'
table.move                  =
[[
Moves elements from table `a1` to table `a2`.
```lua
a2[t],··· =
a1[f],···,a1[e]
return a2
```
]]
table.pack                  =
'Returns a new table with all arguments stored into keys `1`, `2`, etc. and with a field `"n"` with the total number of arguments.'
table.remove                =
'Removes from `list` the element at position `pos`, returning the value of the removed element.'
table.sort                  =
'Sorts list elements in a given order, *in-place*, from `list[1]` to `list[#list]`.'
table.unpack                =
[[
Returns the elements from the given list. This function is equivalent to
```lua
    return list[i], list[i+1], ···, list[j]
```
By default, `i` is `1` and `j` is `#list`.
]]
table.foreach               =
'Executes the given f over all elements of table. For each element, f is called with the index and respective value as arguments. If f returns a non-nil value, then the loop is broken, and this value is returned as the final value of foreach.'
table.foreachi              =
'Executes the given f over the numerical indices of table. For each index, f is called with the index and respective value as arguments. Indices are visited in sequential order, from 1 to n, where n is the size of the table. If f returns a non-nil value, then the loop is broken and this value is returned as the result of foreachi.'
table.getn                  =
'Returns the number of elements in the table. This function is equivalent to `#list`.'
table.new                   =
[[This creates a pre-sized table, just like the C API equivalent `lua_createtable()`. This is useful for big tables if the final table size is known and automatic table resizing is too expensive. `narray` parameter specifies the number of array-like items, and `nhash` parameter specifies the number of hash-like items. The function needs to be required before use.
```lua
    require("table.new")
```
]]
table.clear                 =
[[This clears all keys and values from a table, but preserves the allocated array/hash sizes. This is useful when a table, which is linked from multiple places, needs to be cleared and/or when recycling a table for use by the same context. This avoids managing backlinks, saves an allocation and the overhead of incremental array/hash part growth. The function needs to be required before use.
```lua
    require("table.clear").
```
Please note this function is meant for very specific situations. In most cases it's better to replace the (usually single) link with a new table and let the GC do its work.
]]

dynamic                     =
'MoonSharp module for dynamic expression evaluation'
dynamic.eval                =
'Evaluates a string expression or a prepared expression object via @(ms-additions)dynamic.prepare.'
dynamic.prepare             =
'Prepares an expression object from a string for use with @(ms-additions)dynamic.eval for faster execution'

json                        =
[[
MoonSharp module which for table-JSON string conversion.
Provides special `json.null()` value for JSON entries containing nulls.
]]
json.parse                  =
'Converts a JSON string into a table.'
json.serialize              =
'Converts a table into a JSON string.'
json.isnull                 =
'Checks if `val` is a null value. See @(ms-additions)json.null.'
json.null                   =
'Returns a special null value for null entries in converted tables.'

utf8                        =
''
utf8.char                   =
'Receives zero or more integers, converts each one to its corresponding UTF-8 byte sequence and returns a string with the concatenation of all these sequences.'
utf8.charpattern            =
'The pattern which matches exactly one UTF-8 byte sequence, assuming that the subject is a valid UTF-8 string.'
utf8.codes                  =
[[
Returns values so that the construction
```lua
for p, c in utf8.codes(s) do
    body
end
```
will iterate over all UTF-8 characters in string s, with p being the position (in bytes) and c the code point of each character. It raises an error if it meets any invalid byte sequence.
]]
utf8.codepoint              =
'Returns the codepoints (as integers) from all characters in `s` that start between byte position `i` and `j` (both included).'
utf8.len                    =
'Returns the number of UTF-8 characters in string `s` that start between positions `i` and `j` (both inclusive).'
utf8.offset                 =
'Returns the position (in bytes) where the encoding of the `n`-th character of `s` (counting from position `i`) starts.'
isCYF                       =
"A value - `true` by default - that indicates that if you're on CYF. `nil` if not on CYF. Test it with `if not isCYF then` or `if isCYF then`."
isRetro                     =
"A value which is `true` whenever CYF's retrocompatibility mode is active and `false` when it isn't. Test it with `if not isRetro then` or `if isRetro then`."
safe                        =
"`true` if CYF's safe mode is enabled, `false` otherwise."
windows                     =
"Returns `true` if the user is on Windows, `false` otherwise."
CYFversion                  =
[[
Returns a different string based on the version of CYF you are using.
- Versions before v0.6: Previous version's number.
For example, in CYF v0.5.5, this will be `"0.5.4"`.
- Versions between v0.6 and v0.6.1.2: always `"1.0"`.
- Versions after v0.6.1.2: Current version's number.
For example, in CYF `v0.6.2`, this will be `"0.6.2"`.
#### TIP: Lua has a very useful built-in string comparing function.
You can very easily check for `if CYFversion < "0.6.2.2" then`, `if CYFversion >= "0.6.1.2" then` and other combinations.
]]
LTSversion                  =
[[
Returns a different number based on the LTS version of CYF you are using.

You can compare this number to your own values to make sure the right version of CYF is used to play your mod, if needed.

You may also want to check if this value exists at all in case older versions of CYF are used to play your mod.
]]
music                       =
"Name of your encounter's starting music, without the file extension. If this variable isn't present, it'll play Undertale's default battle theme. If you don't want any music, call `Audio.Stop()` in the `EncounterStarting()` function."
encountertext               =
[[
Set the initial text of your encounter here. After that, you can modify it at any time in preparation for the next turn. `encountertext` gets read out at the start of every new turn (i.e. you going back to the FIGHT/ACT/ITEM/MERCY selection).

* You can use `\n` to create a new line with a star (*), and `\r` to create a new line without a star.

As of CYF v0.6.4, if you end up with 4 or more lines of encounter text displayed at once, the text will move up (9 pixels, one time) to compensate and try to fit your text inside the box.
]]
nextwaves                   =
"A list of all simultaneous attack waves you want when the monsters start their attacks. You can modify this at any time, and it'll get read out before the enemies start their attack. For most boss-type encounters, you'll likely only want one wave simultaneously - but you can get creative here."
wavetimer                   =
"How long it takes for the defending step to end. If this isn't set anywhere, it'll be the default `4.0` seconds."
arenasize                   =
[[The inner size of the box the player's constrained to. `{155, 130}` is the default size for a lot of basic Undertale encounters. Papyrus' battle, for instance, has this at `{245, 130}` most of the time. You may modify this at any time - it'll only get read out before the enemies start their attack.
Note: lowest possible setting is `{16, 16}` - this is the size of the player's soul. Anything lower will be set to `16` anyway.]]
enemies                     =
"Defines the names of your enemy scripts that will be used in your encounter. After initialization, the names will be replaced by `Script` controller objects you can use to control your monster scripts."
enemypositions              =
[[
Defines where the enemies are on the screen. `{0, 0}` means they're centered just above the arena, with 1 pixel of space inbetween. `{-30, 0}` means above the arena to the left; `{50, 80}` means `50` pixels to the right and `80` pixels above that center.
You will always need at least as many enemy positions as enemies in your encounter.
]]
autolinebreak               =
"`false` by default. If this value is set to `true`, the auto linebreak system will automatically add line breaks (`\\r`) to the text. No need to use `\\r` or `\\n` anymore!"
playerskipdocommand         =
"`false` by default. If this value is set to `true`, text commands will be called even if the player skips the text - except for `[w]` and `[letters]` commands, and commands with the tag \"`skipover`\"."
unescape                    =
"`false` by default. If this value is set to `true`, you can't exit the battle with the `ESC` key anymore."
flee                        =
"`true` by default. If this value is set to `false`, the Flee option will not appear in the Mercy menu."
fleesuccess                 =
"`nil` by default. Set this to `true` or `false` to force the Flee option to succeed or fail, respectively. Otherwise, Undertale's formula is used, which starts at a 50% chance to flee on the first turn, and increases by 10% every turn after that (regardless of if those turns were spent trying to flee as well)."
fleetexts                   =
"If you set this to a table filled with strings, a random one of your strings will be displayed whenever the player flees the battle (if that's enabled)."
revive                      =
[[
If this variable is set to `true`, the player will be revived when they hit 0 HP.
By default, there will be no special text for the player being revived; however, if you set `deathtext`, that will be used.
]]
deathtext                   =
[[
Text displayed when the player dies, in the Game Over screen. By default, it'll use the normal death text.
This text is also used if the player gets revived while revive is true. Otherwise, there is no revive text.
]]
deathmusic                  =
"Sets the death music. The music is played if revive is not set."
Wave                        =
"A table returning the current wave scripts used. Returns a table with a length of `0` if not in the state `DEFENDING`."
noscalerotationbug          =
"If this variable is set to `true`, the rotation of any child sprite with a rotated parent will no longer be reset after either changing its sprite in any way or scaling it."
comments                    =
"A list of random comments attached to this monster. You can retrieve one at random using the `RandomEncounterText()` function in your Encounter script."
commands                    =
"A list of ACT commands you can do. Listed in the ACT menu and used in `HandleCustomCommand()`. Note that the behaviour for Check is built-in, and shows you the monster's name followed by the ATK and DEF, and then the check variable you'll see all the way down."
randomdialogue              =
[[
A list of random dialogue the monster can have. One of these is selected at random if `currentdialogue` is `nil` (i.e. has no value).
NOTE: The dialogue bubble will not be shown so long as it has no displayable letters. Set `randomdialogue` to a line with only text commands, such as "`[noskip]``[next]`", to use this to your advantage.
]]
currentdialogue             =
[[
The next dialogue for this monster. This overrides the random dialogue and is meant for special actions (e.g. you hit Vegetoid's green carrots after selecting Dinner from the ACT menu). This variable gets cleared every time after it's read out in the monster dialogue phase. This is done so you don't have to take care of managing it manually.
NOTE: The dialogue bubble will not be shown so long as it has no displayable letters. Set `currentdialogue` to a line with only text commands, such as "`[noskip]``[next]`", to use this to your advantage.
]]
defensemisstext             =
"The text which will be displayed if the Player's attack is successful but deals 0 damage. `\"MISS\"` by default."
noattackmisstext            =
"The text which will be displayed if the Player doesn't press Z when attacking. `\"MISS\"` by default."
cancheck                    =
"`true` by default. If set to `false`, it will disable the default Check action that shows up in your ACT menu. If you want a custom Check action, you can add it back into your commands table, and handle it like any other custom command."
canspare                    =
"`false` by default. If you change this to `true`, your monster's name will turn yellow and it will be spareable."
isactive                    =
[[
Tells you whether this enemy is active.
Will be `false` if they have been manually de-activated, killed or spared.
Setting this will do nothing! You must call `SetActive`
]]
sprite                      =
"Name of the sprite in your Sprites folder, without the .PNG extension. This is the initial sprite for your monster. It can be changed using `SetSprite(name)`."
monstersprite               =
"Sprite handler of the monster."
dialogbubble                =
"What dialogue bubble will be used for the monster's dialogue. You can change this at any time, but this must be initially set to something. For a list of all possible options, check the [dialog bubble names chart](https://rhenaudthelukark.github.io/CreateYourFrisk/media/dialogoptions.png). Positioning of the bubbles is done automatically."
dialogueprefix              =
"A string, appended to the beginning of every monster's dialogue. The default is \"`[effect:rotate]`\""
name                        =
"Monster name. Fairly self-explanatory; shows up in the FIGHT/ACT menus. Can also be changed at any time."
hp                          =
"Your monster's max HP, initially. After the fight has started, this value will always accurately reflect your monster's current HP. You can then modify this value to change your monster's current HP."
maxhp                       =
"Your monster's max HP. After the fight has started this value will be always the same, unless you change it. It is mainly used for lifebars and such. You better not set it as `0` or as a negative number, though."
atk                         =
"Your monster's ATK. Only used in the default Check handler; bullet damage is set through wave scripts. If you're not using the default Check you can leave this out."
def                         =
"Your monster's DEF."
xp                          =
"Your monster's XP upon actually defeating them. You only get this by killing the monster."
gold                        =
"Gold you get from either killing or sparing this monster. Since the gold can change based on whether you kill or spare the monster, you can modify this at any time up until the fight ends."
check                       =
"When checking with the default Check option, this is what's listed under the monster's name, ATK and DEF."
unkillable                  =
"Set it to `true` and the monster will not be killed if it has less than 1 HP. However, it can still be killed with `Kill()`."
canmove                     =
[[
Deprecated, always returns `true`.
Old behavior: Returns `true` if you are able to move or unbind `monstersprite`, `false` otherwise.
]]
posx                        =
"The x position of the enemy's sprite."
posy                        =
"The y position of the enemy's sprite."
font                        =
"The default font used by the monster. Set it to `nil` if you want to use the normal monster font."
voice                       =
"The default voice used by the monster. Set it to `nil` if you want to use the default voice."
wavename =
[[
Returns the name of the wave file, without the extension, from the Waves folder.
Other than the above, wave scripts don't have any variables that are read out from the start, but you can define your own. An instance of a wave script is made when you start defending, and is destroyed when the defending step ends. As such, you can't store variables in a wave script for reusing later. Use the Encounter script to keep track of things.
]]

EnteringState =
''
EnteringState.ACTIONSELECT =
[[
Returning to the main part of the battle, where you can select FIGHT/ACT/ITEM/MERCY.
]]
EnteringState.ATTACKING =
[[
When you've selected a target with the FIGHT option.
]]
EnteringState.DEFENDING =
[[
When the enemy/enemies finish dialogue, and one or more waves start.
]]
EnteringState.ENEMYSELECT =
[[
When you've selected either FIGHT or ACT, and need to select an enemy.
]]
EnteringState.ACTMENU =
[[
When you've selected an ACT target, and must now select an ACT command.
]]
EnteringState.ITEMMENU =
[[
When you've selected ITEM.
]]
EnteringState.MERCYMENU =
[[
When you've selected MERCY.
]]
EnteringState.ENEMYDIALOGUE =
[[
When your enemy/enemies start their dialogue.
]]
EnteringState.DIALOGRESULT =
[[
When you call `BattleDialog()`, or when the UI shows text on its own (e.g. when using an item).
]]
EncounterStarting =
[[
Happens once when everything's done initializing but before any encounter actions start. You should do things like stopping the music here, or using State() if you want to start the fight off with some dialogue.
]]
EnemyDialogueStarting =
[[
Happens when you go to the monster dialogue state. You're still free to modify monster dialogue here.
]]
EnemyDialogueEnding =
[[
Happens when you go from the monster dialogue state to the defending state.
]]
DefenseEnding =
[[
Happens when you go from the defending state of the game to any other state. If you read up on the `RandomEncounterText()` function, you'll want to use it here.
]]
HandleFlee =
[[
Happens when you select the Flee option from the Mercy menu. If you implement `HandleFlee()`, the fleeing sequence will not run automatically, and you will have to do it manually with the `Flee()` function.
- `success`: Whether the fleeing condition is `true`.
]]
HandleItem =
[[
Happens when you select an item from the item menu.
- `item_ID`: The name of the item used, IN ALL CAPS. Similar to `HandleCustomCommand` in monster scripts.
- `position`: The position of the item used in the player's inventory. The first item is number `1`.
In CYF, you can use the Inventory object to edit the player's inventory. The items' names will be in caps, like with `HandleCustomCommand()`.
]]
EnteringState =
[[
When you enter a new state, this function will fire with `newstate` containing the new state's name, and `oldstate` containing the previous state's name. Both are in all caps. One of the most powerful things about it is that you can use `State()` here to interrupt state changes initiated by the engine itself.
]]
UpdateE =
[[
This function runs for every frame (usually at 60FPS, depends on the player's framerate) for all of the encounter, even during waves. This is an extremely powerful function, as it can run any code at any time, no matter what. The only exception is the game over state - if the player dies, no code from within this function will be run.
]]
BeforeDeath =
[[
This function runs the moment the Player takes mortal damage (by any means, including bullet damage, scripted damage, setting Player.hp to 0, and even text commands), just before activating the Game Over sequence. This is the perfect place to set Real and AlMighty Globals you want set when the player dies
(see @(cyf-api-functions-main)Misc. Functions).

If you use `Player.hp` or `Player.Heal` here to bring the Player's hp back to greater than `0`, they will live and the Game Over sequence will be cancelled.
]]
OnTextDisplay =
[[
Every time any text object's letters are created, this function gets called. This function is the best place to manipulate the text object's letters using `Text.GetLetters`.
The argument `text` is the text object itself.
This event isn't called for text objects which have their own `Text.OnTextDisplay()` function.
]]
HandleAttack =
[[
Happens the moment the player's attack has applied damage - this is when you hear the hitting sound after the slash animation.
`damage` will be `-1` if the player pressed Fight, but didn't press any buttons and let it end by itself. The monster's `hp` variable will have updated at this time, too.
Don't call `BattleDialog()` here, it's a bit buggy right now.
]]
OnDeath =
[[
Happens after your attack's shaking animation has completed and the monster's HP is `0`. If you implement `OnDeath()`, your monster will not die automatically, and you will have to do it manually with the `Kill()` function.
`OnDeath()` will only happen through monster kills that happened with the FIGHT command; scripted `Kill()` calls will not trigger it.
Calling `BattleDialog()` here will probably screw up the battle UI.
]]
OnSpare =
[[
Happens after you successfully spared a monster. If you implement `OnSpare()`, your monster will not be spared automatically, and you will have to do it manually with the `Spare()` function.
`OnSpare()` will only happen through a monster spare that happened with the SPARE command; scripted `Spare()` calls will not trigger it.
]]
BeforeDamageCalculation =
[[
Happens before the damage calculation the moment you press Z when attacking. You can easily use `SetDamage()` in this function. This is also the best place to initiate a dodge animation, if you want such a thing.
]]
BeforeDamageValues =
[[
Happens before the damage UI is displayed on the monster (the life bar and the damage number) and before the hp changing. You can still change the target with `Player.ChangeTarget(targetNumber)` in this function, but you *can not* use `SetDamage` here.
The argument `damage` is equal to the incoming damage the enemy is about to take.
Note that this damage has __not__ been applied yet, unlike in `HandleAttack`.
]]
HandleCustomCommand =
[[
Happens when you select an Act command on this monster. `command` will be the same as how you defined it in the `commands` list, except it will be __IN ALL CAPS__. Intermediate example below, showing how you can use it and spice it up a little.
]]
UpdateW =
[[
This function is called every frame (usually at 60FPS) while monsters are attacking (the defense step).

That's pretty much it. Update your bullets here - more on bullet creation and control is on the @(cyf-api-projectile)API - Projectile Management page.
]]
EndingWave =
[[
This function is called just before the wave ends. It allows you to easily reset some variables and other such things.
]]
OnHit =
[[
Every time a bullet collides with a player, this function gets called from the script that created the projectile. The bullet object in this function can be modified if you feel like it. For more information on the bullet object, see the section @(cyf-api-projectile)Projectile Management.
If you implement this function in your script, you have to manually define what should happen after bullet collision. This is what allows you to create orange, cyan and green projectiles, and much much more. If you don't implement this function in your script, it'll stick to the default of dealing 3 damage on hit.
]]
