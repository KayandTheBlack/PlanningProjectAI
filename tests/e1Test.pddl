(define (problem baseTest)
  (:domain worldsEndAndBeyond)
  (:objects
    Origin Barcelona Madrid Londres Moscu - city
    BH1 BH2 MaH LH MoH - hotel
  )
  (:init
    (currentLocation Origin)
    
    (hotelAt BH1 Barcelona)
    (hotelAt BH2 Barcelona)
    (hotelAt MaH Madrid)
    (hotelAt LH Londres)
    (hotelAt MoH Moscu)
    
    (flight Origin Barcelona)
    (flight Origin Madrid)
    (flight Origin Londres)
    (flight Origin Moscu)
    (flight Moscu Madrid)
    (flight Moscu Londres)
    (flight Londres Barcelona)
    (flight Barcelona Londres)
    (flight Madrid Londres)
    
    (= (citiesVisited) 0)
    (= (totalDays) 0)
    (= (minDaysInCity) 1)
    (= (maxDaysInCity) 3)
    
    (= (stayDuration Origin) 0)
    (= (stayDuration Barcelona) 0)
    (= (stayDuration Madrid) 0)
    (= (stayDuration Londres) 0)
    (= (stayDuration Moscu) 0)
  )
  
  (:goal 
    (and 
      (>= (citiesVisited) 2)
      (>= (totalDays) 11)
    )
  )
)
