
python = {'fursa', 'oleinik', 'baranova'}
java = {'baranova', 'jorov', 'stadzadze'}
frontend = {'marinova', 'ivanov', 'kozir'}
fullstack = {'marinova', 'tolstoy', 'kozir'}
groups = [python, java, frontend, fullstack]

def find_active_students(groups):
    active_students = set()
    for num, group in enumerate(groups):
        for other in groups[num+1:]:
            active_students.update(group & other)
    return active_students

print(find_active_students(groups))
