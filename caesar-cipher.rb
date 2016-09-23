# a=97 and z=122
# 'a'.ord => 97
# 97.chr => 'a'
# find substring by string[position]

def caesarCipher(string,shift)
	cipherString = []
	i = 0
	while i < string.length
		if string[i] == " "
			cipherString << string[i]
		else
			if (string[i].ord + shift) > 122
				cipherString << (((string[i].ord + shift) - 26).chr)
			else
				cipherString << ((string[i].ord + shift).chr)
			end
		end
		i = i + 1
	end
	puts cipherString.join
end

puts caesarCipher('oh what a lovely day', 5)