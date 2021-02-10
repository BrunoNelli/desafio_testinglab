# Para este resultado cheguei a conclusao que a melhor forma seria transformar a frase inteira em um array com o
# split, podendo assim validar se cada palavra inclui o simbolo. Primeiramente desenvolvi uma validacao, garantindo
# que a frase e os simbolos vieram como String. Em seguida foi declarado uma variavel como array que recebera a nova
# frase. Com split, realizo uma varredura de cada palavra se ela inclui os simbolos delimitadores. Caso nao exista
# a palavra, a mesma sera adicionada ao novo array new_phrase. Caso contrario o break finaliza o loop e o array com
# as novas palavras sera agrupado novamente com join. O metodo ficou flexivel a ponto de aceitar qualquer tipo de frase,
# simbolo ou caractere como string para fazer a arredura. Caso queiram testar mais frases e exemplos, adicionar na linha 9
# o require 'pry' na linha 9 e o debugger binding.pry na linha 23 apos o metodo.

def minha_funcao(string, array)
  if string.instance_of?(String) && array.all? { |each_symbol| each_symbol.instance_of?(String) }
    new_phrase = []
    string.split.each do |each_word|
      break if array.any? { |each_symbol| each_word.include?(each_symbol) }

      new_phrase << each_word
    end
  else
    raise TypeError, 'Os argumentos devem ser uma string'
  end
  new_phrase.join(' ')
end

resultado = minha_funcao('bananas, tomates # e ventiladores', ['#', '!'])
puts(resultado)
