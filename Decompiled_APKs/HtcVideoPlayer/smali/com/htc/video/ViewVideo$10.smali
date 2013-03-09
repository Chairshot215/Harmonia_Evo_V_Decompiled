.class Lcom/htc/video/ViewVideo$10;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/ViewVideo;


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    const/4 v4, 0x0

    .line 1045
    sget-boolean v1, Lcom/htc/video/Common/Constants;->FOR_CMCC_PROJECT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mIsRepeat:Z
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$2900(Lcom/htc/video/ViewVideo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/video/HtcVideoView;->isErrorState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1047
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v1}, Lcom/htc/video/ViewVideo;->closeOptionsMenu()V

    .line 1048
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/video/HtcVideoView;->stopPlayback()V

    .line 1049
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    iput v4, v1, Lcom/htc/video/ViewVideo;->mPausedPlaybackPosition:I

    .line 1050
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v1}, Lcom/htc/video/ViewVideo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1051
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->prepareVideo(Landroid/net/Uri;)V
    invoke-static {v1, v0}, Lcom/htc/video/ViewVideo;->access$3000(Lcom/htc/video/ViewVideo;Landroid/net/Uri;)V

    .line 1073
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHighSpeedModeStatus:I
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$3100(Lcom/htc/video/ViewVideo;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/video/HtcVideoView;->isErrorState()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1058
    const-string v1, "ViewVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCompletion] mHighSpeedModeStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHighSpeedModeStatus:I
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$3100(Lcom/htc/video/ViewVideo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v1

    iput v4, v1, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 1060
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    invoke-virtual {v1, v4}, Lcom/htc/video/ViewVideo$VideoMediaController;->doChangeHighSpeedMode(I)Z

    .line 1061
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/video/HtcVideoView;->seekTo(I)V

    .line 1062
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoView:Lcom/htc/video/HtcVideoView;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$1100(Lcom/htc/video/ViewVideo;)Lcom/htc/video/HtcVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/video/HtcVideoView;->start()V

    .line 1063
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/video/ViewVideo$VideoMediaController;->show()V

    goto :goto_0

    .line 1067
    :cond_2
    const-string v1, "ViewVideo"

    const-string v2, "[onCompletion] finsih:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    const/4 v2, 0x1

    #setter for: Lcom/htc/video/ViewVideo;->mBackKeyPressed:Z
    invoke-static {v1, v2}, Lcom/htc/video/ViewVideo;->access$3202(Lcom/htc/video/ViewVideo;Z)Z

    .line 1069
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mDMP:Z
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$2700(Lcom/htc/video/ViewVideo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1070
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->launchFolderList()V
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$3300(Lcom/htc/video/ViewVideo;)V

    .line 1071
    :cond_3
    iget-object v1, p0, Lcom/htc/video/ViewVideo$10;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v1}, Lcom/htc/video/ViewVideo;->finish()V

    goto/16 :goto_0
.end method
