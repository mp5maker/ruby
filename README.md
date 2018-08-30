# Simple Ruby Practice #

## 1. Basics ##
**string_number_function**
1) [string].upcase
2) [string].reverse
3) [integer].even?
4) [number].abs
5) [int/string].class
6) put("Some String")

**string_game_basics**
1) print("Some String")
2) input = gets
3) input.chomp
4) input.to_i
5) rand(100)
6) until() :: Opposite of while
7) unless() :: Opposite of if
8) input.inspect
9) p input

**functions**
1) implicit return value

**require**
1) require_relative, require, load

**class**
1) @instance
2) attr_accessor :one, :two

**inheritance**
1) class SubClass < SuperClass
2) attr_reader, attr_writer :: Method Overriding
3) super
4) object.methods
5) object.superclass
6) object.to_s [Overriding]

## 2. Intermediate ##
**employee**
1) float, fixnum
2) nil
3) initialize [Constructor]
4) self [method]
5) class methods

**format_sequence**
1) format %i, %s, 4.3%f, .2%f

**class_methods**
1) self.class_methods [Static method]

## 3. Arrays ##
**basics**
1) array.first, array.last, array.length, array.find_index(value)
2) array.push(value), array.pop, array.shift, array << value
3) array.join('delimiter'), merged_letters.chars, merged_letters.split('delimiter')

**loop**
1) While Loops

**blocks**
1) Blocks, &my_blocks, do
2) yield, {}
3) each

## 4. File ##
**basics**
1) file=File.open, file.close, lines=file.readlines
2) File + Filter + Each 
3) lines.include?("word")
4) lines.find_all{|line|}
5) Blocks with return value
6) Map
7) Hashes
8) Nil => Falsy, Hash.new
9) Hash, Each, Class
10) Hash Default Blocks