library(rmongodb)
m = mongo.create('serverb')
ms = 'androidesk.user'
now = ISOdate(2011,1,1,0,0,0)

users = 1:300

for (i in 1:730) { 
  start = now + as.difftime(i, units='days');
  end   = now + as.difftime(i+1, units='days');
  query = list('atime'=list('$gte'=start, '$lte'=end));
  count = mongo.count(m,ns, query);
  users[i] = count;
  print(list(start, count));
}

print(users);
plot(users, type='l', col='green')