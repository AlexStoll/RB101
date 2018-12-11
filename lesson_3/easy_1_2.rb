=begin

1. what is != and where should you use it?

A comparitive to check whether something is not equal to.
Returns a boolean.

2. put ! before something, like !user_name

Will turn the object into the opposite of its boolean equivalent.

3. put ! after something, like words.uniq!

! on the end of a method indicates it will modify the caller.
Not all methods have a destructive version, and some destructive
methods don't have a ! associated, like Array#<<.

4. put ? before something

? : is the ternary operator for if/else

5. put ? after something

On a method, it indicates that a boolean will be returned.

6. put !! before something, like !!user_name

This will turn the object into its boolean equivalent.

=end