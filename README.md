# chef-frontend

### Prerequisites
- [Vagrant](http://www.vagrantup.com/)
- [chef](http://www.opscode.com/chef/)
- [vagrant-berkshelf](https://github.com/riotgames/vagrant-berkshelf)

### Usage
```sh
bundle install --path=.bundle
bundle exec berks --path=cookbooks
vagrant up
```
