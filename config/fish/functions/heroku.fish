# Run heroku-toolblet in a container
# Taken from https://hub.docker.com/r/johnnagro/heroku-toolbelt/~/dockerfile/

function heroku
  drun \
    --name heroku \
    -v $HOME/.netrc:/root/.netrc \
    -v (pwd):(pwd) \
    -w (pwd) \
    graysonwright/heroku $argv;
end
