# Helltriangle

Given a triangle of numbers, this finds the maximum total from top to bottom

Example:

6

3 5

9 7 1

4 6 8 4 

In this triangle the maximum total is 6 + 5 + 7 + 8 = 26

An element can only be summed with one of the two nearest elements in the next row

So the element 3 in row 2 can be summed with 9 and 7, but not with 1

You must provide an (triangular multidimensional) array as argument. Any other array structure will raise an argument exception.

## Usage

```ruby
>> require 'helltriangle'
>> triangle = Helltriangle.new([[6],[3,5],[9,7,1],[4,6,8,4]])
>> triangle.sum
>> 26
```

# Tech Specification

Helltriangle was written as a ruby class that can be required and used as a library. It was made this way
to keep it as simple and fast as possible as possible. 

The function core was written as a recursive function that turns the code cleaner and mimics human approach
of the problem.

For testing, Rspec gem was used.

# Testing

For testing: 

```
$ rake spec
```


