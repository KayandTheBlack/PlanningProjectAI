(define (domain worldsEndAndBeyond)
  (:requirements :adl :typing :fluents)
  (:types hotel city - object)
  (:predicates
    (hotelAt ?h - hotel ?c - city)
    (flight ?from - city ?to - city)
    (currentLocation ?c - city)
    (stayedAt ?c - city)
    (stayedAth ?h - hotel)
  )
  (:functions
    (citiesVisited)
    (totalDays)
    (minDaysInCity)
    (maxDaysInCity)
    (stayDuration ?c - city)
    (cityInterest ?c - city)
    (totalInterest)
    (totalcost)
    (hotelcost ?h -hotel)
    (flightcost ?from - city ?to - city)
  )
  
  ( :action flyAndStay
    :parameters (?from - city ?to - city ?hotelToUse - hotel)
    :precondition 
    (and 
      (currentLocation ?from) 
      (hotelAt ?hotelToUse ?to) 
      (flight ?from ?to) 
      (not (stayedAt ?to))
    )
    :effect
    (and
      (not (currentLocation ?from)) (currentLocation ?to)
      (stayedAt ?to)
      (stayedAth ?hotelToUse)
      (increase (citiesVisited) 1)
      (increase (stayDuration ?to) (minDaysInCity))
      (increase (totalDays) (minDaysInCity))
      (increase (totalInterest) (cityInterest ?to))
      (increase (totalcost) (+ 
          (* (hotelcost ?hotelToUse) (minDaysInCity) )
          (flightcost ?from ?to)
        )
      )
    )
  )
  ( :action IncreaseStay
    :parameters (?c - city ?h - hotel)
    :precondition
    (and
      (stayedAt ?c)
      (hotelAt ?h ?c) 
      (stayedAth ?h)
      (< (stayDuration ?c) (maxDaysInCity))
    )
    :effect
    (and
      (increase (stayDuration ?c) 1)
      (increase (totalDays) 1)
      (increase (totalcost) (hotelcost ?h))
    )
  )
)


