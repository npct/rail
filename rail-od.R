
from <- "university of leeds"
to <- "bradford"
r1 = stplanr::route_google(from = from, to = to, mode = "transit")
mapview::mapview(r1)

from <- "ls7 3dw"
to <- "se21 8ha"
r1.1 = stplanr::route_google(from = from, to = to, mode = "transit")
mapview::mapview(r1.1)


from <- "hr4 7bp"
to <- "hr4 9au"
r2 = stplanr::route_google(from = from, to = to, mode = "transit")
r3 = stplanr::route_google(from = from, to = to)
mapview::mapview(r3)

# transit_mode = rail
