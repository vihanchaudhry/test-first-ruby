class Timer
	@seconds

	def seconds
		@seconds = 0
	end

	def seconds=(seconds)
		@seconds = seconds
	end

	def time_string
		if @seconds < 10
			return "00:00:0" + @seconds.to_s
		elsif @seconds < 60
			return "00:00:" + @seconds.to_s
		elsif @seconds < 3600
			minutes = @seconds / 60 < 10 ? "0" + (@seconds / 60).to_s : (@seconds / 60).to_s  
			sec_rem = @seconds % 60 < 10 ? "0" + (@seconds % 60).to_s : (@seconds % 60).to_s
			return "00:" + minutes + ":" + sec_rem
		else 
			hours = @seconds / 3600 < 10 ? "0" + (@seconds / 3600).to_s : (@seconds / 3600).to_s
			minutes_rem = (@seconds % 3600) / 60 < 10 ? "0" + ((@seconds % 3600) / 60).to_s : ((@seconds % 3600)/ 60).to_s  
			sec_rem = (@seconds % 3600) % 60 < 10 ? "0" + ((@seconds % 3600) % 60).to_s : ((@seconds % 3600) % 60).to_s
			return hours + ":" + minutes_rem + ":" + sec_rem	
		end
	end
end
