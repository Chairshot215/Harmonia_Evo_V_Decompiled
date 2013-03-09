.class Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;
.super Landroid/os/Handler;
.source "NotificationRingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x3

    .line 286
    const/4 v3, 0x0

    .line 287
    .local v3, r:Landroid/media/Ringtone;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 354
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 289
    :pswitch_1
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iget-object v5, v5, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    if-nez v5, :cond_2

    invoke-virtual {p0, v8}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 291
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iget-object v5, v5, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iget-object v6, v6, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "creating ringtone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iget-object v6, v6, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_5

    const-string v5, ", failed!"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->access$100(Ljava/lang/String;)V

    .line 294
    iget-object v6, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    monitor-enter v6

    .line 295
    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 296
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iput-object v3, v5, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    .line 297
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iget-object v5, v5, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    #getter for: Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mStreamType:I
    invoke-static {v5}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->access$200(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;)I

    move-result v5

    if-eq v5, v9, :cond_1

    .line 298
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iget-object v5, v5, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    iget-object v7, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    #getter for: Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mStreamType:I
    invoke-static {v7}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->access$200(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 301
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_2
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iget-object v3, v5, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    .line 304
    const-string v5, "talk"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRingHandler: PLAY_RING_ONCE, mRingtone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iget-object v6, v6, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->access$100(Ljava/lang/String;)V

    .line 307
    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {p0, v8}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_0

    .line 308
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    #getter for: Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mLowVolume:Z
    invoke-static {v5}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->access$300(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 309
    invoke-virtual {v3}, Landroid/media/Ringtone;->getStreamType()I

    move-result v4

    .line 310
    .local v4, streamType:I
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    #getter for: Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->access$400(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 312
    .local v2, origVolume:I
    div-int/lit8 v1, v2, 0x2

    .line 313
    .local v1, newVolume:I
    if-nez v1, :cond_4

    .line 315
    const/4 v1, 0x1

    .line 317
    :cond_4
    move v0, v2

    .local v0, i:I
    :goto_2
    if-le v0, v1, :cond_6

    .line 318
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    #getter for: Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->access$400(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;)Landroid/media/AudioManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v9, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 317
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 292
    .end local v0           #i:I
    .end local v1           #newVolume:I
    .end local v2           #origVolume:I
    .end local v4           #streamType:I
    :cond_5
    const-string v5, ""

    goto/16 :goto_1

    .line 301
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 326
    .restart local v0       #i:I
    .restart local v1       #newVolume:I
    .restart local v2       #origVolume:I
    .restart local v4       #streamType:I
    :cond_6
    const-wide/16 v5, 0x14

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 329
    :goto_3
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    .line 330
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    #calls: Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->resetVolume(III)V
    invoke-static {v5, v2, v1, v4}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->access$500(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;III)V

    .line 334
    .end local v0           #i:I
    .end local v1           #newVolume:I
    .end local v2           #origVolume:I
    .end local v4           #streamType:I
    :goto_4
    iget-object v6, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    monitor-enter v6

    .line 335
    :try_start_3
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    #getter for: Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingStartTime:J
    invoke-static {v5}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->access$600(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gez v5, :cond_7

    .line 336
    iget-object v5, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    #setter for: Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mFirstRingStartTime:J
    invoke-static {v5, v7, v8}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->access$602(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;J)J

    .line 338
    :cond_7
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 332
    :cond_8
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    goto :goto_4

    .line 342
    :pswitch_2
    const-string v5, "talk"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 343
    const-string v5, "mRingHandler: STOP_RING..."

    #calls: Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->access$100(Ljava/lang/String;)V

    .line 345
    :cond_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3           #r:Landroid/media/Ringtone;
    check-cast v3, Landroid/media/Ringtone;

    .line 346
    .restart local v3       #r:Landroid/media/Ringtone;
    if-eqz v3, :cond_a

    .line 347
    invoke-virtual {v3}, Landroid/media/Ringtone;->stop()V

    .line 351
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 349
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->access$100(Ljava/lang/String;)V

    goto :goto_5

    .line 327
    .restart local v0       #i:I
    .restart local v1       #newVolume:I
    .restart local v2       #origVolume:I
    .restart local v4       #streamType:I
    :catch_0
    move-exception v5

    goto :goto_3

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
