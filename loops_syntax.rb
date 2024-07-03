# frozen_string_literal: true

friends = %w[Gosho Misho Ivan]


# 1. while loop - Цикълът while изпълнява блок от код, докато условието е вярно.
index = 0
while  index < friends.length
  puts "Hi, #{friends[index]}"
  index += 1
end



# 2. until цикъл
# Цикълът until е противоположността на while. Той изпълнява блок от код, докато условието стане вярно.

index = 0

until index >= friends.length
  puts "Hello, #{friends[index]}."
  index += 1
end


# 3. for цикъл
# Цикълът for итерира през елементи от дадена колекция (като масив или диапазон).

for index in 0..friends.length - 1
  puts "Hi from for loop #{friends[index]}"
end



# Разлики между for и each
# Обхват на променливите: В for цикъла, променливата, която използвате (friend в този случай), остава достъпна извън
# цикъла.В each блока, блоковите променливи (като |friend|) са локални за блока и не излизат извън него.

for friend in friends
  puts "Hello from kind of foreach loop, #{friend}"
end


# 4. Цикли с итератори (each, times, upto, downto)
# each loop - Итерира през елементи на колекция (като масив).

friends.each do |friend1|
  puts "zdr! Better version of the foreach loop #{friend1}"
end

# times
# Изпълнява блок от код определен брой пъти.

friends.length.times do |index_local|
  puts "Hi from times loop, #{friends[index_local]}"
end

# upto
# Итерира от дадено число до друго число.

0.upto(friends.length - 1) do |index_local|
  puts "Hello from upto loop, #{friends[index_local]}"
end

# downto
# Итерира от дадено число надолу до друго число.

(friends.length - 1).downto(0) do |index_local|
  puts "Hello from downto loop, #{friends[index_local]}"
end

# 5. loop цикъл
# Цикълът loop изпълнява блок от код безкрайно, докато не се прекъсне с break.

index = 0
loop do
  puts "Hi #{friends[index]} Be careful with this kind of infinite loops"
  index += 1
  break if index >= friends.length
end


# 6. begin ... end while и begin ... end until
#   Тези цикли са подобни на while и until, но блокът от код се изпълнява поне веднъж преди проверката на условието.

index = 0
begin
  puts "Hello from begin end while loop, #{friends[index]}."
  index += 1
end while friends.length > index


# begin ... end until

index = 0
begin
  puts "Hi from begin... end until loop, #{friends[index]}."
  index += 1
end until index >= friends.length