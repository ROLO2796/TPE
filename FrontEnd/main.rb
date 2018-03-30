until (a = gets.chomp) =~ /(?:ex|qu)it/i
  # maquina de estado que vaya buscando comandos y ejecute bloques de codigo.
  line = a.split
  puts line.to_s
  # if line[0] == 'add'
  #   puts 'grupo: ' + line[1][1..-1] + "\n" + 'tarea: ' + a[5..-1] if line[1][0] == '+'
  #   puts 'El nombre de la tarea es: ' + a[line[0].size+line[1.size]+1..-1] if line[1][0] != '+'
  # else
  #   puts 'no enteindo'
  # end
  if line[0] == 'add'
    if line[1][1] == '+'
      grupo = line[1][1..-1]
      tarea = a[(grupo.size + 4)..-1]
    end
  end
end
# la joda esta con las expresiones regulares y despues es cuestion de usar al string como un array
# para guardar lo que queda.