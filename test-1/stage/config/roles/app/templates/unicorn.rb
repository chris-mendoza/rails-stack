#Unicorn template
worker_processes 3
timeout 30
listen {{ ansible_eth1.ipv4.address }} 3000
working_directory "/var/www/wikistorm"
pid "/var/www/wikistorm/unicorn.pid"

#Logging
stderr_path "/var/www/wikistorm/log/unicorn.stderr.log"
stdout_path "/var/www/wikistorm/log/unicorn.stdout.log"

preload_app true
GC.respond_to?(:copy_on_write_friendly=) and
  GC.copy_on_write_friendly = true

check_client_connection false

before_fork do |server, worker|
  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end