# CCAV_Android
 c++11  +  SDL2（渲染） + ffmpeg （2.8.3_neon）+OpenAL（声音） + java （UI）= Android播放器

具体的效果可以进入博客查看：
http://my.oschina.net/klttl/blog/546950?fromerr=edY14KhL

目前Android版本经过了近3周从零边学边做，终于移植成功。目前Android版本功能功能简单基本上就是能播放视频；添加简单的UI交互界面；
我在sony、小米2、红米note、华为、三星手机没问题，可以正常播放；

目前已知的bug：                                                                                                                     
1、在Android系统5.0以上的版本会奔溃，主要是JNI不兼容性；                                                                                 
2、在小米4上会直接闪退；                                                                                                                 
3、声音有部分噪音，在音频这块OpenAL没处理好；                                                                                           
4、某些时候，第一次播放视频会很卡，或者黑屏，估计初始化有问题；                                                                         
5、某些时候第一次播放前几秒有白膜现象；                                                                                                
6、如果手机没有sdcard，自动搜索不到视频；列表会自动sdcard全部搜索相关格式视频，第一次加载会比较慢；                                      


稍后上传工程上来



