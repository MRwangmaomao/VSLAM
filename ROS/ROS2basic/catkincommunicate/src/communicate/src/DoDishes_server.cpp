#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include "communicate/DoDishesAction.h"

typedef actionlib::SimpleActionServer<communicate::DoDishesAction> Server;


void  execute(const communicate::DoDishesGoalConstPtr & goal, Server* as)
{
    ros::Rate r(1);
    communicate::DoDishesFeedback feedback;

    ROS_INFO("Dishwasher %d is working.", goal->dishwasher_id);

    for(int i = 1; i <= 10; i++)
    {
        feedback.percent_complete = i * 10;
        as->publishFeedback(feedback);
        ROS_INFO("Percent is %d.", feedback.percent_complete);
        r.sleep();
    }

    ROS_INFO("Dishwasher %d finish working.", goal->dishwasher_id);
    as->setSucceeded();
}

int main(int argc, char ** argv)
{
    ros::init(argc, argv, "do_dishes_server");
    ros::NodeHandle n;

    Server server(n, "do_dishes", boost::bind(&execute, _1, &server), false);

    server.start();

    ros::spin();

    return 0;
}