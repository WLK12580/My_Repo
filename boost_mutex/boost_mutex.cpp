#include<boost/thread.hpp>
#include<iostream>
using namespace std;

void wait(const int seconds)
{
    boost::this_thread::sleep(boost::posix_time::seconds(seconds));
}
boost::mutex mutex1;
void thread1()
{
    for (int i = 0; i < 10; i++)
    {
        wait(1);
        // mutex1.lock();
        cout<<"Thread"<<boost::this_thread::get_id()<<":"<<i<<endl;
        // mutex1.unlock();
    }
    
}

int main()
{
    boost::thread t1(thread1);
    boost::thread t2(thread1);
    t1.join();
    t2.join();
}