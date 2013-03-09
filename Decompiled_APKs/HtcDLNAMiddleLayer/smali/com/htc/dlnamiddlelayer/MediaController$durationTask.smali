.class Lcom/htc/dlnamiddlelayer/MediaController$durationTask;
.super Ljava/util/TimerTask;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "durationTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/MediaController;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 1997
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/MediaController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1997
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;-><init>(Lcom/htc/dlnamiddlelayer/MediaController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2001
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget-wide v0, v4, Lcom/htc/dlnamiddlelayer/MediaController;->nDurationStart:J

    .line 2002
    .local v0, durationStart:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget-wide v6, v6, Lcom/htc/dlnamiddlelayer/MediaController;->nDurationStart:J

    sub-long v2, v4, v6

    .line 2005
    .local v2, total:J
    const-string v4, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DLNA][AP][durationTask] durationTask() iCookie="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget v6, v6, Lcom/htc/dlnamiddlelayer/MediaController;->iCookie:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", durationTask : timer task received:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget v6, v6, Lcom/htc/dlnamiddlelayer/MediaController;->repeatState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", start="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget-wide v6, v6, Lcom/htc/dlnamiddlelayer/MediaController;->nDurationStart:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/MediaController;->durationTimerDisable()V

    .line 2009
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget v4, v4, Lcom/htc/dlnamiddlelayer/MediaController;->repeatState:I

    sget-object v5, Lcom/htc/dlnamiddlelayer/RepeatState;->REPEATALL:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2011
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/MediaController;->switchPlaylistNextItem()Z

    .line 2031
    :cond_0
    :goto_0
    return-void

    .line 2016
    :cond_1
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/MediaController;->hasPlaylist()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2018
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget-object v4, v4, Lcom/htc/dlnamiddlelayer/MediaController;->mPlaylist:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->isEnd()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2020
    const-string v4, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DLNA][AP][durationTask] durationTask.switchPlaylistNextItem() total="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", start="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget-wide v6, v6, Lcom/htc/dlnamiddlelayer/MediaController;->nDurationStart:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/MediaController;->switchPlaylistNextItem()Z

    .line 2022
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "[DLNA] Photo slideshow switchPlaylistNextItem()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2026
    :cond_2
    const-string v4, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DLNA][AP][durationTask] durationTask.stop() total="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", start="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    iget-wide v6, v6, Lcom/htc/dlnamiddlelayer/MediaController;->nDurationStart:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/MediaController$durationTask;->this$0:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/MediaController;->stop()V

    .line 2028
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "[DLNA] Photo slideshow end"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
