# Ruby setup for Ubuntu
1. Install Ruby and development libraries which will be required for some of the dependencies: 
```
sudo apt update && apt install -y ruby-dev libffi-dev autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev libmysqlclient-dev
```

2. Update ruby gem environment and install bundler for dependecy management:
```
 gem install bundler
```

3. Copy features directory, Gemfile and smoke_tests.sh files in the image


4. Run `bundle install` while being in the same directory where Gemfile is located to install all required depdendencies for those tests to run. 

# Ruby depedency setup for ruby-alpine
1. Install Ruby and development libraries which will be required for some of the dependencies: 
```
apk add --update build-base mariadb-dev nodejs tzdata openjdk8-jre && rm -rf var/cache/apk/*
```

2. Update ruby gem environment and install bundler for dependecy management:
```
 gem install bundler
```

3. Copy features directory, Gemfile and smoke_tests.sh files in the image


4. Run `bundle install` while being in the same directory where Gemfile is located to install all required depdendencies for those tests to run. 

