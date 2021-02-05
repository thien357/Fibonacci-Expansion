# Fibonacci Expansion

buonngay = tail(mutate(select(tq_get("MRNA", get = "stock.prices", from = begin, to = end),
                               3:6), id = row_number())[,c(5,1,2,3,4)],
                 n=256);
  FR100 = 178.5
  FR0 =  65.49
  STARTPOINT = 102.66
  buonngay$FR0 <- STARTPOINT;
  buonngay$FR24 <- STARTPOINT + (FR100 - FR0) * 0.236;
  buonngay$FR38 <- STARTPOINT + (FR100 - FR0) * 0.382;
  buonngay$FR62 <- STARTPOINT + (FR100 - FR0) * 0.618;
  buonngay$FR79 <- STARTPOINT + (FR100 - FR0) * 0.786;
  buonngay$FR100 <- STARTPOINT + (FR100 - FR0);
  buonngay$FR1618 <- STARTPOINT + (FR100 - FR0) * 1.618;
  
  # view(buonngay)
  dygraph(buonngay, main = "Candle Sticks") %>%
    dyAxis("x", rangePad = 15) %>%
    dyCandlestick()
