# Author : Merdan Durdyýew
# Github : https://github.com/eminarium
# Medium (Personal blog) : https://medium.com/@merdan.durdiyev
# Medium (Publication) : https://medium.com/kodeser
# Date : 24.09.2020

# Beýany: "Ses hasaplamak" programmasy, görkezilen faýlda girizilen atlary sanap,
# haýsy ada näçe ses berlendigini hasaplap berýär. Atlaryň kiçi ýa-da uly harplar
# bilen ýazylmagy täsir etmeýär. Programma olaryň ählisini bir formata getirip hasaplaýar.

# Description : "Count votes" - is vote quantity calculation program. From a given file,
# it calculates number of votes for each different name and prints out the result.
# No matter the votes are written in uppercase or lowercase or capitalized, it will 
# normalize all names to a single format and calculate it correctly.


# Faýldan okaljak setirler massiwi / Array of lines to be read from input file.
setirler = [] 

# Sesleri hasaplamak üçin ulanyljak 'Hash' formatly obýektimiz. Başda ähli atlaryň ses sany '0'-a deň.
# 'Hash' object to calculate number of votes for each name. At start, all names have '0' votes.
sesler = Hash.new(0)

File.open("sesler.txt") do |file|
  setirler = file.readlines # Her bir setiri okaýarys. / We read each line in a file.

  setirler.each do |setir|
    at = setir.chomp.upcase # Her setiri uly harplara öwürýäris. / We turn all line text to uppercase.
    sesler[at] += 1 # Okalan adyň ses sany bir artdyrylýar. / The vote quantity of given name is increased by 1
  end

end

# Ses berlen atlary we olaryň mukdary. / Names and their votes (quantity)

# Hash elementini massiw hökmünde we indeksini san hökmünde gaýtarýar.
# It returns each Hash element as an array (with 2 elements: key, value) and index as an integer.
sesler.each_with_index do |element, indeks| 
	ady, mukdary = element[0], element[1] # Hash elementi massiw hökmünde, açar(key) we bahasyny (value) alýarys.
	puts "#{indeks + 1}) #{ady} : #{mukdary}"
end
