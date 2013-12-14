in @/opt/nise_nabe/chef-repo@

solo.rb
```
file_cache_path "/tmp/chef-solo"
cookbook_path ["/opt/nise_nabe/chef-repo/cookbooks", "/opt/nise_nabe/chef-repo/site-cookbooks"]
```

```
$ cd /opt/nise_nabe/chef-repo
$ chef-solo -c solo.rb -j nodes/base.json
```
