class Podcast
  THIRTY_LOW_STD    = 8
  THIRTY_HIGH_STD   = 18
  SIXTY_LOW_STD     = 15
  SIXTY_HIGH_STD    = 25
  STD_INC           = 0.75

  def self.calc(dlpe, prpe, mrpe, epy)
    dlpe = dlpe.to_i
    prpe = prpe.to_i
    mrpe = mrpe.to_i
    epy  = epy.to_i

    cpm = dlpe
    cpi = (cpm / 1000)

    premin = cpi * THIRTY_LOW_STD * prpe * epy * STD_INC
    premax = cpi * THIRTY_HIGH_STD * prpe * epy * STD_INC

    mrmin = cpi * SIXTY_LOW_STD * mrpe * epy * STD_INC
    mrmax = cpi * SIXTY_HIGH_STD * mrpe * epy * STD_INC

    min = (premin + mrmin).to_i
    max = (premax + mrmax).to_i
    [min,max]
  end

end
