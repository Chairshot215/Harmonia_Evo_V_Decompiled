.class Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;
.super Landroid/content/BroadcastReceiver;
.source "LiveGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->registerMediaScannerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;


# direct methods
.method constructor <init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 469
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    const-string v3, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$702(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "ACTION_MEDIA_BAD_REMOVAL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_1
    const-string v3, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$702(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "ACTION_MEDIA_CHECKING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_2
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 482
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$702(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "ACTION_MEDIA_EJECT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_3
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 486
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$702(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 487
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "ACTION_MEDIA_MOUNTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_4
    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 490
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$702(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "ACTION_MEDIA_REMOVED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_5
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 494
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "ACTION_MEDIA_SCANNER_STARTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_6
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 497
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$702(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "ACTION_MEDIA_SHARED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_7
    const-string v3, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 501
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$702(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 502
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "ACTION_MEDIA_NOFS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_8
    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 505
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "ACTION_MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_9
    const-string v3, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 508
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$702(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 509
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "ACTION_MEDIA_UNMOUNTABLE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_a
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 512
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$702(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "ACTION_MEDIA_UNMOUNTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_b
    const-string v3, "ACTION_LOCKSCREEN_PHONE_STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 520
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    #setter for: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->mMediaStatus:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$702(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 521
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "ACTION_LOCKSCREEN_PHONE_STATE_CHANGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 523
    .local v2, extras:Landroid/os/Bundle;
    const-string v3, "call_state"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 524
    .local v1, callState:I
    packed-switch v1, :pswitch_data_0

    .line 530
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    const/4 v4, 0x1

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setVisibility(Z)V
    invoke-static {v3, v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$800(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Z)V

    .line 534
    .end local v1           #callState:I
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_c
    :goto_0
    return-void

    .line 527
    .restart local v1       #callState:I
    .restart local v2       #extras:Landroid/os/Bundle;
    :pswitch_0
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$3;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    const/4 v4, 0x0

    #calls: Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->setVisibility(Z)V
    invoke-static {v3, v4}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;->access$800(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;Z)V

    goto :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
