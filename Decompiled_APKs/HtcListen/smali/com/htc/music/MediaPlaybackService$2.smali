.class Lcom/htc/music/MediaPlaybackService$2;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v6, 0x14

    const/4 v7, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    const-string v5, "[MediaPlaybackService]"

    const-string v6, "there is something wrong in mUiHandler"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->waitForAnimation()V
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$2700(Lcom/htc/music/MediaPlaybackService;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/Notification;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->pluginUpdateNotification(Landroid/app/Notification;)V
    invoke-static {v5, v4}, Lcom/htc/music/MediaPlaybackService;->access$2800(Lcom/htc/music/MediaPlaybackService;Landroid/app/Notification;)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v6, v5}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "plugin class name is null"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$2908(Lcom/htc/music/MediaPlaybackService;)I

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$2900(Lcom/htc/music/MediaPlaybackService;)I

    move-result v5

    if-le v5, v6, :cond_3

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->resetMusicPluginManager()V

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I
    invoke-static {v5, v7}, Lcom/htc/music/MediaPlaybackService;->access$2902(Lcom/htc/music/MediaPlaybackService;I)I

    goto :goto_0

    :cond_3
    const-wide/16 v5, 0xc8

    invoke-virtual {p0, p1, v5, v6}, Lcom/htc/music/MediaPlaybackService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5, v0, v7, v7}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;ZZ)Z

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mBindFailedCounter:I
    invoke-static {v5, v7}, Lcom/htc/music/MediaPlaybackService;->access$2902(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_0

    :pswitch_4
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$3008(Lcom/htc/music/MediaPlaybackService;)I

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$3000(Lcom/htc/music/MediaPlaybackService;)I

    move-result v5

    if-le v5, v6, :cond_5

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I
    invoke-static {v5, v7}, Lcom/htc/music/MediaPlaybackService;->access$3002(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x5

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/music/MediaPlaybackService$2;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v5}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mUnbindFailedCounter:I
    invoke-static {v5, v7}, Lcom/htc/music/MediaPlaybackService;->access$3002(Lcom/htc/music/MediaPlaybackService;I)I

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "message"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "message"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v6, "duration"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    #calls: Lcom/htc/music/MediaPlaybackService;->showToast(Ljava/lang/String;I)V
    invoke-static {v5, v2, v6}, Lcom/htc/music/MediaPlaybackService;->access$3100(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "case TOAST_WARNING: errorMessage is null or length is 0 !!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v5, "resId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "resId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_9

    iget-object v5, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v6, "duration"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    #calls: Lcom/htc/music/MediaPlaybackService;->showToast(II)V
    invoke-static {v5, v3, v6}, Lcom/htc/music/MediaPlaybackService;->access$3200(Lcom/htc/music/MediaPlaybackService;II)V

    goto/16 :goto_0

    :cond_9
    const-string v5, "[MediaPlaybackService]"

    const-string v6, "case TOAST_WARNING: resId <= 0!!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v6, p0, Lcom/htc/music/MediaPlaybackService$2;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    iget v7, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/music/MediaPlaybackService;->updateAlbumArtInNotification(Landroid/graphics/Bitmap;I)V
    invoke-static {v6, v5, v7}, Lcom/htc/music/MediaPlaybackService;->access$3300(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
