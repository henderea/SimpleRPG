class Formula
  def durability_damage(durability, max_durability)
    if max_durability <= 0
      1.0
    else
      per = durability.to_f / max_durability.to_f
      if per >= 0.75
        1.0
      else
        (per * (32.0/15.0)) + (per * per * (16.0/15.0))
      end
    end
  end
end