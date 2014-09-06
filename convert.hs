convert :: (Double, [Char]) -> (Double, [Char])
convert (val, unitName)
  | unitName == "m" = (val * 1.09361, "yd")
  | unitName == "L" = (val * 0.264172, "gal")
  | unitName == "kg" = (val * 2.20462, "lb")
  | unitName == "yd" = (val / 1.09361, "m")
  | unitName == "gal" = (val / 0.264172, "L")
  | unitName == "lb" = (val / 2.20462, "kg")
  | otherwise = error "no suitable type"
