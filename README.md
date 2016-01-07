# Chapter 9: Input and Output

## Hello, world!

    ghic> :t ()
    () :: ()

Not sure why <code>getLine</code> is followed by a <code><-</code> instead of an <code>=</code>

Oh, I see ... 'cause it's impure

Oh, I see ... 'cause <code>=</code> would just bind the function to name, not the result.

Can I bind <code>getLine</code> to name, and then use name in place of <code>getLine</code> (name becomes an alias for <code>getLine</code>)?
    Yes
    
I can't seem to get a <code>myPutStrLn</code> to work. I tried

    myPutStrLn :: String -> IO ()
    myPutStrLn [] = return '\n'
    myPutStrLn (x:xs) = do
        putChar x
        myPutStrLn xs

It looks like the problem is the <code>return</code> statement. It should use <code>putChar</code> instead

It appears that in the <code>getChar/putChar</code> example that the '\n' char is being captured and put as well

I like that in the <code>forever</code> example the author doesn't tell the reader how to get out of the program.

I think I'd need to look closer at the <code>forM</code> function to see the usefulness. But wasn't there a construct for swapping the order of arguments to a function that was sold as a way to reverse the inputs to map?



## Files and streams

The author is not really doing a great job of explaining piping. I think it would be a good idea to describe where the pipe character is on the keyboard.

At least he's telling us now how to get out of the <code>capslocker</code> program (I used Ctrl-C).

Does <code>getContents</code> read one line at a time, or one character, or something else?

Reading into the short lines example has just made me more confused about what getContets does. I tried

    main = do
        line <- getContents
        if (length line < 10)
            then
                putStrLn line
            else
                putStr ""

That did not work at the prompt at all.

I then copied the example from the text, and when I ran it at the prompt, it processed things one line at a time.

I guess that what's going on in the example from the text is that Haskell is not actually as lazy as the author keeps saying, and sometimes does things as soon as it can (i.e. when it has a complete line of text to pass to the lines function).

I think the author's reading of the Avril Lavigne song misses the deeper meaning of the song, namely that Avril thinks that she should be the object of the song's new romantic partner

I got the withFile example correct, but I didn't use a lambda for the <code> (Handle -> IO a) </code> function. Instead I had a named helper function.

I'm still a little unsure about type signatures with IO actions. My helper function returned an IO (), but I thought it should return an IO String.

It looks like in ReadWriteMode, if you write to the file, it will delete was in there. That is, it will not prepend.

I can't seem to read from a file, and then write to it using ReadWriteMode. I can write, and then read. When I try to write after a read, it says that the handle is closed.


I can't seem to read from a file, close the handle, and then do something with the contents of the file. In ghci if I do

    import System.IO

    main = do
        handle <- openFile "todo.txt" ReadMode
        contents <- hGetContents handle
        hClose handle
        putStr contents

Then I get nothing. If I switch the last 2 lines it works. When I try to work on this in ghci, <code>contents</code> is the empty string at the end of the program. If I use <code>contents</code> before closing the handle, then the data will be there. It must be some sort of complier optimization.


Not sure why the author used <code>openTempFile</code> instead of just closing the todo.txt and then reopening it for writing. I suppose the <code>openTempFile</code> implementation would be less likely to fail in the middle leaving a half-written file.

## Command line arguments

I wanted to have my <code>add</code> and <code>delete</code> arguments be able to appear anywhere and use the <code>elemIndex</code> function and take whatever comes next to add or delete. I didn't try hard enough to get this to work.

## Randomness

No credit given to XKCD for that <code>randomNumber</code>!?
