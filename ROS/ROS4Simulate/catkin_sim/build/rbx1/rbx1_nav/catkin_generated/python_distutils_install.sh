#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/rbx1/rbx1_nav"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/install/lib/python2.7/dist-packages:/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/build" \
    "/usr/bin/python" \
    "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/src/rbx1/rbx1_nav/setup.py" \
    build --build-base "/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/build/rbx1/rbx1_nav" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/install" --install-scripts="/home/wpr/code/VSLAM/ROS/ROS4Simulate/catkin_sim/install/bin"
