	

bloggers_information = [[["James Spader"],["214.555.1357"],["123 N South St."],["Chicago"],["il"],["60645"],["@samspade"]],
                        [["Jenny Forrest"],["Schamberg"],["il"],["312-555-2244"],["@imaboat"]],
                        [["Jimmy Stuart"],["@getyerwings"],["313 555 9865"],["1128 Alameda Ave"],["Glendale"],["CA"],["92606"]],
                        [["Mountain Joe"],["3035550021"],["@campfire"]],
                        [["Mr. Henderson"],["312-555-9224"],["Chicago"],["il"],["60647"],["@hairy"]],
                        [["Nerf Herder"],["123 N South St."],["Chicago"],["il"],["60645"],["@blueharvest"],["310.555.2234"]]]


class Array
	def sortInfo
		input = self.flatten
		numbers = []
		twitters = []



		input.each do |x|
			
			if(x.scan(/\d/).join.size == 10)
				numbers << (x.scan(/\d/).join).insert(3, '-').insert(-5, '-')
			end

			if(x.include?("@") == true)
				twitters << x
			end
		end


	h = {}
	info = {}
	counter = 0
	self.each do |x|

		info["numbers:"] = numbers[counter]
		info["twitter:"] =  twitters[counter] 

		h[x[0][0]] = info

		counter += 1


	end		


		h
	end 





end



daffy = "this is rediculous"



def daffyDuck(word)
	output = ""


	if (word.include? "s")
			word.gsub("s", "th")
			
		
	else 
		word

	end 
end


dictionary = ["this","place", "tomorrow", "rust"]


def porkyPig(string, array)
	
	output = ""


	array.each do |x|
	
		if(string.include?(x))
			output << "eh" + " " + x[0,2] + " " + x[0,2].upcase + " " + "eh" + " " + x
			

			string = string.gsub(x, output)
			output.clear


		end
	end
		string
end


vowel = "although"
v2 = "say"
novowels = "smile"

def pigLatin(string)

	p string

	if(string.slice(0).count('aeiou') == 1)
	
		return string + "yay"

	elsif(string[0,2].count('aeiou') == 0)

		remainingString = string.chars.drop(2).join
		string = remainingString + string[0,2] +"ay"
		return string 
	else
		remainingString = string.chars.drop(1).join
		string = remainingString + string[0] + "ay"


	end
end




p pigLatin("simple")

p pigLatin("bagel")

p pigLatin("glove")

p pigLatin("trash")

p pigLatin("eat")
p pigLatin("egg")




p bloggers_information.sortInfo















