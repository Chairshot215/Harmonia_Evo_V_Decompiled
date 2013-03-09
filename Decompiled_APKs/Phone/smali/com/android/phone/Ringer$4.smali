.class Lcom/android/phone/Ringer$4;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 594
    const/4 v1, 0x0

    .line 595
    .local v1, r:Landroid/media/Ringtone;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 599
    :pswitch_0
    invoke-static {}, Lcom/android/phone/Ringer;->access$400()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "mRingHandler: PLAY_RING_LOOP or ONCE..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/Ringer;->access$500(Ljava/lang/String;)V

    .line 605
    :cond_1
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v4, :cond_a

    invoke-virtual {p0, v8}, Lcom/android/phone/Ringer$4;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 646
    invoke-static {}, Lcom/android/phone/Ringer;->access$400()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Ringer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeLooper PLAY_RING_ONCE or PLAY_RING_LOOP mCustomRingtoneUri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v6, v6, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_2
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 649
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ringtone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 650
    .local v3, sRingToneValue:Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v4, "content://drm/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 652
    invoke-static {}, Lcom/android/phone/Ringer;->access$400()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Ringer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeLooper PLAY_RING_ONCE or PLAY_RING_LOOP sRingToneValue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_3
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    #calls: Lcom/android/phone/Ringer;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, sDrmPlaybackUri:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/Ringer;->access$400()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Ringer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeLooper PLAY_RING_ONCE or PLAY_RING_LOOP sDrmPlaybackUri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 656
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 659
    .end local v2           #sDrmPlaybackUri:Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_8

    .line 661
    invoke-static {}, Lcom/android/phone/Ringer;->access$400()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "creating ringtone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/Ringer;->access$500(Ljava/lang/String;)V

    .line 663
    :cond_6
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/phone/Ringer;->access$700()Z

    move-result v4

    if-ne v7, v4, :cond_d

    .line 666
    :cond_7
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 668
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iput-object v1, v4, Lcom/android/phone/Ringer;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 690
    .end local v3           #sRingToneValue:Ljava/lang/String;
    :cond_8
    :goto_1
    iget-object v5, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v5

    .line 691
    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/phone/Ringer$4;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 692
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iput-object v1, v4, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 694
    :cond_9
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    :cond_a
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v4, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 697
    if-eqz v1, :cond_c

    invoke-virtual {p0, v8}, Lcom/android/phone/Ringer$4;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 698
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 700
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    .line 701
    invoke-virtual {v1, v7}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 706
    :goto_2
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 707
    iget-object v5, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v5

    .line 708
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/Ringer;->mRingPending:Z
    invoke-static {v4, v6}, Lcom/android/phone/Ringer;->access$802(Lcom/android/phone/Ringer;Z)Z

    .line 709
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v4}, Lcom/android/phone/Ringer;->access$900(Lcom/android/phone/Ringer;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_b

    .line 710
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    #setter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v4, v6, v7}, Lcom/android/phone/Ringer;->access$902(Lcom/android/phone/Ringer;J)J

    .line 712
    :cond_b
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 715
    :cond_c
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/Ringer;->access$1000(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 717
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/Ringer;->access$1000(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 673
    .restart local v3       #sRingToneValue:Ljava/lang/String;
    :cond_d
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v4, Lcom/android/phone/Ringer;->mDefaultRingtone:Landroid/media/Ringtone;

    goto :goto_1

    .line 679
    .end local v3           #sRingToneValue:Ljava/lang/String;
    :cond_e
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://drm/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 681
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    #calls: Lcom/android/phone/Ringer;->getDrmPlaybackUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/phone/Ringer;->access$600(Lcom/android/phone/Ringer;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 682
    .restart local v2       #sDrmPlaybackUri:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/Ringer;->access$400()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "Ringer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeLooper PLAY_RING_ONCE or PLAY_RING_LOOP sDrmPlaybackUri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_f
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 684
    goto/16 :goto_1

    .line 686
    .end local v2           #sDrmPlaybackUri:Ljava/lang/String;
    :cond_10
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    goto/16 :goto_1

    .line 694
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 703
    :cond_11
    invoke-virtual {v1, v9}, Landroid/media/Ringtone;->setLooping(Z)V

    goto/16 :goto_2

    .line 712
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 722
    :pswitch_1
    invoke-static {}, Lcom/android/phone/Ringer;->access$400()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "mRingHandler: STOP_RING..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/Ringer;->access$500(Ljava/lang/String;)V

    .line 730
    :cond_12
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #r:Landroid/media/Ringtone;
    check-cast v1, Landroid/media/Ringtone;

    .line 732
    .restart local v1       #r:Landroid/media/Ringtone;
    if-eqz v1, :cond_15

    .line 733
    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 739
    :cond_13
    :goto_3
    invoke-static {}, Lcom/android/phone/Ringer;->access$700()Z

    move-result v4

    if-nez v4, :cond_14

    .line 742
    if-eqz v1, :cond_14

    :try_start_4
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mDefaultRingtone:Landroid/media/Ringtone;

    if-ne v1, v4, :cond_14

    .line 746
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mDefaultRingtoneHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 756
    :cond_14
    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/Ringer$4;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 735
    :cond_15
    invoke-static {}, Lcom/android/phone/Ringer;->access$400()Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/Ringer;->access$500(Ljava/lang/String;)V

    goto :goto_3

    .line 750
    :catch_0
    move-exception v0

    .line 752
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "STOP_RING Exception"

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/Ringer;->access$500(Ljava/lang/String;)V

    goto :goto_4

    .line 761
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    invoke-virtual {v4}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v4, :cond_0

    .line 762
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iput-boolean v7, v4, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 763
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    new-instance v5, Lcom/android/phone/Ringer$VibratorThread;

    iget-object v6, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v5, v4, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 764
    invoke-static {}, Lcom/android/phone/Ringer;->access$400()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "- starting vibrator..."

    #calls: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/Ringer;->access$500(Ljava/lang/String;)V

    .line 765
    :cond_16
    iget-object v4, p0, Lcom/android/phone/Ringer$4;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v4}, Lcom/android/phone/Ringer$VibratorThread;->start()V

    goto/16 :goto_0

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
