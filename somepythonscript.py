import starpy
import random

s = starpy.GetStars()

#s.starships_speed_by_person(11)    
# Returns [[{'transport_id': '59', 'Max. Speed': '1050'}], [{'transport_id': '65', 'Max. Speed': '1500'}], [{'transport_id': '39', 'Max. Speed': '1100'}]]
myid=random.choice(1, 11)
print({"faster_person_with_v": s.fastest_person_with_v()"starships_speed_by_person("+myid+")": s.starships_speed_by_person(myid)})
# Returns [{'Name': 'Zam Wesell', 'Max. Speed': 800, 'Vehicle name': 'Koro-2 Exodrive airspeeder'}]

