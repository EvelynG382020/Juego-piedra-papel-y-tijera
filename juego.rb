# Diagrama: 
# 1. Asignar el argumento ARGV 
# 2. Definir el usuario y sus argumentos 
# 3. Definir al computador y sus argumentos
# 4. Describir una condicional de juego inválido
# 5. Describir las condiciones del juego.

arg=ARGV[0]

# juego del usuario
user = 0   if arg == 'piedra'
user = 1   if arg == 'papel'
user = 2   if arg == 'tijera'

if user != 0 && user != 1 && user != 2
    puts "Argumento inválido. Debe ser piedra, papel o tijera"
else
    # juego del computador
    rand_number = rand(0-3)
    computer = 'piedra' if rand_number == 0
    computer = 'papel' if rand_number == 1
    computer = 'tijera' if rand_number == 2

    # condiciones del juego user vs computer
    puts "Computador juega #{computer}"
    if user == rand_number
        puts "Empataste"
    elsif (user == 0 && rand_number == 1) || (user == 1 && rand_number == 2) || (user == 2 && rand_number == 0)
        puts "You lost, try again"
    elsif (user == 0 && rand_number == 2) || (user == 1 && rand_number == 0) || (user == 2 && rand_number == 1)
        puts "You Win, congratulation"
    end
end




