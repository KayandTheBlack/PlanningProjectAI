(define (problem autogen)
  (:domain worldsEndAndBeyond)

  (:objects
    Origin cityA cityB cityC cityD cityE cityF cityG cityH cityI cityJ cityK cityL - city
    hotelA_A hotelA_B hotelB_A hotelB_B hotelC_A hotelC_B hotelD_A hotelD_B hotelE_A hotelE_B hotelF_A hotelF_B hotelG_A hotelG_B hotelH_A hotelH_B hotelI_A hotelI_B hotelJ_A hotelJ_B hotelK_A hotelK_B hotelL_A hotelL_B - hotel
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
    (hotelAt hotelI_A cityI)
    (hotelAt hotelI_B cityI)
    (hotelAt hotelJ_A cityJ)
    (hotelAt hotelJ_B cityJ)
    (hotelAt hotelK_A cityK)
    (hotelAt hotelK_B cityK)
    (hotelAt hotelL_A cityL)
    (hotelAt hotelL_B cityL)

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
    (flight cityA cityC)
    (flight cityA cityE)
    (flight cityA cityF)
    (flight cityA cityH)
    (flight cityB cityF)
    (flight cityB cityH)
    (flight cityB cityI)
    (flight cityB cityJ)
    (flight cityC cityF)
    (flight cityC cityG)
    (flight cityC cityH)
    (flight cityC cityK)
    (flight cityD cityC)
    (flight cityD cityH)
    (flight cityD cityK)
    (flight cityD cityL)
    (flight cityE cityD)
    (flight cityE cityF)
    (flight cityE cityH)
    (flight cityE cityL)
    (flight cityF cityC)
    (flight cityF cityD)
    (flight cityF cityH)
    (flight cityF cityJ)
    (flight cityG cityA)
    (flight cityG cityE)
    (flight cityG cityJ)
    (flight cityG cityK)
    (flight cityH cityC)
    (flight cityH cityE)
    (flight cityH cityG)
    (flight cityH cityI)
    (flight cityI cityB)
    (flight cityI cityC)
    (flight cityI cityD)
    (flight cityI cityH)
    (flight cityJ cityA)
    (flight cityJ cityC)
    (flight cityJ cityE)
    (flight cityJ cityG)
    (flight cityK cityC)
    (flight cityK cityD)
    (flight cityK cityH)
    (flight cityK cityJ)
    (flight cityL cityA)
    (flight cityL cityE)
    (flight cityL cityI)
    (flight cityL cityJ)

    (= (citiesVisited) 0)

  )

  (:goal
    (>= (citiesVisited) 6)
  )


)
