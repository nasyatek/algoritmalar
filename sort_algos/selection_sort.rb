# Küçük boyutlu dizileri sıralarken kullanılabilir.
# Karmaşıklık 0(n2) dir. Bu yüzden yüksek veri kümesinde düşük performans gösterir.
# Bubble sort algoritmasındaki takas işlemlerinin çoğunu yapmadığı için,
# bubble sort algoritmasının iyileştirilmiş hali diyebiliriz.

class SelectionSort

end

@arr = [13, 6, 2, 67, 28, 33, 41, 17, 9, 3, 11, 72]
n=@arr.length
minIndex=0
puts "Starting..."
puts @arr.to_s

for i in 0..(@arr.length-1)
  minIndex=i
  # Dizinin kalan elemanları arasında elimizdenkinden daha küçük bir eleman varmı
  # kontrol ediyoruz. Varsa index numarasını alıyoruz.
  for j in i..(@arr.length-1)
    #puts "#{i} , #{j}"
    if @arr[j]<@arr[minIndex]
      minIndex=j
    end
  end
  # İçteki döngü bitti, daha küçük eleman varsa, swap yapıyoruz yoksa, zaten index i idi aynı yerde kalmış olacak.
  temp=@arr[i]
  @arr[i] = @arr[minIndex]
  @arr[minIndex]=temp
end
puts @arr.to_s
