import starpy
import random
import numpy as np
import sys
import json
 
# Generate a random integer between 1 and 10



s = starpy.GetStars()
myarg=[]
try:
    myarg=[sys.argv[1]]
    myarg.append(sys.argv[2])
    myarg.append(sys.argv[3])
    myarg.append(sys.argv[4])
except:
    j=1+1
#s.starships_speed_by_person(11)    
# Returns [[{'transport_id': '59', 'Max. Speed': '1050'}], [{'transport_id': '65', 'Max. Speed': '1500'}], [{'transport_id': '39', 'Max. Speed': '1100'}]]
myid = str(np.random.randint(4, 15))
#print(myid)
#print(json.dumps({"faster_person_with_v": s.fastest_person_with_v(), "starships_speed_by_person("+str(myid)+")": s.starships_speed_by_person(myid)}))
#print({"starships_speed_by_person("+str(myid)+")": s.starships_speed_by_person(myid)})
superhash={}
if "find_pilots_from_s" in myarg:
    superhash["find_pilots_from_s"]= s.find_pilots_from_s()
if "find_fastest_s" in myarg:
   superhash["find_fastest_s"]= str(s.find_fastest_s())
if "find_person_with_s" in myarg:
   superhash["faster_person_with_s"]= s.fastest_person_with_s()
if "starships_speed_by_person" in myarg:
   superhash["starships_speed_by_person"]= s.starships_speed_by_person(myid)
print(json.dumps(superhash))

