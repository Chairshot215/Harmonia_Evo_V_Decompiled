.class final Lcom/htc/music/MediaPlaybackService$NonUiHandler;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/htc/music/MediaPlaybackService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    const-string v14, "[MediaPlaybackService]"

    const-string v15, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/MusicPluginManager;->play()V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/MusicPluginManager;->stop()V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/MusicPluginManager;->pause()V

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/MusicPluginManager;->prev()V

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMusicPluginManager:Lcom/htc/music/MusicPluginManager;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$200(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MusicPluginManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/MusicPluginManager;->next()V

    goto :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v14}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v14}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v15}, Lcom/htc/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v15

    invoke-static {v14, v15}, Lcom/htc/music/util/SoundEffectHelper;->enableCurrentSoundEffect(Landroid/content/Context;I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HeadSetHelper;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v15}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/htc/music/util/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/music/util/IMonitorHeadSetStatus;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HdmiPlugReceiver;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v15}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/htc/music/util/HdmiPlugReceiver;->initInstance(Landroid/content/Context;Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;)Z

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-static {v14}, Lcom/htc/music/util/SoundEffectHelper;->disableSoundEffect(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHeadSetHelper:Lcom/htc/music/util/HeadSetHelper;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$300(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HeadSetHelper;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v15}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/util/HeadSetHelper;->stopMonitor(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mHdmiPlugReceiver:Lcom/htc/music/util/HdmiPlugReceiver;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$400(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/util/HdmiPlugReceiver;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/util/HdmiPlugReceiver;->deInitInstance()Z

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v14}, Lcom/htc/music/MediaPlaybackService;->reloadQueue()V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v14}, Lcom/htc/music/MediaPlaybackService;->play()V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v15, "com.htc.music.queuechanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v15, "com.htc.music.metachanged"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v14}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v11

    const-string v14, "[MediaPlaybackService]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NonUiHandler salbumartpath: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v11, :cond_3

    const-string v14, "[MediaPlaybackService]"

    const-string v15, "NonUiHandler salbumartpath == null"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v14, "[MediaPlaybackService]"

    const-string v15, "case CMD_DECODE_NOTIFICATION_ALBUMART: +++"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #setter for: Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v14, v15}, Lcom/htc/music/MediaPlaybackService;->access$602(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mOpts:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$600(Lcom/htc/music/MediaPlaybackService;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/music/MediaPlaybackService;->showNotificationAlbumArtInUiThread(Landroid/graphics/Bitmap;I)V
    invoke-static {v14, v1, v15}, Lcom/htc/music/MediaPlaybackService;->access$700(Lcom/htc/music/MediaPlaybackService;Landroid/graphics/Bitmap;I)V

    const-string v14, "[MediaPlaybackService]"

    const-string v15, "case CMD_DECODE_NOTIFICATION_ALBUMART: ---"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->getDefaultTracks()Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$800(Lcom/htc/music/MediaPlaybackService;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v10, -0x1

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$900(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "musiccount"

    invoke-interface {v14, v15}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$900(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "musiccount"

    const/16 v16, -0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v16, "Music"

    const/16 v17, 0x3

    invoke-virtual/range {v15 .. v17}, Lcom/htc/music/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    #setter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v14, v15}, Lcom/htc/music/MediaPlaybackService;->access$902(Lcom/htc/music/MediaPlaybackService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    if-eq v2, v10, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$900(Lcom/htc/music/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v14, "musiccount"

    invoke-interface {v7, v14, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :try_start_1
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v12

    const-string v14, "com.htc.music"

    invoke-virtual {v12, v14}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v14

    const-string v15, "storage"

    invoke-interface {v14, v15}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v14

    const-string v15, "total_music"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v12}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v12}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string v14, "[MediaPlaybackService]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "case CMD_USER_PROFILING_LOG: cursor close fail, ex: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v6

    const-string v14, "[MediaPlaybackService]"

    const-string v15, "CMD_USER_PROFILING_LOG, Exception in ed.commit: "

    invoke-static {v14, v15, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    const-string v14, "[MediaPlaybackService]"

    const-string v15, "CMD_USER_PROFILING_LOG, The music count is the same. Do nothing."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v14, "[MediaPlaybackService]"

    const-string v15, "CMD_USER_PROFILING_LOG, cursor is null."

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    const-string v14, "[MediaPlaybackService]"

    const-string v15, "CMD_REFRESH_PLAYLIST"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->refreshPlaylist()V
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$1000(Lcom/htc/music/MediaPlaybackService;)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v14

    if-eqz v14, :cond_0

    monitor-enter p0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isPlaying()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->position()J

    move-result-wide v3

    const-string v14, "[MediaPlaybackService]"

    const-string v15, "mA2DPReceiver.onReceive(): mPlayer.stop()"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->pause()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->stop()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;
    invoke-static {v15}, Lcom/htc/music/MediaPlaybackService;->access$1200(Lcom/htc/music/MediaPlaybackService;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->isInitialized()Z

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_8

    const-string v14, "[MediaPlaybackService]"

    const-string v15, "mA2DPReceiver.onReceive(): mPlayer.isReInitialized() == false"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->seek(J)J

    const/4 v14, 0x1

    if-ne v9, v14, :cond_7

    const-string v14, "[MediaPlaybackService]"

    const-string v15, "mA2DPReceiver.onReceive(): mPlayer.start()"

    invoke-static {v14, v15}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/MediaPlaybackService$NonUiHandler;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v14}, Lcom/htc/music/MediaPlaybackService;->access$1100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
