library(rmongodb)
m = mongo.create('serverk')
ms = 'androidesk.user'
now = ISOdate(2011,1,1,0,0,0)

users = integer()

for (i in 1:24) { 
  start = now + as.difftime(i*30, units='days');
  end   = now + as.difftime(i*30+30, units='days');
  query = list('atime'=list('$gte'=start, '$lte'=end));
  count = mongo.count(m,ns, query);
  users[i] = count;
  print(list(start, count));
}

print(users);
plot(users, type='b', col='red')