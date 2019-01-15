#pragma once

#include <ctime>
#include <cstdlib>
#include <chrono>

class TicToc
{
  public:
    TicToc()
    {
        tic();
    }
    /**
     * @brief 记录下当前时间赋值给start系统时钟对象
     * 
     */
    void tic()
    {
        start = std::chrono::system_clock::now();
    }
    
    /**
     * @brief 计算上一时刻到当前时刻的时间间隔
     * 
     * @return double 返回毫秒
     */
    double toc()
    {
        end = std::chrono::system_clock::now();
        std::chrono::duration<double> elapsed_seconds = end - start;
        return elapsed_seconds.count() * 1000;
    }

  private:
    std::chrono::time_point<std::chrono::system_clock> start, end;
};
