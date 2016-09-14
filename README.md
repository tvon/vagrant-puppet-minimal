# Howdy

This is a (fairly) minimal starting point for using Vagrant with the standalone puppet provisioner.

```sh-session
$ tree .
.
├── README.md
├── Vagrantfile
└── environments
    └── development
        ├── manifests
        │   └── site.pp
        └── modules
            └── baseconfig
                ├── files
                │   └── bashrc
                └── manifests
                    └── init.pp

7 directories, 5 files
```
