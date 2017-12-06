# Dizinin önce sıralanması sonra gerektiği için sıralama algoritması uygulanır.
# QuickSort sıralaması ile sıralanırsa karmaşıklık O(nlog2(n)) olur.
# Arama Binary Search
# O(log2(n) )
# Toplam karmaşıklık  sıralama+arama  olacağı için
# n log2(n) + log2(n) => paranteze alınırsa  log2(n) (n+1)   olur.

class BinarySearch
  def binary_search
    random_numbers = [6, 13, 2, 67, 28, 33, 41, 17, 9, 3, 11, 72]
    count = random_numbers.length
    wanted = 72
# İkili arama yapılabilmesi için dizinin sıralı olması şarttır.
    random_numbers = random_numbers.sort!
    puts random_numbers.to_s
    lo=0
    hi = random_numbers.length
    puts "lo: #{lo} hi:#{hi}"
    while lo<hi
      mid = lo+((hi-lo)/2)
      if random_numbers[mid]==wanted
        puts "Aranan: #{wanted} Bulunan:#{random_numbers[mid]} Başlangıc:#{lo} Bitiş:#{hi} Bulundu!"
        return mid
      elsif random_numbers[mid]<wanted
        puts "Aranan: #{wanted} Bulunan:#{random_numbers[mid]} Başlangıc:#{lo} Bitiş:#{hi} sağ tarafta"
        lo=mid+1
      else
        puts "Aranan: #{wanted} Bulunan:#{random_numbers[mid]} Başlangıc:#{lo} Bitiş:#{hi} sol tarafta"
        hi=mid-1
      end
    end
  end
end


