.class final Lcom/htc/music/HtcMusic$NonUiHandler;
.super Landroid/os/Handler;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method public constructor <init>(Lcom/htc/music/HtcMusic;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    :pswitch_0
    const-string v17, "[HtcMusic]"

    const-string v18, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mRetryCount:I
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5800(Lcom/htc/music/HtcMusic;)I

    move-result v17

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeMessages(I)V

    const/16 v17, 0x1

    const-wide/16 v18, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5808(Lcom/htc/music/HtcMusic;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mRetryCount:I
    invoke-static/range {v17 .. v18}, Lcom/htc/music/HtcMusic;->access$5802(Lcom/htc/music/HtcMusic;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    const-string v19, "Music"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/htc/music/HtcMusic;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    #setter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v17 .. v18}, Lcom/htc/music/HtcMusic;->access$5902(Lcom/htc/music/HtcMusic;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "category"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v17, -0x1

    move/from16 v0, v17

    if-lt v4, v0, :cond_0

    const/16 v17, 0x16

    move/from16 v0, v17

    if-gt v4, v0, :cond_0

    const/16 v17, 0x15

    move/from16 v0, v17

    if-ne v4, v0, :cond_4

    const-string v17, "[HtcMusic]"

    const-string v18, "category: NpCategory.CATEGORY_DONT_REFRESH"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v17

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    goto/16 :goto_2

    :catchall_0
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v17

    :cond_4
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_5

    const/4 v4, 0x0

    :cond_5
    const/4 v5, 0x0

    new-instance v11, Lcom/htc/music/NpCategory;

    int-to-short v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/htc/music/NpCategory;-><init>(S)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "artistid"

    const/16 v19, -0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/htc/music/NpCategory;->setArtistId(I)Lcom/htc/music/NpCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "albumid"

    const/16 v19, -0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/htc/music/NpCategory;->setAlbumId(I)Lcom/htc/music/NpCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "genreid"

    const/16 v19, -0x2

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/htc/music/NpCategory;->setGenreId(I)Lcom/htc/music/NpCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "composer"

    const-string v19, ""

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "playlistid"

    const/16 v19, -0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/htc/music/NpCategory;->query(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v17

    if-lez v17, :cond_6

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->setPlaylist(Landroid/database/Cursor;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    :try_start_5
    const-string v17, "[HtcMusic]"

    const-string v18, "NpCategory.query: cursor == null."

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v17

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    :cond_7
    throw v17

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->SetSoundEffectKey:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$6000(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "savestatus"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v15, v1, v14}, Lcom/htc/music/IMediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lcom/htc/music/IMediaPlaybackService;->setLastAudioEffect(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/htc/music/util/SoundEffectHelper;->setEqualizerStyle(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_a
    :try_start_7
    const-string v17, "[HtcMusic]"

    const-string v18, "case SET_SOUND_EFFECT: mService is null."

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception v6

    :try_start_8
    const-string v17, "[HtcMusic]"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    goto :goto_6

    :catchall_2
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v17

    :pswitch_3
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->isServiceConnected()Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->isPluginReady()Z

    move-result v17

    if-eqz v17, :cond_b

    const-string v17, "[HtcMusic]"

    const-string v18, "###### case CHECK_PLUGIN_SERVICE_STATE: Close error state if exists. $$$$$$$"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.htc.music.finisherroractivity"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/htc/music/HtcMusic;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    :goto_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_b
    :try_start_a
    const-string v17, "[HtcMusic]"

    const-string v18, "###### case CHECK_PLUGIN_SERVICE_STATE: Go to plugin error state!!! ######"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->finish()V

    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    const/high16 v17, 0x1400

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    const-class v18, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v17, "pluginmode"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v17, "errorcause"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/htc/music/IMediaPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_7

    :catch_2
    move-exception v6

    :try_start_b
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    goto :goto_8

    :cond_c
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v17

    const/16 v18, 0x4

    const-wide/16 v19, 0xc8

    invoke-virtual/range {v17 .. v20}, Lcom/htc/music/HtcMusic$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_7

    :catchall_3
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v17

    :pswitch_4
    :try_start_d
    const-string v17, "[HtcMusic]"

    const-string v18, "msg.what = RELOAD_QUEUE"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v17

    if-eqz v17, :cond_0

    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_e
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v7

    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "case RELOAD_QUEUE:, IllegalMonitorStateException, ex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/IllegalMonitorStateException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_9
    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$400(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$400(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x7

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$400(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v17

    if-eqz v17, :cond_0

    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_10
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v7

    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "case RELOAD_QUEUE:, IllegalMonitorStateException, ex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/IllegalMonitorStateException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_9

    :cond_e
    const/4 v12, 0x0

    const/4 v10, 0x0

    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->reloadQueue()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v13

    if-gtz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/music/util/MusicUtils;->getAllSongsAndPrepare(Landroid/content/Context;)[I

    move-result-object v10

    const/4 v12, 0x0

    :goto_a
    if-eqz v10, :cond_f

    array-length v0, v10

    move/from16 v17, v0

    if-gtz v17, :cond_12

    :cond_f
    const-string v17, "[HtcMusic]"

    const-string v18, "RELOAD_QUEUE: list is null or length <= 0"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v17

    if-eqz v17, :cond_0

    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_12
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v7

    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "case RELOAD_QUEUE:, IllegalMonitorStateException, ex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/IllegalMonitorStateException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_9

    :cond_10
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_a

    :catch_6
    move-exception v7

    :try_start_14
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v17

    if-eqz v17, :cond_11

    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_15
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_15 .. :try_end_15} :catch_d

    :cond_11
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$400(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$400(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x7

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$400(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_12
    :try_start_16
    array-length v0, v10

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-le v12, v0, :cond_13

    const-string v17, "[HtcMusic]"

    const-string v18, "RELOAD_QUEUE: pos > list.length - 1"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v17

    if-eqz v17, :cond_0

    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_17
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_17 .. :try_end_17} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v7

    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "case RELOAD_QUEUE:, IllegalMonitorStateException, ex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/IllegalMonitorStateException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_9

    :cond_13
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    new-instance v18, Lcom/htc/music/NpCategory;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lcom/htc/music/NpCategory;-><init>(S)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v10, v12, v1}, Lcom/htc/music/util/MusicUtils;->playAllNotRun(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v17

    if-eqz v17, :cond_11

    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_19
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_19 .. :try_end_19} :catch_8

    goto/16 :goto_b

    :catch_8
    move-exception v7

    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "case RELOAD_QUEUE:, IllegalMonitorStateException, ex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/IllegalMonitorStateException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_c
    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :catchall_4
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v18

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v18

    if-eqz v18, :cond_14

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1a
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_1a .. :try_end_1a} :catch_c

    :cond_14
    :goto_d
    throw v17

    :pswitch_5
    const-string v17, "[HtcMusic]"

    const-string v18, "msg.what = CHECK_ERROR_STATE"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    const-string v17, "[HtcMusic]"

    const-string v18, "mService = null, return"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    :goto_e
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_15
    :try_start_1c
    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "audioId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isPlaying = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "path = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "QueueSize = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v17

    if-gez v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v17

    if-nez v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v17

    if-lez v17, :cond_1a

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    new-instance v18, Lcom/htc/music/HtcMusic$NonUiHandler$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/HtcMusic$NonUiHandler$1;-><init>(Lcom/htc/music/HtcMusic$NonUiHandler;)V

    invoke-virtual/range {v17 .. v18}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v17, "[HtcMusic]"

    const-string v18, "music is playing, return"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    goto/16 :goto_e

    :catch_9
    move-exception v7

    :try_start_1d
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    :goto_f
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    if-nez v17, :cond_0

    const-string v17, "[HtcMusic]"

    const-string v18, "getData() = null"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v9

    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getQueueSize() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    new-instance v18, Lcom/htc/music/HtcMusic$NonUiHandler$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/htc/music/HtcMusic$NonUiHandler$2;-><init>(Lcom/htc/music/HtcMusic$NonUiHandler;I)V

    invoke-virtual/range {v17 .. v18}, Lcom/htc/music/HtcMusic;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    :goto_10
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_5
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v17

    :catch_a
    move-exception v7

    :try_start_1f
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    goto :goto_10

    :catchall_6
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v18

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_17
    throw v17

    :pswitch_6
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    if-eqz v17, :cond_18

    :try_start_21
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-ltz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/htc/music/IMediaPlaybackService;->playAlbum(I)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_b

    :cond_18
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catch_b
    move-exception v6

    :try_start_22
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    goto :goto_11

    :catchall_7
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v18 .. v18}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v17

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    goto/16 :goto_3

    :catch_c
    move-exception v7

    const-string v18, "[HtcMusic]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "case RELOAD_QUEUE:, IllegalMonitorStateException, ex: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/IllegalMonitorStateException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :catch_d
    move-exception v7

    const-string v17, "[HtcMusic]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "case RELOAD_QUEUE:, IllegalMonitorStateException, ex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/IllegalMonitorStateException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/HtcMusic;->mServiceLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/HtcMusic;->access$5700(Lcom/htc/music/HtcMusic;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v17

    goto/16 :goto_f

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
