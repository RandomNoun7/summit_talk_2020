while true; do
  echo >> log.txt
  date >> log.txt
  puppet apply demo.pp >> /log.txt
  sleep 5
done