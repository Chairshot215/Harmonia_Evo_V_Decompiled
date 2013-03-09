.class Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;
.super Landroid/os/Handler;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1820
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    .line 1821
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1822
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 1825
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1858
    :goto_0
    return-void

    .line 1828
    :pswitch_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$5300(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1829
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/htc/store/activity/detail/DetailInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1, v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$5302(Lcom/htc/store/activity/detail/DetailInfo;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 1830
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v1}, Lcom/htc/store/activity/detail/DetailInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$5300(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$5400(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/MediaUtils;->playAudio(Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/media/AudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;II)V

    goto :goto_0

    .line 1833
    :pswitch_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$5300(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1834
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/htc/store/activity/detail/DetailInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1, v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$5302(Lcom/htc/store/activity/detail/DetailInfo;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 1835
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$5300(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$5400(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/store/util/MediaUtils;->stopPlayAudio(Landroid/media/AudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    goto :goto_0

    .line 1838
    :pswitch_2
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "NON_UI_MESSAGE_GET_ITEM_STATUS_FROM_MY_ACTIVITY"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1839
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/htc/store/module/vo/ItemItem;

    .line 1840
    .local v7, item:Lcom/htc/store/module/vo/ItemItem;
    if-nez v7, :cond_2

    .line 1841
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item = null, can\'t get it\'s item status"

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1844
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1845
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    new-instance v1, Lcom/htc/store/provider/AccessHelper;

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$5600(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$5502(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/provider/AccessHelper;)Lcom/htc/store/provider/AccessHelper;

    .line 1846
    :cond_3
    const/4 v9, 0x0

    .line 1848
    .local v9, myActivity:Lcom/htc/store/module/vo/MyActivityItem;
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v0

    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemByOnlineItemId(Ljava/lang/String;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v9

    .line 1849
    if-nez v9, :cond_4

    .line 1850
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v0

    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemByPackageName(Ljava/lang/String;)Lcom/htc/store/module/vo/MyActivityItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1854
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1855
    .local v8, message:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1851
    .end local v8           #message:Landroid/os/Message;
    :catch_0
    move-exception v6

    .line 1852
    .local v6, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "can\'t get my activity, "

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1825
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
