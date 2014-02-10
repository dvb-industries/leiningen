package "wget"

execute "mkdir /opt/leiningen" do
  cwd "/opt/"
  command "mkdir leiningen"
end

execute "get leiningen" do
  cwd "/opt/leiningen/"
  command "wget https://raw.github.com/technomancy/leiningen/stable/bin/lein"
end
