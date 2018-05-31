(define (domain worldsEndAndBeyond)
  (:requirements :adl :typing :fluents)
  (:types hotel city - object)
  (:predicates
    (hotelAt ?h - hotel ?c - city)
    (flight ?from - city ?to - city)
    (currentLocation ?c - city)
    (stayedAt ?c - city)
  )
  (:functions
    (citiesVisited)
    (totalDays)
    (minDaysInCity)
    (maxDaysInCity)
    (stayDuration ?c - city)
    (cityInterest ?c - city)
    (totalInterest)
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
      (increase (citiesVisited) 1)
      (increase (stayDuration ?to) (minDaysInCity))
      (increase (totalDays) (minDaysInCity))
      (increase (totalInterest) (cityInterest ?to))
    )
  )
  ( :action IncreaseStay
    :parameters (?c - city)
    :precondition
    (and
      (stayedAt ?c)
      (< (stayDuration ?c) (maxDaysInCity))
    )
    :effect
    (and
      (increase (stayDuration ?c) 1)
      (increase (totalDays) 1)
    )
  )
)
