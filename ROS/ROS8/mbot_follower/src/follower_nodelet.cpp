#include <nodelet/nodelet.h>

#include "follower.hpp"

namespace follower
{
class FollowerNodelet : public nodelet::Nodelet
{
protected:
  FollowerNode *follower_node;
  ros::NodeHandle nh, pnh;
  virtual void onInit()
  {
    ROS_INFO("Start to bring up follower!");
    nh = getNodeHandle();
    pnh = getPrivateNodeHandle();
    follower_node = new FollowerNode(nh, pnh);
  }

public:
  ~FollowerNodelet()
  {
    if (follower_node != NULL)
    {
      delete follower_node;
      follower_node = NULL;
    }
  }
};

/*main*/
int main(int argc, char **argv)
{
  ros::init(argc, argv, "follower_node");
  ros::NodeHandle n;

  FollowerNode follower(n, n);
  follower.spin();

  return 0;
}

}

// watch the capitalization carefully
#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(follower::FollowerNodelet, nodelet::Nodelet)
