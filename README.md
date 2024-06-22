# tfcenter-service
## 软件简介
tfcenter是一款免费的内网穿透和文件管理软件，支持centos7/8、ubuntu18/20/22、windows7/10/11、ARM系统、树莓派等系统方案。
 - (1) 通过官方网站： http://www.tfcenter.com.cn 获取软件的更多信息。
 - (2) 通过qq群(群号:599362559): https://qm.qq.com/q/aSTuXp9rig 获取软件的更多信息


## 软件特性
  - **服务器穿透**（提供免费阿里云服务器进行测试验证）：将内网的服务映射到外网访问，实现远程访问内网。
  - **P2P穿透**（支持ipv4/ipv6隧道）：双方P2P打洞成功后，不需要中转服务器则会实现点对点高速传输互联。
  -** Webdav文件管理**（支持多目录管理）：可以通过访问C盘、D盘的方式远程访问家里电脑，不再担心磁盘空间不够。
  - **Web文件管理**（支持在线播放和在线编辑Office文件）：随时访问本地磁盘文件，并进行收藏和分享；也可在线播放图片和视频等。
  - **代理服务**（支持Socks5代理和Https代理）：可以在可以在外网随时通过代理访问内部服务器或者代理上网。
  - **DDNS服务**（阿里云和pubyun DDNS）：可以手动或自动的出口公网IP地址绑定到域名中。
  - **同步管理**（同步文件或文件夹）：可以通过tfcenter同步两台电脑中的文件或文件夹。


### 服务器穿透
(1) 选择服务器列表的任意可用服务器(官方提供部分免费服务器，也可自行搭建私人服务器)
![server-list](https://github.com/tfcenter/tfcenter-service/assets/169414880/b2805b3c-4ace-43a9-ba1f-e97f12a71695)
(2) 配置端口映射（支持tcp和udp协议）
![server-mapping](https://github.com/tfcenter/tfcenter-service/assets/169414880/90baa548-0b8d-4005-9b9e-94c4c98ad9fb)
这样可以通过服务器IP+映射端口号（如图172.245.137.103:10170）， 访问本地8866端口服务(127.0.0.1:8866)

### P2P穿透
本文档不介绍具体搭建方式。详情可通过官网查看B站视频 https://www.bilibili.com/video/BV1Kx4y1H7go
具体有以下三种P2P建立隧道的方式：（依次尝试）
 - 优先使用IPv6地址建立隧道（如有IPv6地址，则一定会建立隧道成功）
 - 其次使用出口ipv4出口地址建议隧道（不同的NAT类型，有可能会建议失败）
 - 最后使用跳板机中转P2P流量（一定会建立隧道成功）
![tfcenter-搭建免费高速的P2P内网穿透](https://github.com/tfcenter/tfcenter-service/assets/169414880/0ea03e3e-0ca8-4d1e-ac4e-ea029f90014b)



### Webdav文件管理
![webdav-setting](https://github.com/tfcenter/tfcenter-service/assets/169414880/f72df2f0-8033-47a7-bbec-cdcdb7a550fb)




### Web文件管理

### 代理服务

### DDNS服务

### 同步管理
