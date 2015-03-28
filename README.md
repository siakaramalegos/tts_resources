## README

TTS Resources is a community open-source Rails project for current students and alumni of Tech Talent South's coding bootcamp.  Any student or alum is welcome to contribute.

To contribute, fork this repo, then clone your forked copy to you local machine.  Create a feature branch using a branch name that is descriptive of what you want to change.  Make your changes, then commit and push that branch to Github where you can generate the pull request to this master.

This project uses PostgreSQL in all environments - development, test, and production.

Note that this project has a special `rake db:populate` command.  It will automatically populate your development database so you can see what the application would look like with more data.  If you have data and are running in PostgreSQL, run rake db:drop then rake db:setup before you run populate.
