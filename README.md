A trivial CVS server.

To use, run

    docker run -p 2401:2401 jglick/cvs-demo

Then connect using `:pserver:nobody@localhost:/var/lib/cvs`. For example:

    export CVSROOT=:pserver:nobody@localhost:/var/lib/cvs
    cd /tmp
    cvs checkout -d work .
    cd work
    mkdir module
    cvs add module
    echo hello > module/file
    cvs add module/file
    cvs commit -m 'added module'
