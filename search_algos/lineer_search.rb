class LineerSearch
  # O(n)  yani en kötü durumda dizinin eleman sayısı kadar arama yapacaktır.

  # Hazır dizi ve arama terimi ile arama yapacağız.
  def lineer_search
    random_numbers = [6, 13, 2, 67, 28, 33, 41, 17, 9, 3, 11, 72]
    search_number = 67
    index = 0
    for i in random_numbers
      if search_number == i
        puts "#{search_number} sayısı dizi içinde bulundu."
        index =(random_numbers.index i)
      end
    end
    puts "Arama_sayısı : #{index+1}  Sayının index numarası : #{index}"
  end


  # Üstteki fonksiyonun parametre alanı
  def lineer_search_params(search, arr)
    index = 0
    for i in arr
      if search == i
        puts "#{search} sayısı dizi içinde bulundu."
        index =(arr.index i)
      end
    end
    puts "Arama_sayısı : #{index+1}  Sayının index numarası : #{index}"
  end
end