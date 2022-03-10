=begin
 Прямоугольный треугольник. Программа запрашивает у пользователя 3 стороны треугольника и определяет,  
 является ли треугольник прямоугольным (используя теорему Пифагора www-formula.ru), равнобедренным (т.е. у него равны любые 2 стороны) 
 или равносторонним (все 3 стороны равны) и выводит результат на экран. 
 Подсказка: чтобы воспользоваться теоремой Пифагора, нужно сначала найти самую длинную сторону (гипотенуза) и 
 сравнить ее значение в квадрате с суммой квадратов двух остальных сторон. Если все 3 стороны равны, 
 то треугольник равнобедренный и равносторонний, но не прямоугольный.
=end

puts "Введите длину стороны a"
a = gets.chomp.to_i
puts "Введите длину стороны b"
b = gets.chomp.to_i
puts "Введите длину стороны c"
c = gets.chomp.to_i
sides = [a,b,c]

if (a == b) && ( b == c) && (a == c)
    puts "Треугольник равносторонний"
elsif (a == b) || ( b == c) || (a == c)
    puts "Треугольник равнобедренный"
elsif sides.max != nil                           # если самая длинная сторона существует
    hypotenuse = [] << [a,b,c].max                 # находим гипотенузу через [a,b,c].max и помещаем ее в массив
    sides -= hypotenuse                             # убираем из массива значение гипотенузы, остаются значения двух катетов
    puts "треугольник прямоугольный" if hypotenuse[0]**2 == ((sides[0]**2) + (sides[1]**2))  # теперь можно квадраты катетов сравнить с квадратом гипотенузы
end
    
# Два вопроса по заданию:
    #1. как вычесть из массива максимальное значение сразу? 
    #2. К примеру 
    #   a = 10       
    #   b = 20
    #   c = 15
    #   arr = [a,b,c]
    #   как вывести имя переменной "b", а не ее значение для строки ниже, при условии что оставляем массив и не городим хеш
    #   puts "Гипотенузой является сторона #{:hypotenuse} длиной в #{hypotenuse}" как тут можно вывести имя переменной?


