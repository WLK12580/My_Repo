#include<boost/thread.hpp>
#include<iostream>
using namespace std;

void wait(int seconds)
{
    boost::this_thread::sleep(boost::posix_time::seconds(seconds));

}
void thread()
{
    try
    {
        for(int i=0;i<5;i++)
    {
        wait(1);
        cout<<i<<endl;
    }
    }
    catch(const boost::thread_interrupted& )
    {
        cout<<"中断"<<endl;
    }
}
int main()
{
    boost::thread t(thread);
    wait(4);
    t.interrupt();//中断调用
    t.join();
    cout<<"main_end"<<endl;
}