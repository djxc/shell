编写.sh文件
 “#! /bin/bash” 开头，它代表的意思是，该文件使用的是bash语法
给脚本赋予运行权限，chmod +x xxx.sh, 然后就可以运行
打印echo "xx"

cron定时任务：
1.新建文件，编写程序：*/2 * * * * date >> /home/postgres/time.log
2.crontab *** （文件名）
3.重启cron：service cron restart
每过两分钟向time.log写入当前时间

cron的常用语句：
每五分钟执行  */5 * * * *
每隔1小时执行   */60 * * * *
每小时整点执行     0 * * * *
每天执行        0 0 * * *
每周执行       0 0 * * 0

实例1：每1分钟执行一次command
命令：
* * * * * command

实例2：每小时的第3和第15分钟执行
命令：
3,15 * * * * command

实例3：在上午8点到11点的第3和第15分钟执行
命令：
3,15 8-11 * * * command

实例4：每隔两天的上午8点到11点的第3和第15分钟执行
命令：
3,15 8-11 */2 * * command

实例5：每个星期一的上午8点到11点的第3和第15分钟执行
命令：
3,15 8-11 * * 1 command

实例6：每晚的21:30重启smb 
命令：
30 21 * * * /etc/init.d/smb restart


每隔一段时间弹出一个对话框，使用zenity： zenity --info --title "Information" --text "This is dj" --width=300 --height    =200
然后修改cron文件，*/1 * * * * export DISPLAY=:0.0 && /home/dj/Shell/time.sh，否则对话框不显示


