#!/usr/bin/env sh 

npm run ng build 
npm run ng sert & 
sleep 1 
echo $! > .pidfile 

echo 'Maintenant...' 
echo 'Visitez http://localhost:4200 pour voir votre application Node.js/Angular en action.'