# GitHub pull requests


## CLI-PR-001: branch update suggestions

Enable **Always suggest updating pull request branches** so an eligible pull request can be brought up to date even when branch protection does not require it.

Verify the live repository setting reports `allow_update_branch: true`.


## CLI-PR-002: squash merge messages

Allow squash merging. Default the squash commit title and message to the pull request title and description.

When accepted unchanged, the generated commit subject is the pull request title with its number, and the commit body is the pull request description.

Verify the live repository settings report `allow_squash_merge: true`, `squash_merge_commit_title: PR_TITLE`, and `squash_merge_commit_message: PR_BODY`.
