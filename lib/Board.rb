class Board
   attr_accessor :boardcase, :turncount

	 def initialize
		@boardcase = []
		@boardcase << @a1 = BoardCase.new("a1")
		@boardcase << @a2 = BoardCase.new("a2")
		@boardcase << @a3 = BoardCase.new("a3")
		@boardcase << @b1 = BoardCase.new("b1")
		@boardcase << @b2 = BoardCase.new("b2")
		@boardcase << @b3 = BoardCase.new("b3")
		@boardcase << @c1 = BoardCase.new("c1")
		@boardcase << @c2 = BoardCase.new("c2")
		@boardcase << @c3 = BoardCase.new("c3")
		@turncount = 0
	 end
	 
	def fillCase(casechoose)
		find = 0
		puts @turncount
		if @turncount.even?
			@boardcase.map do |num|
				if casechoose == num.id && num.value == ' '
						num.value = "x"
						@turncount +=1
						find = 1
						return true
				end
			end
			puts 'erreur veuilliez choisir une case valide' if find == 0
			return false
		else
			@boardcase.map do |num|
				if casechoose == num.id && num.value == ' '
						num.value = "o"
						@turncount +=1
						find = 1
						return true
				end
			end
				puts "erreur veuilliez choisir une case valide" if find == 0
				return false
		end
end
	def compare?(t1, t2, t3)
		if @boardcase[t1].value == @boardcase[t2].value && @boardcase[t1].value == @boardcase[t3].value && @boardcase[t2].value == @boardcase[t3].value
			if  @boardcase[t1].value == 'x' || @boardcase[t1].value == 'o'
				return false
			end
		else
			return true
		end
		true
	end

	def place_left?
		empty = 0
		@boardcase.each do |x|
			if x.value == ' '
				empty += 1
			end
		end
		empty >= 1 ? true : false
	end

	def check_win
		return false if !compare?(0, 1, 2)
		return false if !compare?(3, 4, 5)
		return false if !compare?(6, 7, 8)
		return false if !compare?(0, 3, 6)
		return false if !compare?(1, 4, 7)
		return false if !compare?(2, 5, 8)
		return false if !compare?(0, 4, 8)
		return false if !compare?(2, 4, 6)
		return false if !place_left?
		true
	end
end