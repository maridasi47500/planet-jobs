import starpy
import random
import numpy as np
import json
 
# Generate a random integer between 1 and 10



s = starpy.GetStars()

#s.starships_speed_by_person(11)    
# Returns [[{'transport_id': '59', 'Max. Speed': '1050'}], [{'transport_id': '65', 'Max. Speed': '1500'}], [{'transport_id': '39', 'Max. Speed': '1100'}]]
myid = str(np.random.randint(1, 12))
print(myid)
#print(json.dumps({"faster_person_with_v": s.fastest_person_with_v(), "starships_speed_by_person("+str(myid)+")": s.starships_speed_by_person(myid)}))
#print({"starships_speed_by_person("+str(myid)+")": s.starships_speed_by_person(myid)})
print({"faster_person_with_v": s.fastest_person_with_v(), "starships_speed_by_person("+str(myid)+")": s.starships_speed_by_person(myid)})
# Returns [{'Name': 'Zam Wesell', 'Max. Speed': 800, 'Vehicle name': 'Koro-2 Exodrive airspeeder'}]

