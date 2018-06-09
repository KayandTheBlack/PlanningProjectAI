(define (problem autogen)
  (:domain worldsEndAndBeyond)

  (:objects
    Origin cityA cityB cityC cityD cityE cityF cityG cityH cityI - city
    hotelA_A hotelA_B hotelA_C hotelB_A hotelB_B hotelB_C hotelC_A hotelC_B hotelC_C hotelD_A hotelD_B hotelD_C hotelE_A hotelE_B hotelE_C hotelF_A hotelF_B hotelF_C hotelG_A hotelG_B hotelG_C hotelH_A hotelH_B hotelH_C hotelI_A hotelI_B hotelI_C - hotel
  )

  (:init
    (currentLocation Origin)

    (hotelAt hotelA_A cityA)
    (hotelAt hotelA_B cityA)
    (hotelAt hotelA_C cityA)
    (hotelAt hotelB_A cityB)
    (hotelAt hotelB_B cityB)
    (hotelAt hotelB_C cityB)
    (hotelAt hotelC_A cityC)
    (hotelAt hotelC_B cityC)
    (hotelAt hotelC_C cityC)
    (hotelAt hotelD_A cityD)
    (hotelAt hotelD_B cityD)
    (hotelAt hotelD_C cityD)
    (hotelAt hotelE_A cityE)
    (hotelAt hotelE_B cityE)
    (hotelAt hotelE_C cityE)
    (hotelAt hotelF_A cityF)
    (hotelAt hotelF_B cityF)
    (hotelAt hotelF_C cityF)
    (hotelAt hotelG_A cityG)
    (hotelAt hotelG_B cityG)
    (hotelAt hotelG_C cityG)
    (hotelAt hotelH_A cityH)
    (hotelAt hotelH_B cityH)
    (hotelAt hotelH_C cityH)
    (hotelAt hotelI_A cityI)
    (hotelAt hotelI_B cityI)
    (hotelAt hotelI_C cityI)

    (flight Origin cityA)
    (flight Origin cityB)
    (flight Origin cityC)
    (flight Origin cityD)
    (flight Origin cityE)
    (flight Origin cityF)
    (flight Origin cityG)
    (flight Origin cityH)
    (flight Origin cityI)
    (flight cityA cityC)
    (flight cityA cityD)
    (flight cityA cityH)
    (flight cityB cityC)
    (flight cityB cityD)
    (flight cityB cityH)
    (flight cityC cityA)
    (flight cityC cityD)
    (flight cityC cityF)
    (flight cityD cityA)
    (flight cityD cityB)
    (flight cityD cityG)
    (flight cityE cityC)
    (flight cityE cityG)
    (flight cityE cityH)
    (flight cityF cityB)
    (flight cityF cityD)
    (flight cityF cityI)
    (flight cityG cityB)
    (flight cityG cityC)
    (flight cityG cityE)
    (flight cityH cityB)
    (flight cityH cityE)
    (flight cityH cityG)
    (flight cityI cityE)
    (flight cityI cityG)
    (flight cityI cityH)

    (= (citiesVisited) 0)
    (= (totalDays) 0)
    (= (minDaysInCity) 2)
    (= (maxDaysInCity) 3)

    (= (stayDuration Origin) 0)
    (= (stayDuration cityA) 0)
    (= (stayDuration cityB) 0)
    (= (stayDuration cityC) 0)
    (= (stayDuration cityD) 0)
    (= (stayDuration cityE) 0)
    (= (stayDuration cityF) 0)
    (= (stayDuration cityG) 0)
    (= (stayDuration cityH) 0)
    (= (stayDuration cityI) 0)
    (= (cityInterest Origin) 0)
    (= (cityInterest cityA) 2)
    (= (cityInterest cityB) 3)
    (= (cityInterest cityC) 1)
    (= (cityInterest cityD) 2)
    (= (cityInterest cityE) 3)
    (= (cityInterest cityF) 1)
    (= (cityInterest cityG) 2)
    (= (cityInterest cityH) 1)
    (= (cityInterest cityI) 2)
    (= (totalInterest) 0)
    (= (totalcost) 0)
    (= (hotelcost hotelA_A) 145)
    (= (hotelcost hotelA_B) 203)
    (= (hotelcost hotelA_C) 159)
    (= (hotelcost hotelB_A) 219)
    (= (hotelcost hotelB_B) 247)
    (= (hotelcost hotelB_C) 85)
    (= (hotelcost hotelC_A) 60)
    (= (hotelcost hotelC_B) 202)
    (= (hotelcost hotelC_C) 180)
    (= (hotelcost hotelD_A) 56)
    (= (hotelcost hotelD_B) 216)
    (= (hotelcost hotelD_C) 168)
    (= (hotelcost hotelE_A) 153)
    (= (hotelcost hotelE_B) 193)
    (= (hotelcost hotelE_C) 124)
    (= (hotelcost hotelF_A) 138)
    (= (hotelcost hotelF_B) 180)
    (= (hotelcost hotelF_C) 144)
    (= (hotelcost hotelG_A) 163)
    (= (hotelcost hotelG_B) 236)
    (= (hotelcost hotelG_C) 124)
    (= (hotelcost hotelH_A) 78)
    (= (hotelcost hotelH_B) 212)
    (= (hotelcost hotelH_C) 148)
    (= (hotelcost hotelI_A) 208)
    (= (hotelcost hotelI_B) 134)
    (= (hotelcost hotelI_C) 105)

    (= (flightcost Origin cityA) 0)
    (= (flightcost Origin cityB) 0)
    (= (flightcost Origin cityC) 0)
    (= (flightcost Origin cityD) 0)
    (= (flightcost Origin cityE) 0)
    (= (flightcost Origin cityF) 0)
    (= (flightcost Origin cityG) 0)
    (= (flightcost Origin cityH) 0)
    (= (flightcost Origin cityI) 0)
    (= (flightcost cityA cityC) 105)
    (= (flightcost cityA cityD) 164)
    (= (flightcost cityA cityH) 129)
    (= (flightcost cityB cityC) 138)
    (= (flightcost cityB cityD) 111)
    (= (flightcost cityB cityH) 182)
    (= (flightcost cityC cityA) 147)
    (= (flightcost cityC cityD) 132)
    (= (flightcost cityC cityF) 180)
    (= (flightcost cityD cityA) 135)
    (= (flightcost cityD cityB) 143)
    (= (flightcost cityD cityG) 184)
    (= (flightcost cityE cityC) 165)
    (= (flightcost cityE cityG) 101)
    (= (flightcost cityE cityH) 150)
    (= (flightcost cityF cityB) 135)
    (= (flightcost cityF cityD) 104)
    (= (flightcost cityF cityI) 145)
    (= (flightcost cityG cityB) 110)
    (= (flightcost cityG cityC) 144)
    (= (flightcost cityG cityE) 176)
    (= (flightcost cityH cityB) 156)
    (= (flightcost cityH cityE) 158)
    (= (flightcost cityH cityG) 114)
    (= (flightcost cityI cityE) 183)
    (= (flightcost cityI cityG) 186)
    (= (flightcost cityI cityH) 176)

  )

  (:goal
    (and
      (>= (citiesVisited) 7)
      (>= (totalDays) 10)
      (>= (totalcost) 2000)
      (<= (totalcost) 3000)
    )
  )

  (:metric 
    minimize
      (+ (* 255 (totalInterest)) (totalcost))
  )

)
