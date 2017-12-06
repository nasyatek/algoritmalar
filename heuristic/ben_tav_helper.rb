class BenTavHelper
  PI = Math::PI
  DIS_DONGU = 500
  IC_DONGU = 3
  T_ILK = 0.3
  T_SON = 0.01
  BETA=(T_ILK-T_SON)/(500 *T_ILK*T_SON) # Lundy & Mees Eğrisine göre 500 dış döngü sayısı

  # f(x) = ((2*PI*r**3)/3)+2*PI*r**2
  #Target r=-2 -> Best : 8.377580409572783

  def self.update_temp(vTi)
    tNext=vTi/(1+BETA*vTi)
  end

  def generate_random_solution(r)
    solution=((2*PI*r**3)/3)+2*PI*r**2
    return solution
  end

  def generate_random_neighboring_solution(r)
    solution=((2*PI*r**3)/3)+2*PI*r**2
    return solution
  end

  # Bu fonksiyona göre aramaya devam edilecek, sıcaklık değeri düştükçe, kabul ihtimali azalıyor.
  def acceptability(old_cost, new_cost, temperature)
    if old_cost<new_cost
      return 1
    else
      return Math::E ** ((new_cost - old_cost)/temperature)
    end
  end

  def test_temp_values(vTi)
    vTi/(1+BETA*vTi)
  end

end