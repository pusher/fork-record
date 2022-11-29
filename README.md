## Fork-Record

This tool allows you to fork a repository to an account and then record it under another repository.

### Terms to know

- Target repository: The repo being forked
- Tracking repository: The repo where you want to record the forked repo
- Owner of a repository: The account that owns a repository e.g
  - pusher is the owner of this repo https://github.com/pusher/tutorials
  - ovieokeh is the owner of this repo https://github.com/ovieokeh/personal

### Available parameters

You can pass the following arguments when using the tool. The order which you supply these matter.

1. owner_of_target_repo: Owner of the target repo
2. target_repo: name of the repo being cloned, e.g `tutorials` for `https://github.com/pusher/tutorials`, `tutorials-website` for `https://github.com/pusher/tutorials-website`
3. owner_of_tracking_repo: Owner of the tracking repo
4. tracking_repo: the name of the tracking repo (same rules as target_repo)
5. optional_repo_name_suffix: A optional suffix to be added to the end of the forked repo name

### Pre-requisites to use

- You have [SSH access to the tracking repo](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

### Usage

- Clone/download this repository to your computer
- Open a terminal in the root of the project
- Run the command like so

```
sh ./fork.sh ovieokeh go-article pusher pusher-tutorials forked
```

The above command will

- Clone https://github.com/ovieokeh/go-article to https://github.com/pusher/go-article-forked
- Record the go-article-forked repo inside https://github.com/pusher/pusher-tutorials
