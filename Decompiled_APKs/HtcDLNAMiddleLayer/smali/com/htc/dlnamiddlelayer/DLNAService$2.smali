.class Lcom/htc/dlnamiddlelayer/DLNAService$2;
.super Landroid/content/BroadcastReceiver;
.source "DLNAService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/DLNAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bMusicPlayingOnDevice:Z

.field bScreenOn:Z

.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/DLNAService;


# direct methods
.method constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V
    .locals 1
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->bMusicPlayingOnDevice:Z

    .line 848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->bScreenOn:Z

    return-void
.end method

.method private onDownloadAlbumArtCompleteAction(JLjava/lang/String;)V
    .locals 3
    .parameter "downloadAlbumID"
    .parameter "downloadAlbumArtPath"

    .prologue
    .line 1005
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "onDownloadAlbumArtCompleteAction"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(I)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 1009
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-nez v0, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 1014
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnamiddlelayer/MediaController;->setDownloadStoreAlbumArt(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private onScreenOffAction()V
    .locals 1

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->bMusicPlayingOnDevice:Z

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1300(Lcom/htc/dlnamiddlelayer/DLNAService;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRefControllerUse:Ljava/util/Vector;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1400(Lcom/htc/dlnamiddlelayer/DLNAService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #calls: Lcom/htc/dlnamiddlelayer/DLNAService;->disableMulticast()V
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2000(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRefControllerUse:Ljava/util/Vector;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1400(Lcom/htc/dlnamiddlelayer/DLNAService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #calls: Lcom/htc/dlnamiddlelayer/DLNAService;->disableMulticast()V
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$2000(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    goto :goto_0
.end method

.method private onScreenOnAction()V
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #calls: Lcom/htc/dlnamiddlelayer/DLNAService;->enableMulticast()V
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1900(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    .line 980
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->refreshDevices()V

    .line 981
    return-void
.end method


# virtual methods
.method public onDMCNotificationIntentAction(II)V
    .locals 4
    .parameter "cookie"
    .parameter "actionRequest"

    .prologue
    .line 954
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnDMCNotificationIntent: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actionRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v1, p1}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(I)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 958
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-eqz v0, :cond_1

    .line 960
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 964
    :cond_0
    invoke-virtual {v0, p2}, Lcom/htc/dlnamiddlelayer/MediaController;->setPhotoSlideshowState(I)V

    .line 974
    :cond_1
    :goto_0
    return-void

    .line 968
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 969
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->play()V

    goto :goto_0

    .line 970
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 971
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaController;->pause()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "acontext"
    .parameter "intent"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 852
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 856
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #calls: Lcom/htc/dlnamiddlelayer/DLNAService;->cancelNotification(I)V
    invoke-static {v5, v6}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1100(Lcom/htc/dlnamiddlelayer/DLNAService;I)V

    .line 857
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #calls: Lcom/htc/dlnamiddlelayer/DLNAService;->cancelNotification(I)V
    invoke-static {v5, v7}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1100(Lcom/htc/dlnamiddlelayer/DLNAService;I)V

    .line 859
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
    invoke-static {v5}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 861
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
    invoke-static {v5}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/MediaControllerMgr;->removeAll()V

    .line 862
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    const/4 v6, 0x0

    #setter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mControllerMgr:Lcom/htc/dlnamiddlelayer/MediaControllerMgr;
    invoke-static {v5, v6}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1702(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/MediaControllerMgr;)Lcom/htc/dlnamiddlelayer/MediaControllerMgr;

    .line 865
    :cond_0
    const-string v5, "DLNAMiddlelayer"

    const-string v6, "Quick power off"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_1
    :goto_0
    return-void

    .line 867
    :cond_2
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 869
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z
    invoke-static {v5}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$600(Lcom/htc/dlnamiddlelayer/DLNAService;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 871
    iput-boolean v7, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->bScreenOn:Z

    .line 872
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/DLNAService$2;->onScreenOnAction()V

    .line 873
    const-string v5, "DLNAMiddlelayer"

    const-string v6, "action screen on"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 876
    :cond_3
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 878
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z
    invoke-static {v5}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$600(Lcom/htc/dlnamiddlelayer/DLNAService;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 880
    iput-boolean v6, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->bScreenOn:Z

    .line 881
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/DLNAService$2;->onScreenOffAction()V

    .line 882
    const-string v5, "DLNAMiddlelayer"

    const-string v6, "action screen off"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 885
    :cond_4
    const-string v5, "com.htc.dlnamiddlelayer.dmc_photo_start"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 887
    invoke-virtual {p0, v6, v6}, Lcom/htc/dlnamiddlelayer/DLNAService$2;->onDMCNotificationIntentAction(II)V

    goto :goto_0

    .line 889
    :cond_5
    const-string v5, "com.htc.dlnamiddlelayer.dmc_photo_stop"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 891
    invoke-virtual {p0, v6, v7}, Lcom/htc/dlnamiddlelayer/DLNAService$2;->onDMCNotificationIntentAction(II)V

    goto :goto_0

    .line 893
    :cond_6
    const-string v5, "com.htc.dlnamiddlelayer.dmc_video_play"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 895
    invoke-virtual {p0, v6, v9}, Lcom/htc/dlnamiddlelayer/DLNAService$2;->onDMCNotificationIntentAction(II)V

    goto :goto_0

    .line 897
    :cond_7
    const-string v5, "com.htc.dlnamiddlelayer.dmc_video_pause"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 899
    invoke-virtual {p0, v6, v10}, Lcom/htc/dlnamiddlelayer/DLNAService$2;->onDMCNotificationIntentAction(II)V

    goto :goto_0

    .line 901
    :cond_8
    const-string v5, "com.htc.dlnamiddlelayer.dmc_audio_play"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 903
    invoke-virtual {p0, v7, v9}, Lcom/htc/dlnamiddlelayer/DLNAService$2;->onDMCNotificationIntentAction(II)V

    goto :goto_0

    .line 905
    :cond_9
    const-string v5, "com.htc.dlnamiddlelayer.dmc_audio_pause"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 907
    invoke-virtual {p0, v7, v10}, Lcom/htc/dlnamiddlelayer/DLNAService$2;->onDMCNotificationIntentAction(II)V

    goto/16 :goto_0

    .line 909
    :cond_a
    const-string v5, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 911
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z
    invoke-static {v5}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$600(Lcom/htc/dlnamiddlelayer/DLNAService;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 913
    const-string v5, "isplaying"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->bMusicPlayingOnDevice:Z

    .line 914
    const-string v5, "DLNAMiddlelayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Musicplayer state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->bMusicPlayingOnDevice:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-boolean v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->bScreenOn:Z

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/DLNAService$2;->onScreenOffAction()V

    goto/16 :goto_0

    .line 919
    :cond_b
    const-string v5, "action_complete_one_download"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 921
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z
    invoke-static {v5}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$600(Lcom/htc/dlnamiddlelayer/DLNAService;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 924
    const-string v5, "DLNAMiddlelayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent Receiver:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string v5, "album_id"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 927
    .local v2, albumID:I
    const-string v5, "albumart_path"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, albumArtPath:Ljava/lang/String;
    int-to-long v5, v2

    invoke-direct {p0, v5, v6, v1}, Lcom/htc/dlnamiddlelayer/DLNAService$2;->onDownloadAlbumArtCompleteAction(JLjava/lang/String;)V

    .line 931
    const-string v5, "DLNAMiddlelayer"

    const-string v6, "Music download store complete intent is handled"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 933
    .end local v1           #albumArtPath:Ljava/lang/String;
    .end local v2           #albumID:I
    :cond_c
    const-string v5, "com.htc.dlnamiddlelayer.dmc_destroy"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 935
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z
    invoke-static {v5}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$600(Lcom/htc/dlnamiddlelayer/DLNAService;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 938
    const-string v5, "cookie"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 940
    .local v3, cookie:I
    if-eq v3, v8, :cond_1

    .line 944
    :try_start_0
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/DLNAService$2;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mBinder:Lcom/htc/dlnainterface/IDLNAPluginService$Stub;
    invoke-static {v5}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1800(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnainterface/IDLNAPluginService$Stub;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->destroyMediaController(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 945
    :catch_0
    move-exception v4

    .line 946
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method
