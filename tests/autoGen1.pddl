(define (problem autogen)
  (:domain worldsEndAndBeyond)

  (:objects
    Origin cityA cityB cityC cityD - city
    hotelA_A hotelB_A hotelC_A hotelD_A - hotel
  )

  (:init
    (currentLocation Origin)

    (hotelAt hotelA_A cityA)
    (hotelAt hotelB_A cityB)
    (hotelAt hotelC_A cityC)
    (hotelAt hotelD_A cityD)

    (flight Origin cityA)
    (flight Origin cityB)
    (flight Origin cityC)
    (flight Origin cityD)
    (flight cityA cityC)
    (flight cityA cityD)
    (flight cityB cityA)
    (flight cityB cityD)
    (flight cityC cityA)
    (flight cityC cityB)
    (flight cityD cityA)
    (flight cityD cityC)

    (= (citiesVisited) 0)
    (= (totalDays) 0)
    (= (minDaysInCity) 3)
    (= (maxDaysInCity) 5)

    (= (stayDuration Origin) 0)
    (= (stayDuration cityA) 0)
    (= (stayDuration cityB) 0)
    (= (stayDuration cityC) 0)
    (= (stayDuration cityD) 0)

  )

  (:goal
    (and
      (>= (citiesVisited) 2)
      (>= (totalDays) 8)
    )
  )

)
