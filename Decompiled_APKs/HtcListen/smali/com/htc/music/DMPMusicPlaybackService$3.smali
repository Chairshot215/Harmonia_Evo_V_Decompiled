.class Lcom/htc/music/DMPMusicPlaybackService$3;
.super Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMPMusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-direct {p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$$$$ albumArtDownloadedNotify()...serverID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v2

    const/16 v3, 0x2afd

    invoke-virtual {v2, v3}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "adn_server"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "adn_content"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "adn_filepath"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    cmp-long v4, p5, p3

    if-gez v4, :cond_0

    const/4 v2, -0x1

    :cond_0
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$1700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$2500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$2600(Lcom/htc/music/DMPMusicPlaybackService;)J

    move-result-wide v4

    cmp-long v4, v4, p3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$2700(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v4

    if-ne v4, v2, :cond_1

    const-string v4, "[DMPMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ contentAddedNotify()...containerID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "[DMPMusicPlaybackService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ contentAddedNotify()...direction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", startIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mStartIdx = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J
    invoke-static {v6}, Lcom/htc/music/DMPMusicPlaybackService;->access$2600(Lcom/htc/music/DMPMusicPlaybackService;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToUpdateQueue:J
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$2800(Lcom/htc/music/DMPMusicPlaybackService;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToUpdateQueue:J
    invoke-static {v4, v5, v6}, Lcom/htc/music/DMPMusicPlaybackService;->access$2802(Lcom/htc/music/DMPMusicPlaybackService;J)J

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToUpdateQueue:J
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$2800(Lcom/htc/music/DMPMusicPlaybackService;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "## > 10 seconds, Updating it.... begin"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mTimePointToUpdateQueue:J
    invoke-static {v4, v5, v6}, Lcom/htc/music/DMPMusicPlaybackService;->access$2802(Lcom/htc/music/DMPMusicPlaybackService;J)J

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$2900(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "content"

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/DMPMusicPlaybackService;->access$1800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v6, 0x0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->reloadQueue(Z)V
    invoke-static {v4, v6}, Lcom/htc/music/DMPMusicPlaybackService;->access$3000(Lcom/htc/music/DMPMusicPlaybackService;Z)V

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const-string v6, "com.htc.music.plugin.metachanged"

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/htc/music/DMPMusicPlaybackService;->access$3100(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "## > 10 seconds, Updating it.... end"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_3
    const-string v4, "[DMPMusicPlaybackService]"

    const-string v5, "## update too fast, ignore this time..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    cmp-long v2, p5, p3

    if-gez v2, :cond_0

    const/4 v0, -0x1

    :cond_0
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$1700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mContainerID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$2500(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$2600(Lcom/htc/music/DMPMusicPlaybackService;)J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDirection:I
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$2700(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v2

    if-ne v2, v0, :cond_1

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@ contentBrowsingDoneNotify()...serverID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", containerID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMPMusicPlaybackService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@ contentBrowsingDoneNotify()...direction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mStartIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mStartIdx:J
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$2600(Lcom/htc/music/DMPMusicPlaybackService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$2900(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "content"

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$1800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "endIdx"

    invoke-interface {v1, v2, p5, p6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mEndIdx:J
    invoke-static {v2, p5, p6}, Lcom/htc/music/DMPMusicPlaybackService;->access$3202(Lcom/htc/music/DMPMusicPlaybackService;J)J

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v4, 0x1

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->reloadQueue(Z)V
    invoke-static {v2, v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$3000(Lcom/htc/music/DMPMusicPlaybackService;Z)V

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const-string v4, "com.htc.music.plugin.metachanged"

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$3100(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V

    monitor-exit v3

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$1700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$1800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$3300(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&& contentBrowsingErrorNotify()...serverID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", containerID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&& -------------..errorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-static {v0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    sget-object v1, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    invoke-static {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$2102(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$DMPState;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    :goto_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->stop(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$2300(Lcom/htc/music/DMPMusicPlaybackService;Z)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$3302(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$2400(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    sget-object v1, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    invoke-static {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$2102(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$DMPState;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    goto :goto_0
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public contentUpdatedNotify(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$600(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$1700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/DMPMusicPlaybackService;->access$1800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### getContentItemDetailsNotify #### serverID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", contentID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### query all done ?? => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cur serverID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$1700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cur contentID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$1800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$1700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$3300(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$3300(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v4, 0x0

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueryContentID:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$3302(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "length"

    iget-wide v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "filename"

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "title"

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "artist"

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "album"

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "genre"

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "composer"

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "location"

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$2900(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "filepath"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, "#$###### Content Details Begin ###"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ mQueryPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueryPosition:I
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$3400(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ contentDuration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ contentArtist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ contentAlbum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ contentGenre = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ contentComposer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#$ contentTitle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, "#$###### Content Details End ###"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mQueryPosition:I
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$3400(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v4

    const-string v5, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v3, v4, v2, v5}, Lcom/htc/music/IPluginIPCNotify;->onTrackDetailsUpdated(ILandroid/content/ContentValues;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$1800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, "###### Content Details Begin ###"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# mPlayPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mPlayPos:I
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$3500(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentDuration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentArtist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentAlbum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentDate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentGenre = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentComposer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# contentTitle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, "###### Content Details End ###"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$1900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-wide v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    iput-wide v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentDuration:J

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$1900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentArtist:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$1900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentAlbum:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$1900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentDate:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$1900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$1900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$1900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentGenre:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$1900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentComposer:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$1900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/music/DMPContentItemDetails;->contentTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const-string v4, "com.htc.music.plugin.metachanged"

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$3100(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    sget-object v4, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    invoke-static {v3, v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$2102(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$DMPState;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    goto/16 :goto_1
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public rendererAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0

    return-void
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$1700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$1800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$600(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$1700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverAddedNotify...uniqueID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serverName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mServerID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$1700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverAddedNotify...mContentID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mContentID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$1800(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDLNAService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$600(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-static {v0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    sget-object v1, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    invoke-static {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$2102(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$DMPState;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    sget-object v1, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    invoke-static {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$2102(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$DMPState;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "serverAddedNotify...opencurrent()..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$2200(Lcom/htc/music/DMPMusicPlaybackService;)V

    goto :goto_0
.end method

.method public serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    .locals 0

    return-void
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$1700(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMPMusicPlaybackService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverRemovedNotify----current Server is removed!!!!!! Wifi enabled ?? => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-static {v2}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-static {v0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    sget-object v1, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->WIFI_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    invoke-static {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$2102(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$DMPState;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    :goto_0
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->stop(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$2300(Lcom/htc/music/DMPMusicPlaybackService;Z)V

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$2400(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$3;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    sget-object v1, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->SERVER_DISCONNECTED:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    invoke-static {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$2102(Lcom/htc/music/DMPMusicPlaybackService;Lcom/htc/music/DMPMusicPlaybackService$DMPState;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    goto :goto_0
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 0

    return-void
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 0

    return-void
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
