
# Open "um-server-01-txt" and set its path name to log_file.
log_file = open("um-server-01.txt")

# defining a function called sales_report which takes in 
# our log_file path as a parameter.
def sales_reports(log_file):
    # looping through the lines in log_file
    for line in log_file:
        # remove any trailing characters in the line
        line = line.rstrip()
        # grabs the day at the specified index.
        day = line[0:3]
        # if the day is monday, prints line.
        if day == "Mon":
            print(line)


sales_reports(log_file)
