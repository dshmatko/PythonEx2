import csv

with open('candidate.csv') as csvfile:
    reader = csv.DictReader(csvfile)
    newcsvdict = {"first name": [], "last name": []}
    for row in reader:
        name = (row["Full Name"].split(), row["Email"],
                row["Technologies"].split("|"), row["Main Skill Grade"])
        print(name)
        # last = row[0].split()[1]
        # newcsvdict["first name"].append(first)
        # newcsvdict["last name"].append(last)
        # print(newcsvdict)


class Candidate:
    def __init__(self, full_name, email, technologies, main_skill, main_skill_grade):
        self.full_name = full_name
        self.email = email
        self.technologies = technologies
        self.main_skill = main_skill
        self.main_skill_grade = main_skill_grade
