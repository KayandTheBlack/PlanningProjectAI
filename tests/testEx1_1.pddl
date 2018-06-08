(define (problem autogen)
  (:domain worldsEndAndBeyond)

  (:objects
    Origin cityA cityB cityC cityD cityE cityF cityG cityH cityI cityJ cityK cityL cityM cityN cityO - city
    hotelA_A hotelA_B hotelA_C hotelB_A hotelB_B hotelB_C hotelC_A hotelC_B hotelC_C hotelD_A hotelD_B hotelD_C hotelE_A hotelE_B hotelE_C hotelF_A hotelF_B hotelF_C hotelG_A hotelG_B hotelG_C hotelH_A hotelH_B hotelH_C hotelI_A hotelI_B hotelI_C hotelJ_A hotelJ_B hotelJ_C hotelK_A hotelK_B hotelK_C hotelL_A hotelL_B hotelL_C hotelM_A hotelM_B hotelM_C hotelN_A hotelN_B hotelN_C hotelO_A hotelO_B hotelO_C - hotel
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
    (hotelAt hotelJ_A cityJ)
    (hotelAt hotelJ_B cityJ)
    (hotelAt hotelJ_C cityJ)
    (hotelAt hotelK_A cityK)
    (hotelAt hotelK_B cityK)
    (hotelAt hotelK_C cityK)
    (hotelAt hotelL_A cityL)
    (hotelAt hotelL_B cityL)
    (hotelAt hotelL_C cityL)
    (hotelAt hotelM_A cityM)
    (hotelAt hotelM_B cityM)
    (hotelAt hotelM_C cityM)
    (hotelAt hotelN_A cityN)
    (hotelAt hotelN_B cityN)
    (hotelAt hotelN_C cityN)
    (hotelAt hotelO_A cityO)
    (hotelAt hotelO_B cityO)
    (hotelAt hotelO_C cityO)

    (flight Origin cityA)
    (flight Origin cityB)
    (flight Origin cityC)
    (flight Origin cityD)
    (flight Origin cityE)
    (flight Origin cityF)
    (flight Origin cityG)
    (flight Origin cityH)
    (flight Origin cityI)
    (flight Origin cityJ)
    (flight Origin cityK)
    (flight Origin cityL)
    (flight Origin cityM)
    (flight Origin cityN)
    (flight Origin cityO)
    (flight cityA cityC)
    (flight cityA cityD)
    (flight cityA cityI)
    (flight cityB cityF)
    (flight cityB cityI)
    (flight cityB cityJ)
    (flight cityC cityB)
    (flight cityC cityD)
    (flight cityC cityK)
    (flight cityD cityA)
    (flight cityD cityB)
    (flight cityD cityJ)
    (flight cityE cityH)
    (flight cityE cityM)
    (flight cityE cityO)
    (flight cityF cityI)
    (flight cityF cityM)
    (flight cityF cityO)
    (flight cityG cityA)
    (flight cityG cityN)
    (flight cityG cityO)
    (flight cityH cityG)
    (flight cityH cityK)
    (flight cityH cityM)
    (flight cityI cityA)
    (flight cityI cityC)
    (flight cityI cityN)
    (flight cityJ cityE)
    (flight cityJ cityN)
    (flight cityJ cityO)
    (flight cityK cityC)
    (flight cityK cityD)
    (flight cityK cityI)
    (flight cityL cityM)
    (flight cityL cityN)
    (flight cityL cityO)
    (flight cityM cityD)
    (flight cityM cityH)
    (flight cityM cityN)
    (flight cityN cityB)
    (flight cityN cityF)
    (flight cityN cityL)
    (flight cityO cityC)
    (flight cityO cityL)
    (flight cityO cityM)

    (= (citiesVisited) 0)
    (= (totalDays) 0)
    (= (minDaysInCity) 2)
    (= (maxDaysInCity) 4)

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
    (= (stayDuration cityJ) 0)
    (= (stayDuration cityK) 0)
    (= (stayDuration cityL) 0)
    (= (stayDuration cityM) 0)
    (= (stayDuration cityN) 0)
    (= (stayDuration cityO) 0)

  )

  (:goal
    (and
      (>= (citiesVisited) 12)
      (>= (totalDays) 20)
    )
  )


)
