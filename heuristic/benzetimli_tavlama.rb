require_relative "ben_tav_helper"
# Dış döngü maliyetler arasındaki farka, belirli bir rakama ya da sistemin son sıcaklığına bakar
# Biz burada belirli bir rakam üzerinden gidiyoruz. (500)
# İç döngü sıcaklık değişimlerini uygular
tCurrent=BenTavHelper::T_ILK
decision=BenTavHelper::DIS_DONGU
inner_loop=BenTavHelper::IC_DONGU
benTav=BenTavHelper.new
range_start=-5000
range_finish=1

puts "************     Benzetimli Tavlama Algoritması  **********************"

rc=Random.new.rand(range_start..range_finish)
@currentSolition=benTav.generate_random_solution(rc)
rb=Random.new.rand(range_start..range_finish)
@bestSolition=benTav.generate_random_solution(rb)

decision.times {

  puts "Best #{@bestSolition} : TCurrent : #{tCurrent}"
  if @bestSolition < @currentSolition
    @bestSolition = @currentSolition
  else
    # Komşu çözüm burada oluşturuluyor!
    rc=rc+5
    # puts "komsu çözüm oluştu #{rc}"
    @currentSolition=benTav.generate_random_neighboring_solution(rc)
  end

  inner_loop.times {
    newr=Random.new.rand(range_start..range_finish)
    @currentSolition=benTav.generate_random_solution(newr)
    ap=benTav.acceptability(@bestSolition, @currentSolition, tCurrent)
    if ap>Random.new.rand
      @bestSolition=@currentSolition
      # puts "rc #{rc} new #{newr}"
      rc=newr

      #puts "Best: #{@bestSolition} Current: #{@currentSolition} TCurrent: #{tCurrent}"
    else
      #puts "ap rastgele sayıdan küçük oldu..."
    end
  }
  tCurrent=BenTavHelper.update_temp(tCurrent)
}

puts "Best : #{@bestSolition}   Current : #{@currentSolition} Temp: #{tCurrent}"

#puts "Rastgelelik Durumu : #{i} k:#{k}"