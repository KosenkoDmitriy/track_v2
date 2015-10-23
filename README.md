# Tracksmith


### Build Status
Master: [![Circle CI](https://circleci.com/gh/tracksmith/track_v2/tree/master.svg?style=svg&circle-token=b3b3407b0213ca2407b0332de02d86e20a0b382a)](https://circleci.com/gh/tracksmith/track_v2/tree/master) Develop: [![Circle CI](https://circleci.com/gh/tracksmith/track_v2/tree/develop.svg?style=svg&circle-token=b3b3407b0213ca2407b0332de02d86e20a0b382a)](https://circleci.com/gh/tracksmith/track_v2/tree/develop)

## Workflow

### Git
We will be using [Atlassian's Git Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)

### CircleCI
[CircleCI](https://circleci.com/gh/tracksmith/track_v2) will be our CI system run on each commit pushed to Github.
With each commit the following will be run:
- Unit Tests
- Linting

The result of CircleCI will be displayed on the branch / pull request. If there are linting issues they will be added as comments on your commit / pull request.

### Linting
[Rubocop](https://github.com/bbatsov/rubocop) what we use for linting. There has been a slight modification made to the default rules
that increase the line length limit to 200 characters.

 *Note: Any violations of the lint rules will show up as a comment on the commit or pull request.*

It may be helpful to integrate Rubocop into your favorite editor, more information can be found [here](https://github.com/bbatsov/rubocop)

### Changelog

The change log should be updated when major changes occur on the project. These should be
changes that are interesting to a non-technical user and in terms that a non-tecnical user can easily understand.

The format for the change log should adhere to (Keep a CHANGELOG)[http://keepachangelog.com]
