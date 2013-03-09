.class Landroid/media/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/media/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onHandlePersistMediaButtonReceiver(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "media_button_receiver"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private persistRingerMode()V
    .locals 3

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRingerMode:I
    invoke-static {v2}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private persistVibrateSetting()V
    .locals 3

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_on"

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVibrateSetting:I
    invoke-static {v2}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private persistVolume(Landroid/media/AudioService$VolumeStreamState;ZZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4800(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4900(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private persistVolumeForHeadset(Landroid/media/AudioService$VolumeStreamState;ZZ)V
    .locals 3

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AudioHandler] persistVolumeForHeadset Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName_Headset:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$5000(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIndex_Headset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastAudibleIndex_Headset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastAudible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName_Headset:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$5000(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleVolumeIndexSettingName_Headset:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$5100(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private playSoundEffect(II)V
    .locals 15

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioService;->access$1800(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v14

    :goto_0
    return-void

    :cond_0
    if-gez p2, :cond_3

    const-wide/high16 v1, 0x4049

    iget-object v4, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {v4}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[I

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-double v4, v4

    div-double/2addr v1, v4

    double-to-float v8, v1

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v1}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v1}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v12, v1, 0xa

    :goto_1
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {v1}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)[I

    move-result-object v1

    const/4 v2, 0x3

    aget v1, v1, v2

    sub-int v1, v12, v1

    int-to-float v1, v1

    mul-float v13, v8, v1

    const-wide/high16 v1, 0x4024

    const/high16 v4, 0x4040

    sub-float v4, v13, v4

    const/high16 v5, 0x41a0

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v3, v1

    :goto_2
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v1}, Landroid/media/AudioService;->access$5300(Landroid/media/AudioService;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v2, 0x1

    aget v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v2}, Landroid/media/AudioService;->access$5300(Landroid/media/AudioService;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v4, 0x1

    aget v2, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    move v4, v3

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    :goto_3
    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v1}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v12, v1, 0xa

    goto :goto_1

    :cond_3
    move/from16 v0, p2

    int-to-float v1, v0

    const/high16 v2, 0x447a

    div-float v3, v1, v2

    goto :goto_2

    :cond_4
    new-instance v11, Landroid/media/MediaPlayer;

    invoke-direct {v11}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/media/audio/ui/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/media/AudioService;->access$5400()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v4}, Landroid/media/AudioService;->access$5300(Landroid/media/AudioService;)[[I

    move-result-object v4

    aget-object v4, v4, p1

    const/4 v5, 0x0

    aget v4, v4, v5

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v11}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v11, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    new-instance v1, Landroid/media/AudioService$AudioHandler$1;

    invoke-direct {v1, p0}, Landroid/media/AudioService$AudioHandler$1;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v11, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v1, Landroid/media/AudioService$AudioHandler$2;

    invoke-direct {v1, p0}, Landroid/media/AudioService$AudioHandler$2;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v11, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v11}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception v9

    :try_start_3
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayer IOException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_1
    move-exception v9

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_2
    move-exception v9

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method

.method private setForceUse(II)V
    .locals 0

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    return-void
.end method

.method private setSystemVolume(Landroid/media/AudioService$VolumeStreamState;)V
    .locals 10

    const/16 v7, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AudioHandler] setSystemVolume Call setStreamVolumeIndex isHeadsetPlugged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v0, v1, v2}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;II)V

    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    :goto_1
    if-ltz v9, :cond_3

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AudioHandler] setSystemVolume 2 Call setStreamVolumeIndex isHeadsetPlugged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v1}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v1, v1, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v0, v9, v1}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;II)V

    :cond_0
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v0, v1, v2}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v1}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v1, v1, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v0, v9, v1}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;II)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x63

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move v5, v4

    move-object v6, p1

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move v1, v4

    move v5, v4

    move-object v6, p1

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    #calls: Landroid/media/AudioService;->getMsgBase(I)I
    invoke-static {v1}, Landroid/media/AudioService;->access$5600(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/AudioService$AudioHandler;->setSystemVolume(Landroid/media/AudioService$VolumeStreamState;)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioService$AudioHandler;->persistVolume(Landroid/media/AudioService$VolumeStreamState;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioService$AudioHandler;->persistVolumeForHeadset(Landroid/media/AudioService$VolumeStreamState;ZZ)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :sswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->persistRingerMode()V

    goto :goto_0

    :sswitch_4
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->persistVibrateSetting()V

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AudioService"

    const-string v2, "Media server died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;
    invoke-static {v1}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)Landroid/media/AudioSystem$ErrorCallback;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v8}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    :sswitch_6
    const-string v1, "AudioService"

    const-string v2, "Media server started."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "restarting=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_5

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$5800(Landroid/media/AudioService;)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v2}, Landroid/media/AudioService;->access$5900(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v2}, Landroid/media/AudioService;->access$5900(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v13

    add-int/lit8 v16, v13, -0x1

    :goto_6
    if-ltz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v1}, Landroid/media/AudioService;->access$3900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v15, v1, v16

    const/4 v1, 0x0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static {v15}, Landroid/media/AudioService$VolumeStreamState;->access$4100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    move/from16 v0, v16

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v15}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->isHeadsetPlugged()Z
    invoke-static {v1}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_6

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v15}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v12

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move/from16 v0, v16

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v1, v0, v12}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;II)V

    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    :cond_6
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v15}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v12

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    const/4 v3, 0x0

    #calls: Landroid/media/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;IZ)V

    const-string/jumbo v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->loadSoundEffects()Z

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->playSoundEffect(II)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v3, v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;Ljava/lang/String;)V

    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :sswitch_a
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->setForceUse(II)V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/AudioService$AudioHandler;->onHandlePersistMediaButtonReceiver(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->onRcDisplayClear()V
    invoke-static {v1}, Landroid/media/AudioService;->access$6100(Landroid/media/AudioService;)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/media/AudioService;->onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V
    invoke-static {v2, v1, v3}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;Landroid/media/AudioService$RemoteControlStackEntry;I)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v1}, Landroid/media/AudioService;->access$6300(Landroid/media/AudioService;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_7
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_e
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x63 -> :sswitch_2
    .end sparse-switch
.end method
