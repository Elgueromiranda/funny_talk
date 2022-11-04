require_relative 'funny_talk.rb'

	

describe Array do

	let(:data) {[[["James Spader"],["214.555.1357"],["123 N South St."],["Chicago"],["il"],["60645"],["@samspade"]],
                        [["Jenny Forrest"],["Schamberg"],["il"],["312-555-2244"],["@imaboat"]],
                        [["Jimmy Stuart"],["@getyerwings"],["313 555 9865"],["1128 Alameda Ave"],["Glendale"],["CA"],["92606"]],
                        [["Mountain Joe"],["3035550021"],["@campfire"]],
                        [["Mr. Henderson"],["312-555-9224"],["Chicago"],["il"],["60647"],["@hairy"]],
                        [["Nerf Herder"],["123 N South St."],["Chicago"],["il"],["60645"],["@blueharvest"],["310.555.2234"]]]}

	describe 'sortInfo' do 

		it 'should return a hash' do

			expect(data.sortInfo).to be_instance_of(Hash)

		end

		it 'should return a sorted hash' do


			expect(data.sortInfo).to eq({"James Spader"=>{"numbers:"=>"310-555-2234", "twitter:"=>"@blueharvest"},
			 							"Jenny Forrest"=>{"numbers:"=>"310-555-2234", "twitter:"=>"@blueharvest"}, 
			 							"Jimmy Stuart"=>{"numbers:"=>"310-555-2234", "twitter:"=>"@blueharvest"}, 
			 							"Mountain Joe"=>{"numbers:"=>"310-555-2234", "twitter:"=>"@blueharvest"}, 
			 							"Mr. Henderson"=>{"numbers:"=>"310-555-2234", "twitter:"=>"@blueharvest"}, 
			 							"Nerf Herder"=>{"numbers:"=>"310-555-2234", "twitter:"=>"@blueharvest"}})

		end
	end
end


	describe 'pigLatin' do
		it 'should expect to receive a string' do
			expect(pigLatin("hello")).to be_instance_of(String)
		end
		it 'should add yay to a string that starts with a vowel ' do
			expect(pigLatin("explain")).to eq("explainyay")
		end
		it 'should start the string at first vowel add the original letter and add yay' do
			expect(pigLatin("bagel")).to eq("agelbay")

		end
		it 'should move the first 2 letters to the end of the string add yay' do
			expect(pigLatin("friends")).to eq("iendsfray")

		end
	end





	describe 'daffyDuck' do 

		context "for valid String" do

		it 'should replace all instances of s to th' do 


		expect(daffyDuck("this is rediculous")).to eq("thith ith rediculouth")


			end
		end 


		context "for invalid string" do

			it "should return the same string" do 


			expect(daffyDuck("hello world")).to eq("hello world")

			end

		end 
	end

