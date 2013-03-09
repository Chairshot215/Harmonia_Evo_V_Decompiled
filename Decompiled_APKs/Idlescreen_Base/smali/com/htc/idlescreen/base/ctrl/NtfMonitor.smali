.class public Lcom/htc/idlescreen/base/ctrl/NtfMonitor;
.super Lcom/htc/idlescreen/base/ctrl/BaseCtrl;
.source "NtfMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/ctrl/NtfMonitor$1;,
        Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;,
        Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "NtfMonitor"

.field private static final WHAT_ON_CHECKPRIVACY:I = 0x7d5

.field private static final WHAT_ON_REMOVE_FORCE:I = 0x7d4

.field private static final WHAT_ON_REMOVE_NTF:I = 0x7d2

.field private static final WHAT_ON_SET_NTF:I = 0x7d1


# instance fields
.field mCurNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

.field mPrivacy:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mStart:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mPrivacy:Z

    .line 302
    return-void
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/ctrl/NtfMonitor;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->getNotificationType(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private checkPrivacy()V
    .locals 3

    .prologue
    .line 526
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 527
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "htc_new_message_notification"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mPrivacy:Z

    .line 528
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mPrivacy:Z

    if-nez v1, :cond_0

    .line 529
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->updateNtf(Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;)V

    .line 531
    :cond_0
    return-void
.end method

.method public static createDisplayNumber(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6
    .parameter "number"
    .parameter "label"
    .parameter "res"

    .prologue
    const/4 v5, 0x0

    .line 569
    if-eqz p2, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v1, p0

    .line 605
    :cond_1
    :goto_0
    return-object v1

    .line 572
    :cond_2
    move-object v1, p0

    .line 573
    .local v1, result:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 576
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 577
    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 580
    const/16 v3, 0x2b

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_3

    .line 586
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    const/4 v2, 0x0

    goto :goto_0

    .line 592
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 598
    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getNotificationType(Ljava/lang/String;I)I
    .locals 2
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, type:I
    if-eqz p1, :cond_1

    .line 405
    const-string v1, "com.android.phone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 406
    const/16 v1, 0x1771

    if-eq p2, v1, :cond_0

    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_2

    .line 407
    :cond_0
    const/4 v0, 0x1

    .line 428
    :cond_1
    :goto_0
    return v0

    .line 409
    :cond_2
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 410
    const/4 v0, 0x2

    goto :goto_0

    .line 413
    :cond_3
    const-string v1, "com.android.mms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 414
    const/4 v0, 0x3

    goto :goto_0

    .line 416
    :cond_4
    const-string v1, "com.htc.vvm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.htc.vvm.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 418
    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    .line 420
    :cond_6
    const-string v1, "com.htc.android.mail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 421
    const/4 v0, 0x3

    goto :goto_0

    .line 424
    :cond_7
    const-string v1, "com.htc.lockscreen.test.notification"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 425
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private register()V
    .locals 3

    .prologue
    .line 305
    monitor-enter p0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 307
    new-instance v1, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;-><init>(Lcom/htc/idlescreen/base/ctrl/NtfMonitor;Lcom/htc/idlescreen/base/ctrl/NtfMonitor$1;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 309
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "HtcLockScreenSetNotification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v1, "HtcLockScreenRemoveNotfiication"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeNtf()V
    .locals 2

    .prologue
    .line 432
    monitor-enter p0

    .line 433
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mCurNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    .line 434
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mCurNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->notifyLister(ILjava/lang/Object;)V

    .line 435
    monitor-exit p0

    .line 436
    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeNtf(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mCurNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    if-nez v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 442
    :cond_0
    monitor-enter p0

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mCurNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    if-nez v0, :cond_1

    .line 444
    monitor-exit p0

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 446
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mCurNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    iget-object v0, v0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mCurNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    iget v0, v0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;->mId:I

    if-ne v0, p2, :cond_2

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mCurNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    .line 449
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mCurNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->notifyLister(ILjava/lang/Object;)V

    .line 451
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 317
    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x7d4

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 319
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x7d2

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 320
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 321
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x7d5

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 322
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 326
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mListener:Lcom/htc/idlescreen/base/ctrl/BaseCtrl$StateListener;

    .line 327
    monitor-exit p0

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateNtf(Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;)V
    .locals 2
    .parameter "ntf"

    .prologue
    .line 455
    monitor-enter p0

    .line 456
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mPrivacy:Z

    if-eqz v0, :cond_0

    .line 457
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mCurNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    .line 462
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mCurNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    invoke-virtual {p0, v0, v1}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->notifyLister(ILjava/lang/Object;)V

    .line 463
    monitor-exit p0

    .line 464
    return-void

    .line 460
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mCurNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCurrentNtf()Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;
    .locals 1

    .prologue
    .line 467
    monitor-enter p0

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mCurNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    monitor-exit p0

    return-object v0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handleMessageBG(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 536
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 553
    :goto_0
    :pswitch_0
    return-void

    .line 538
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    .line 539
    .local v1, ntf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;
    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->updateNtf(Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;)V

    goto :goto_0

    .line 542
    .end local v1           #ntf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 543
    .local v2, pkg:Ljava/lang/String;
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 544
    .local v0, id:I
    invoke-direct {p0, v2, v0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->removeNtf(Ljava/lang/String;I)V

    goto :goto_0

    .line 547
    .end local v0           #id:I
    .end local v2           #pkg:Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->removeNtf()V

    goto :goto_0

    .line 550
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->checkPrivacy()V

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public removeAll(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/16 v2, 0x7d4

    .line 394
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 395
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 396
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 397
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v2, 0x7d2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 398
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 399
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v1, v0, p1, p2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 400
    return-void
.end method

.method public setStart(Z)V
    .locals 2
    .parameter "start"

    .prologue
    const/16 v1, 0x7d5

    .line 331
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mStart:Z

    .line 332
    if-nez p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 334
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x7d4

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 335
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x7d2

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 336
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 342
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method protected startCtrl()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->register()V

    .line 559
    return-void
.end method

.method protected stopCtrl()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->unregister()V

    .line 565
    return-void
.end method
