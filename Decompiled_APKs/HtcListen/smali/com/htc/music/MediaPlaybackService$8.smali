.class Lcom/htc/music/MediaPlaybackService$8;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/MediaPlaybackService;->registerExternalStorageListener()V
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

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x12

    const/16 v5, 0xf

    const/16 v4, 0xd

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V
    invoke-static {v1, v7}, Lcom/htc/music/MediaPlaybackService;->access$4600(Lcom/htc/music/MediaPlaybackService;Z)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z
    invoke-static {v1, v7}, Lcom/htc/music/MediaPlaybackService;->access$4902(Lcom/htc/music/MediaPlaybackService;Z)Z

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$5002(Lcom/htc/music/MediaPlaybackService;Z)Z

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mSdCardRemoved:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$4902(Lcom/htc/music/MediaPlaybackService;Z)Z

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #setter for: Lcom/htc/music/MediaPlaybackService;->mQueueModified:Z
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$5002(Lcom/htc/music/MediaPlaybackService;Z)Z

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$5108(Lcom/htc/music/MediaPlaybackService;)I

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/music/MediaPlaybackService;->mCardId:I
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackService;->access$5202(Lcom/htc/music/MediaPlaybackService;I)I

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v5, v2, v3}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[MediaPlaybackService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_MEDIA_SCANNER_FINISHED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorage(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[MediaPlaybackService]"

    const-string v2, "ACTION_MEDIA_SCANNER_FINISHED: reloadQueue"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mNonUiHandler:Lcom/htc/music/MediaPlaybackService$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$3500(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$8;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-wide/16 v2, 0x0

    #calls: Lcom/htc/music/MediaPlaybackService;->sendULogMessage(IJ)V
    invoke-static {v1, v7, v2, v3}, Lcom/htc/music/MediaPlaybackService;->access$5300(Lcom/htc/music/MediaPlaybackService;IJ)V

    goto/16 :goto_0
.end method
