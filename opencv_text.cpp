#include<opencv2/core.hpp>
#include<opencv2/opencv.hpp>
#include<opencv2/highgui/highgui.hpp>
#include<iostream>
#include<vector>
#include<map>
#include<stdio.h>
#include<math.h>
#include<bits/stdc++.h>
#include<boost/math/constants/constants.hpp>
using namespace std;
using namespace cv;
using namespace boost;

int main()
{
    vector<vector<int>>vvec;
    vector<int>vec_int;
    vector<int>vec_t;
    map<int,int>mp;
    // //绝对路径ok
    // Mat img=imread("/home/solidworks/my_doc/program/opencv_test/test.jpeg");
    Mat img=imread("../1.jpg");//相对路径ok
    Mat img2=imread("../2.jpg");
    Mat dst;
    
    dst=img.clone();
  
    int ROW=img.rows;
    int Col=img.cols;
    int row=img2.rows;
    int col=img2.cols;

    //img提取最后一列像素；
    for(int r=0;r<ROW;r++)
    {
        vec_int.push_back(img.at<Vec3b>(r,Col)[0]);
        vec_int.push_back(img.at<Vec3b>(r,Col)[1]);
        vec_int.push_back(img.at<Vec3b>(r,Col)[2]);
    }
    //提取img2所有像素
    for(int j=0;j<col;j++)
    {
      int d=0;
      for(int i=0;i<row;i++)
      {
        vec_t.push_back(img2.at<Vec3b>(i,j)[0]);
        vec_t.push_back(img2.at<Vec3b>(i,j)[1]);
        vec_t.push_back(img2.at<Vec3b>(i,j)[2]);
        int a=img2.at<Vec3b>(i,j)[0]-img.at<Vec3b>(i,Col)[0];
        int b=img2.at<Vec3b>(i,j)[1]-img.at<Vec3b>(i,Col)[1];
        int c=img2.at<Vec3b>(i,j)[2]-img.at<Vec3b>(i,Col)[2];
        d= sqrt(pow(a,2)+pow(b,2)+pow(c,2))+d;
      }
      mp.emplace(j,d);
    }

    int find_min=INT_MAX;
    for(auto iter=mp.begin();iter!=mp.end();iter++)
    {
        find_min=min(iter->second,find_min);

    }
    for(auto iter=mp.begin();iter!=mp.end();iter++)
    {
      if(find_min==iter->second)
      {
        cout<<"最佳匹配列："<<iter->first<<endl;
      }
    }
    int i=0;
    for(int k=find_min;k<col;k++)
    {
      
      for(int j=0;j<row;j++)
      {
          dst.at<Vec3b>(i,j)[0]=img2.at<Vec3b>(k,j)[0];
          dst.at<Vec3b>(i,j)[1]=img2.at<Vec3b>(k,j)[1];
          dst.at<Vec3b>(i,j)[2]=img2.at<Vec3b>(k,j)[2];
          i++;
      }
      
    }
    imshow("ret",dst);
    imwrite("../001.jpg",dst);
    //waitKey(2000);

    cout<<"行数为："<<row<<" 列数为："<<col<<endl;
    return 0;
}


/*
路径出错会出现：
terminate called after throwing an instance of 'cv::Exception'
  what():  
  OpenCV(4.5.2) /home/solidworks/my_install/opencv4.5.2/opencv-4.5.2/modules/highgui/src/window.cpp:404: 
  error: (-215:Assertion failed) size.width>0 && size.height>0 in function 'imshow'
*/