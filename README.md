# Chapter 9: Input and Output

## Hello, world!

ghic> :t ()
() :: ()

Not sure why getLine is followed by a <- instead of an =

Oh, I see ... 'cause it's impure

Oh, I see ... 'cause = would just bind the function to name, not the result.

Can I bind getLine to name, and then use name in place of getLine (name becomes an alias for getLine)?
    Yes
    

