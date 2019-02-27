#include <actionlib/client/simple_action_client.h>
#include "communicate/DoDishesAction.h"

typedef actionlib::SimpleActionClient<communicate::DoDishesAction> Client;

//当前action完成后会调用一次该回调函数
void doneCb(const actionlib::SimpleClientGoalState& state, const communicate::DoDishesResultConstPtr& result)
{
    ROS_INFO("Yay! The dishes are now clean");
    ros::shutdown();
}

//当前action激活后会调用一次回调函数
void activeCb()
{
    ROS_INFO("Goal just went active");
}

void feedbackCb(const communicate::DoDishesFeedbackConstPtr& feedback)
{
    ROS_INFO(" percent_complete : %f ", feedback->percent_complete);
}

int main(int argc, char ** argv)
{
    ros::init(argc, argv, "do_dishes_client");

    ros::NodeHandle n;

    Client client("do_dishes", true);

    ROS_INFO("Waiting for action server to start.");
    client.waitForServer();
    ROS_INFO("Action server started, sending goal.");

    communicate::DoDishesGoal goal;
    goal.dishwasher_id = 1;

    client.sendGoal(goal, &doneCb, &activeCb, &feedbackCb);

    ros::spin();
    return 0;
}