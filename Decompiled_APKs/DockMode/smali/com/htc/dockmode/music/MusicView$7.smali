.class Lcom/htc/dockmode/music/MusicView$7;
.super Ljava/lang/Object;
.source "MusicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/music/MusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/music/MusicView;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/music/MusicView;)V
    .locals 0
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 726
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    iget-object v3, v3, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 727
    invoke-static {}, Lcom/htc/dockmode/music/MusicView;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "buttonClickListener, mMediaPlaybackService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mMusicControl:Lcom/htc/dockmode/music/MusicControl;
    invoke-static {v3}, Lcom/htc/dockmode/music/MusicView;->access$100(Lcom/htc/dockmode/music/MusicView;)Lcom/htc/dockmode/music/MusicControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dockmode/music/MusicControl;->sendBindService()V

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mPrevButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/htc/dockmode/music/MusicView;->access$600(Lcom/htc/dockmode/music/MusicView;)Landroid/widget/ImageView;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 736
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    iget-object v3, v3, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->position()J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 738
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/dockmode/music/MusicView;->access$300(Lcom/htc/dockmode/music/MusicView;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 740
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.musicservicecommand"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    .local v2, i:Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "previous"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/dockmode/music/MusicView;->access$300(Lcom/htc/dockmode/music/MusicView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 790
    .end local v2           #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 791
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/htc/dockmode/music/MusicView;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Access service: IHtcMediaPlaybackService failed in buttonClickListener"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 744
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    iget-object v3, v3, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 747
    :cond_3
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mPlayPauseButton:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/htc/dockmode/music/MusicView;->access$700(Lcom/htc/dockmode/music/MusicView;)Landroid/widget/CheckBox;

    move-result-object v3

    if-ne p1, v3, :cond_5

    .line 748
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    iget-object v3, v3, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 749
    invoke-static {}, Lcom/htc/dockmode/music/MusicView;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[ATS][com.htc.MusicWidget][press_pause][successful]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    iget-object v3, v3, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->pause()V

    goto :goto_0

    .line 753
    :cond_4
    invoke-static {}, Lcom/htc/dockmode/music/MusicView;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[ATS][com.htc.MusicWidget][press_play][successful]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    iget-object v3, v3, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->play()V

    goto :goto_0

    .line 758
    :cond_5
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mNextButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/htc/dockmode/music/MusicView;->access$800(Lcom/htc/dockmode/music/MusicView;)Landroid/widget/ImageView;

    move-result-object v3

    if-ne p1, v3, :cond_6

    .line 760
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/dockmode/music/MusicView;->access$300(Lcom/htc/dockmode/music/MusicView;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 762
    invoke-static {}, Lcom/htc/dockmode/music/MusicView;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[ATS][com.htc.MusicWidget][next_music][successful]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.music.musicservicecommand"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 765
    .restart local v2       #i:Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "next"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/dockmode/music/MusicView;->access$300(Lcom/htc/dockmode/music/MusicView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 767
    .end local v2           #i:Landroid/content/Intent;
    :cond_6
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mSoundButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/htc/dockmode/music/MusicView;->access$900(Lcom/htc/dockmode/music/MusicView;)Landroid/widget/ImageView;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 772
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/dockmode/music/MusicView;->access$1000(Lcom/htc/dockmode/music/MusicView;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, v4, Lcom/htc/dockmode/music/MusicView;->audioManager:Landroid/media/AudioManager;

    .line 785
    const/4 v1, 0x1

    .line 788
    .local v1, flags:I
    iget-object v3, p0, Lcom/htc/dockmode/music/MusicView$7;->this$0:Lcom/htc/dockmode/music/MusicView;

    iget-object v3, v3, Lcom/htc/dockmode/music/MusicView;->audioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v1}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
