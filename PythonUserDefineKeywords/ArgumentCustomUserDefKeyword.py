import os

def create_folder(foldername):
    os.mkdir("D:\\" + foldername)

    #os.rmdir("D:\\RobotTest\Testing123")
    #os.rmdir("D:\\RobotTest")

def create_sub_folder(foldname, subfoldername):
    #os.mkdir("D:\\RobotTest\\" + subfoldername)
    os.mkdir("D:\\" + foldname)
    os.mkdir("D:\\" +foldname+ '\\' +subfoldername)