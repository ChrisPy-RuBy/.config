import datetime

born = datetime.datetime(1986, 2, 14)
today = datetime.datetime.now()
number_of_days = int((365 * 0.9) + (365 * 71))

dod = born + datetime.timedelta(number_of_days)
left = dod - today
used = today - born

print("x_x {} left. {} of {} days used. x_x".format(left.days, used.days,  number_of_days))

