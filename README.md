# Funny Talk


### Regular expressions

Check out: [Rubular](http://rubular.com). Play around with this tool to find out how to write regular expressions. They are used when you want to grab a pattern in a string.

### Telephone talk

Someone has given you a list of people's contact information. You have been asked to retrieve every phone number and the person it belongs to. Write a method that uses regular expressions to retrieve the name (which is always first), their phone number(which have multiple forms) and their twitter handle which can be any other element, and return it as a nested hash. We talked about how to make nested hashes last week.

Here's your information (do not alter it):
```ruby

bloggers_information = [[["James Spader"],["214.555.1357"],["123 N South St."],["Chicago"],["il"],["60645"],["@samspade"]],
                        [["Jenny Forrest"],["Schamberg"],["il"],["312-555-2244"],["@imaboat"]],
                        [["Jimmy Stuart"],["@getyerwings"],["313 555 9865"],["1128 Alameda Ave"],["Glendale"],["CA"],["92606"]],
                        [["Mountain Joe"],["3035550021"],["@campfire"]],
                        [["Mr. Henderson"],["312-555-9224"],["Chicago"],["il"],["60647"],["@hairy"]],
                        [["Nerf Herder"],["123 N South St."],["Chicago"],["il"],["60645"],["@blueharvest"],["310.555.2234"]]]

```

Should return the following result:

```
{"James Spader" => {phone => "214.555.1357", twitter => "@samspade"}, "Jenny Forrest" => {phone => "312-555-2244", twitter => "@imaboat"}, "Jimmy Stuart" =>{phone => "313 555 9865", twitter => "@getyerwings"}...
```

- Extra points if you find a way to standardize all the phone numbers to xxx-xxx-xxxx format when put into your nested hash. I would suggest making a sepperate method.

### Daffy Duck: Easy

This is an easy one just for fun. Write a method that takes in a string and replaces all the "s" characters with "th".

Example:

```
daffify("This is ridiculous") == "Thith ith ridiculouth"
```


### Porky Pig: little trickier

[Bob Bergens](https://www.youtube.com/watch?v=lXC_j5QB6v8), the current voice of porky pig did an interview for the documentary "I know that Voice", where he says that there is a formula to talking like Porky. The key is four sounds and then the word with an emphasis on the third sound for all nouns. Write a method that takes a word and creates the following pattern from that word.

```
"boy" -> "eh beh BEH eh boy"
"chair" -> "eh ch CH eh chair"
"desk" -> "eh deh DEH eh desk"
```

The pattern is easy to work out. The second and third sounds are the first two letters of the word unless the second letter is a vowel. In that case it is the first letter followed by "eh". He doesn't stutter on non-vowels or words begining with a vowel. The third sound must be capitalized.

Later we can download the entire list of words from a ruby library. For now, you can include a dictionary (that you build) of appropriate nouns you want replaced within the sentences for your driver code/spec.

Example:

```ruby
dictionary = ["this","place", "tomorrow", "rust"]

porkify("this is a nice place", dictionary) -> "eh th TH eh this is a nice eh pl PL eh place."
```


### Pig Latin: Master translator

Write a method that converts a string into pig latin. Use your Regular expressions.

The rules for pig latin are listed [HERE](http://en.wikipedia.org/wiki/Pig_Latin). You know what to do!

### Rspec: stretch challenge

Include an accompanying funnytalk_spec.rb file with a couple tests for your methods.
