# PlanningProjectAI

This project aims to explore the potential of the PDDL language, specifically the metric version.

We will use Metric-FF as our planning system, concretely 2.0, available here: 
http://fai.cs.uni-saarland.de/hoffmann/metric-ff.html

The problem we will face is the next one:

Given a set of cities, flights connecting them and hotels, give a path with no repetitions such that 
a certain ammount of restrictions are met.

In the basic level, we will merely visit cities, staying in hotels and flying through available channels 
of travel (flights). We must ensure that the number of cities visited is greater than a parameter given.

Extension 1: Basic level + We'll also be given a maximum and a minimum of days to stay in each city, and
a total minimum of days. The three restrictions must be preserved.

Extension 2: Extension 1 + Each city will have an interest in [1..3], being 1 interesting and 3 not so much.
We must optimize the interest factor of our visit plan.

Extension 3: Extension 1 + Flights and hotels have a set cost, we have a minimum/maximum total cost range.
We must minimize the plan's cost whilst keeping those restrictions.

Extension 4: Integration between 2 and 3, parametrized so that we can manually set which of the 2 optimisations
is more important.



For more information, refer to the original statement of the problem (in Spanish), in the adjointed pdf document.
