# Chapter 9: Input and Output

## Hello, world!

ghic> :t ()
() :: ()

Not sure why getLine is followed by a <- instead of an =

Oh, I see ... 'cause it's impure

Oh, I see ... 'cause = would just bind the function to name, not the result.

Can I bind getLine to name, and then use name in place of getLine (name becomes an alias for getLine)?
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
