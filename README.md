# WKWebViewBugIOS12_2
It reproduces the web bug (iOS 12.2, 12.3.1 only). 
Set the speed limit on your phone to 3G. 
Run the application. 
Move the slider to load unbuffered sections of video. 
After several iteration the webView freezes. 
Sometimes the error code is [IPC] Connection::waitForSyncReply: Timed-out while waiting for reply, id = ...

Apple report number #6166330