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

## Usage

### Dependencies

- You have [`git`](https://git-scm.com/) installed on your computer
- You have [`gh`](https://cli.github.com/) installed on your computer
- You have [SSH access to the tracking repo](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

### Installing dependencies

Before moving on, do the following

- Clone/download this repository to your computer
- Open a terminal in the root of the cloned/downloaded project folder

You can install the dependencies automatically by running the following command in the project root —

```
sh ./dependencies.sh
```

### Login to `gh`

When done, you have to login to `gh` by running the following command and following the steps —

```
gh auth login
```

### Forking a repository

Ensure that you're logged in to `gh` and use the tool like this —

```
sh ./fork.sh <owner_of_target_repo> <target_repo> <owner_of_tracking_repo> <tracking_repo> <optional_repo_name_suffix>
```

**Example:**

```
sh ./fork.sh ovieokeh go-article pusher pusher-tutorials forked
```

The above command will

- Clone https://github.com/ovieokeh/go-article to https://github.com/pusher/go-article-forked
- Record the go-article-forked repo inside https://github.com/pusher/pusher-tutorials
