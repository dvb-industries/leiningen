package "wget"

execute "mkdir /opt/leiningen" do
  cwd "/opt/"
  command "mkdir leiningen"
end

execute "get leiningen" do
  cwd "/opt/leiningen/"
  command "wget https://raw.github.com/technomancy/leiningen/stable/bin/lein"
end

execute "chown /opt/leiningen" do
  cwd "/opt"
  command "chown -R #{node[:lein][:user]}:#{node[:lein][:group]} leiningen"
end

execute "make lein executable" do
  cwd "/opt/leiningen"
  command "chmod 755 lein"
end
