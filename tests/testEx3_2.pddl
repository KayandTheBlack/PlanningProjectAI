(define (problem autogen)
  (:domain worldsEndAndBeyond)

  (:objects
    Origin cityA cityB cityC cityD cityE cityF cityG cityH - city
    hotelA_A hotelA_B hotelB_A hotelB_B hotelC_A hotelC_B hotelD_A hotelD_B hotelE_A hotelE_B hotelF_A hotelF_B hotelG_A hotelG_B hotelH_A hotelH_B - hotel
  )

  (:init
    (currentLocation Origin)

    (hotelAt hotelA_A cityA)
    (hotelAt hotelA_B cityA)
    (hotelAt hotelB_A cityB)
    (hotelAt hotelB_B cityB)
    (hotelAt hotelC_A cityC)
    (hotelAt hotelC_B cityC)
    (hotelAt hotelD_A cityD)
    (hotelAt hotelD_B cityD)
    (hotelAt hotelE_A cityE)
    (hotelAt hotelE_B cityE)
    (hotelAt hotelF_A cityF)
    (hotelAt hotelF_B cityF)
    (hotelAt hotelG_A cityG)
    (hotelAt hotelG_B cityG)
    (hotelAt hotelH_A cityH)
    (hotelAt hotelH_B cityH)

    (flight Origin cityA)
    (flight Origin cityB)
    (flight Origin cityC)
    (flight Origin cityD)
    (flight Origin cityE)
    (flight Origin cityF)
    (flight Origin cityG)
    (flight Origin cityH)
    (flight cityA cityB)
    (flight cityA cityC)
    (flight cityA cityE)
    (flight cityA cityG)
    (flight cityB cityA)
    (flight cityB cityD)
    (flight cityB cityF)
    (flight cityB cityG)
    (flight cityC cityB)
    (flight cityC cityE)
    (flight cityC cityG)
    (flight cityC cityH)
    (flight cityD cityE)
    (flight cityD cityF)
    (flight cityD cityG)
    (flight cityD cityH)
    (flight cityE cityD)
    (flight cityE cityF)
    (flight cityE cityG)
    (flight cityE cityH)
    (flight cityF cityC)
    (flight cityF cityD)
    (flight cityF cityE)
    (flight cityF cityG)
    (flight cityG cityD)
    (flight cityG cityE)
    (flight cityG cityF)
    (flight cityG cityH)
    (flight cityH cityB)
    (flight cityH cityC)
    (flight cityH cityD)
    (flight cityH cityE)

    (= (citiesVisited) 0)
    (= (totalDays) 0)
    (= (minDaysInCity) 1)
    (= (maxDaysInCity) 2)

    (= (stayDuration Origin) 0)
    (= (stayDuration cityA) 0)
    (= (stayDuration cityB) 0)
    (= (stayDuration cityC) 0)
    (= (stayDuration cityD) 0)
    (= (stayDuration cityE) 0)
    (= (stayDuration cityF) 0)
    (= (stayDuration cityG) 0)
    (= (stayDuration cityH) 0)
    (= (totalcost) 0)
    (= (hotelcost hotelA_A) 186)
    (= (hotelcost hotelA_B) 93)
    (= (hotelcost hotelB_A) 164)
    (= (hotelcost hotelB_B) 217)
    (= (hotelcost hotelC_A) 104)
    (= (hotelcost hotelC_B) 143)
    (= (hotelcost hotelD_A) 157)
    (= (hotelcost hotelD_B) 245)
    (= (hotelcost hotelE_A) 106)
    (= (hotelcost hotelE_B) 228)
    (= (hotelcost hotelF_A) 169)
    (= (hotelcost hotelF_B) 193)
    (= (hotelcost hotelG_A) 210)
    (= (hotelcost hotelG_B) 125)
    (= (hotelcost hotelH_A) 102)
    (= (hotelcost hotelH_B) 208)

    (= (flightcost Origin cityA) 0)
    (= (flightcost Origin cityB) 0)
    (= (flightcost Origin cityC) 0)
    (= (flightcost Origin cityD) 0)
    (= (flightcost Origin cityE) 0)
    (= (flightcost Origin cityF) 0)
    (= (flightcost Origin cityG) 0)
    (= (flightcost Origin cityH) 0)
    (= (flightcost cityA cityB) 126)
    (= (flightcost cityA cityC) 196)
    (= (flightcost cityA cityE) 143)
    (= (flightcost cityA cityG) 121)
    (= (flightcost cityB cityA) 167)
    (= (flightcost cityB cityD) 105)
    (= (flightcost cityB cityF) 166)
    (= (flightcost cityB cityG) 114)
    (= (flightcost cityC cityB) 145)
    (= (flightcost cityC cityE) 178)
    (= (flightcost cityC cityG) 165)
    (= (flightcost cityC cityH) 103)
    (= (flightcost cityD cityE) 137)
    (= (flightcost cityD cityF) 159)
    (= (flightcost cityD cityG) 103)
    (= (flightcost cityD cityH) 173)
    (= (flightcost cityE cityD) 154)
    (= (flightcost cityE cityF) 169)
    (= (flightcost cityE cityG) 140)
    (= (flightcost cityE cityH) 108)
    (= (flightcost cityF cityC) 162)
    (= (flightcost cityF cityD) 199)
    (= (flightcost cityF cityE) 103)
    (= (flightcost cityF cityG) 170)
    (= (flightcost cityG cityD) 177)
    (= (flightcost cityG cityE) 175)
    (= (flightcost cityG cityF) 165)
    (= (flightcost cityG cityH) 189)
    (= (flightcost cityH cityB) 102)
    (= (flightcost cityH cityC) 117)
    (= (flightcost cityH cityD) 199)
    (= (flightcost cityH cityE) 180)

  )

  (:goal
    (and
      (>= (citiesVisited) 4)
      (>= (totalDays) 10)
      (>= (totalcost) 1500)
      (<= (totalcost) 2000)
    )
  )

  (:metric 
    minimize (totalcost)
  )

)
