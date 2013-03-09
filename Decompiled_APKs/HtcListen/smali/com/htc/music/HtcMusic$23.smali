.class Lcom/htc/music/HtcMusic$23;
.super Landroid/content/BroadcastReceiver;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v16, "com.htc.music.metachanged"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const-string v16, "[HtcMusic]"

    const-string v17, "==========META_CHANGED"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/HtcMusic;->updateTrackInfoP()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$2900(Lcom/htc/music/HtcMusic;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$3600(Lcom/htc/music/HtcMusic;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x1

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static/range {v16 .. v18}, Lcom/htc/music/HtcMusic;->access$2800(Lcom/htc/music/HtcMusic;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    const/4 v8, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v8

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$3700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v16, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$700(Lcom/htc/music/HtcMusic;)J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v16

    goto :goto_0

    :cond_4
    if-ltz v8, :cond_6

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$3700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/music/GliderAdapter;->getItemCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$3800(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$3800(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->isShowing()Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mDownloadAlbumArtDialog:Landroid/app/Dialog;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$3800(Lcom/htc/music/HtcMusic;)Landroid/app/Dialog;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/HtcMusic;->syncUpdateCurrentAlbum(Landroid/app/Dialog;)V

    goto :goto_1

    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :cond_7
    const-string v16, "com.htc.music.playbackcomplete"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPaused:Z
    invoke-static/range {v16 .. v17}, Lcom/htc/music/HtcMusic;->access$3902(Lcom/htc/music/HtcMusic;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$3600(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    :cond_8
    const-string v16, "com.htc.music.playstatechanged"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/HtcMusic;->setPauseButtonImage()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$3600(Lcom/htc/music/HtcMusic;)V

    const-string v16, "[HtcMusic]"

    const-string v17, "==========PLAYSTATE_CHANGED"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v16

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mPaused:Z
    invoke-static/range {v16 .. v17}, Lcom/htc/music/HtcMusic;->access$3902(Lcom/htc/music/HtcMusic;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$700(Lcom/htc/music/HtcMusic;)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #calls: Lcom/htc/music/HtcMusic;->queueNextRefresh(J)V
    invoke-static {v0, v9, v10}, Lcom/htc/music/HtcMusic;->access$2800(Lcom/htc/music/HtcMusic;J)V

    goto/16 :goto_1

    :catch_3
    move-exception v16

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPaused:Z
    invoke-static/range {v16 .. v17}, Lcom/htc/music/HtcMusic;->access$3902(Lcom/htc/music/HtcMusic;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$700(Lcom/htc/music/HtcMusic;)J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    :cond_a
    const-string v16, "com.htc.music.rotateleft"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const-string v16, "[HtcMusic]"

    const-string v17, "==========ANIMATION_MOVE_PREV"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$4000(Lcom/htc/music/HtcMusic;)I

    move-result v16

    const/16 v17, 0x12

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    :cond_c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueueSize()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v11

    add-int/lit8 v16, v7, -0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0

    add-int/lit8 v17, v7, -0x1

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollTo(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    :cond_e
    const-string v16, "[HtcMusic]"

    const-string v17, "Bad! Service is null at aniamtion"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const-string v16, "com.htc.music.rotateright"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const-string v16, "[HtcMusic]"

    const-string v17, "==========ANIMATION_MOVE_NEXT"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_13

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderState:I
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$4000(Lcom/htc/music/HtcMusic;)I

    move-result v16

    const/16 v17, 0x12

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0

    if-eqz v16, :cond_10

    const/4 v3, 0x1

    :goto_4
    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    :cond_10
    const/4 v3, 0x0

    goto :goto_4

    :cond_11
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v11

    if-nez v11, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollTo(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_1

    :cond_13
    const-string v16, "[HtcMusic]"

    const-string v17, "Bad! Service is null at aniamtion"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    const-string v16, "com.htc.music.rotatecircle_next"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    const-string v16, "[HtcMusic]"

    const-string v17, "==========ANIMATION_ROTATE_SELF_NEXT"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    #calls: Lcom/htc/music/HtcMusic;->onAnimationRotateSelf(Z)V
    invoke-static/range {v16 .. v17}, Lcom/htc/music/HtcMusic;->access$4100(Lcom/htc/music/HtcMusic;Z)V

    goto/16 :goto_1

    :cond_15
    const-string v16, "com.htc.music.rotatecircle_previous"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    const-string v16, "[HtcMusic]"

    const-string v17, "==========ANIMATION_ROTATE_SELF_PREV"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #calls: Lcom/htc/music/HtcMusic;->onAnimationRotateSelf(Z)V
    invoke-static/range {v16 .. v17}, Lcom/htc/music/HtcMusic;->access$4100(Lcom/htc/music/HtcMusic;Z)V

    goto/16 :goto_1

    :cond_16
    const-string v16, "com.htc.music.rotatequickly"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    const-string v16, "[HtcMusic]"

    const-string v17, "==========ANIMATION_ROTATE_CIRCLE_QUICK"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_17
    const-string v16, "com.htc.music.queuechanged"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    const-string v16, "[HtcMusic]"

    const-string v17, "==========QUEUE_CHANGED"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v16

    if-eqz v16, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v16

    const/16 v17, 0xa

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/HtcMusic$NonUiHandler;->hasMessages(I)Z

    move-result v16

    if-eqz v16, :cond_18

    const-string v16, "[HtcMusic]"

    const-string v17, "remove message PLAY_ALBUM since QUEUE_CHANGED"

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v16

    const/16 v17, 0xa

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_19

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v12

    if-gtz v12, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v16

    if-eqz v16, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v16

    const/16 v17, 0x6

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v16

    const/16 v17, 0x6

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessage(I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    :cond_19
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/HtcMusic;->updateGlider()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$4200(Lcom/htc/music/HtcMusic;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/HtcMusic;->updateTrackInfoP()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$2900(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    :catch_6
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    :cond_1a
    const-string v16, "com.htc.music.shuffle"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    const-string v16, "[HtcMusic]"

    const-string v17, "==========ANIMATION_SHUFFLE "

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->startAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #calls: Lcom/htc/music/HtcMusic;->getAlbumQueuePosition()I
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$4300(Lcom/htc/music/HtcMusic;)I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getAnimationStatus()Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    :cond_1b
    const-string v16, "com.htc.music.refresh"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    const-string v16, "[HtcMusic]"

    const-string v17, "==========ANIMATION_REFRESH "

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/HtcMusic;->animationRefresh()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$2700(Lcom/htc/music/HtcMusic;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/HtcMusic;->updateTrackInfoP()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$2900(Lcom/htc/music/HtcMusic;)V

    goto/16 :goto_1

    :cond_1c
    const-string v16, "com.htc.music.changeart"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_22

    const-string v16, "[HtcMusic]"

    const-string v17, "==========ANIMATION_CHANGE_ART "

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    const/16 v16, 0x0

    :try_start_c
    invoke-static/range {v16 .. v16}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v16

    if-eqz v16, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v15

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$4400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1f

    if-eqz v15, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$4400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1f

    const/4 v4, 0x1

    :cond_1d
    :goto_6
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #setter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/htc/music/HtcMusic;->access$4402(Lcom/htc/music/HtcMusic;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$3700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v16

    if-eqz v16, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$3700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/music/GliderAdapter;->clearAllCache()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mGliderAdapter:Lcom/htc/music/GliderAdapter;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$3700(Lcom/htc/music/HtcMusic;)Lcom/htc/music/GliderAdapter;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyUpdateItem(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_1

    :catch_8
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    :cond_1f
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$4400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_20

    if-eqz v15, :cond_20

    const/4 v4, 0x1

    goto :goto_6

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/HtcMusic;->mLastPluginArtPath:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->access$4400(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1d

    if-nez v15, :cond_1d

    const/4 v4, 0x1

    goto :goto_6

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/music/IMediaPlaybackService;->getAlbumQueuePosition()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_1

    :cond_22
    const-string v16, "com.htc.music.onerror"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v16

    if-eqz v16, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/music/HtcMusic;->finish()V

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const/high16 v16, 0x1400

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    const-class v17, Lcom/htc/music/MediaPlaybackErrorActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v16, "pluginmode"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v16, "errorcause"

    const-string v17, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$23;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    goto/16 :goto_1

    :cond_23
    const-string v16, "[HtcMusic]"

    const-string v17, "Something error, we don\'t handle this intent action in local player."

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
