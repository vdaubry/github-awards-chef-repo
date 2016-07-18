cron 'daily_backup' do
  minute '0'
  hour '0'
  day '*'
  month '*'
  weekday '*'
  command "/home/ubuntu/scripts/daily_backup.sh"
end

cron 'weekly_backup' do
  minute '0'
  hour '0'
  day '*'
  month '*'
  weekday '0'
  command "/home/ubuntu/scripts/weekly_backup.sh"
end

cron 'monthly_backup' do
  minute '0'
  hour '0'
  day '1'
  month '*'
  weekday '*'
  command "/home/ubuntu/scripts/monthly_backup.sh"
end

cron 'redis save' do
  minute '0'
  hour '0'
  day '*'
  month '*'
  weekday '*'
  command "/usr/local/bin/redis-cli BGREWRITEAOF"
end

cron 'logrotate' do
  minute '0'
  hour '1'
  day '*'
  month '*'
  weekday '*'
  command "/usr/sbin/logrotate /etc/logrotate.d/githubawards"
end

template '/home/ubuntu/scripts/daily_backup.sh' do
  source 'daily_backup.sh.erb'
  owner 'ubuntu'
  group 'ubuntu'
  mode '0755'
end

template '/home/ubuntu/scripts/weekly_backup.sh' do
  source 'weekly_backup.sh.erb'
  owner 'ubuntu'
  group 'ubuntu'
  mode '0755'
end

template '/home/ubuntu/scripts/monthly_backup.sh' do
  source 'monthly_backup.sh.erb'
  owner 'ubuntu'
  group 'ubuntu'
  mode '0755'
end

template '/home/ubuntu/scripts/upload_backup.sh' do
  source 'upload_backup.sh.erb'
  owner 'ubuntu'
  group 'ubuntu'
  mode '0755'
end

template '/home/ubuntu/scripts/redis_backup.sh' do
  source 'redis_backup.sh.erb'
  owner 'ubuntu'
  group 'ubuntu'
  mode '0755'
end

template '/home/ubuntu/scripts/pg_backup.sh' do
  source 'pg_backup.sh.erb'
  owner 'ubuntu'
  group 'ubuntu'
  mode '0755'
end
