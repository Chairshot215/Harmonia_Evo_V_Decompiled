.class Lcom/htc/video/ViewVideo$6;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/ViewVideo;
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
    .line 490
    iput-object p1, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public StatusChanged(Z)V
    .locals 11
    .parameter "newStatus"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 496
    const/4 v1, 0x1

    .line 497
    .local v1, enable:Z
    if-nez p1, :cond_0

    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v6

    if-ne v10, v6, :cond_0

    .line 499
    const/4 v1, 0x0

    .line 502
    :cond_0
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 504
    const/4 v2, 0x0

    .line 505
    .local v2, hdmiCase:Z
    const/4 v0, 0x0

    .line 506
    .local v0, btCase:Z
    const/4 v4, 0x0

    .line 508
    .local v4, speakerCase:Z
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 510
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mBeatsHeadSetPlugged:Z
    invoke-static {v6, v10}, Lcom/htc/video/ViewVideo;->access$1502(Lcom/htc/video/ViewVideo;Z)Z

    .line 511
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mNonBeatsHeadSetPlugged:Z
    invoke-static {v6, v9}, Lcom/htc/video/ViewVideo;->access$1602(Lcom/htc/video/ViewVideo;Z)Z

    .line 519
    :cond_1
    :goto_0
    invoke-static {}, Lcom/htc/video/HdmiAlbumLib;->GetMgr()Lcom/htc/video/HdmiAlbumLib;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/video/HdmiAlbumLib;->IsHDMIConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v6}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v6}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_2

    .line 525
    const/4 v2, 0x1

    .line 526
    const-string v6, "ViewVideo"

    const-string v7, "hdmi case"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_2
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v6}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v6}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetCarkit(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_4

    .line 534
    const/4 v0, 0x1

    .line 535
    const-string v6, "ViewVideo"

    const-string v7, "BT case"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_4
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsOrHeadSetPlugged()Z

    move-result v6

    if-nez v6, :cond_5

    .line 540
    const/4 v4, 0x1

    .line 541
    const-string v6, "ViewVideo"

    const-string v7, "Speaker case"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_5
    if-nez v2, :cond_6

    if-nez v0, :cond_6

    if-eqz v4, :cond_13

    .line 546
    :cond_6
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$1700(Lcom/htc/video/ViewVideo;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$1700(Lcom/htc/video/ViewVideo;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 547
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEnhancerDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$1700(Lcom/htc/video/ViewVideo;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 549
    :cond_7
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mNotShowSoundEnhancer:Z
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$1800(Lcom/htc/video/ViewVideo;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 552
    if-eqz v2, :cond_c

    .line 554
    const-string v6, "ViewVideo"

    const-string v7, "setSoundEffect, HDMI is plugged. return."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V
    invoke-static {v6, v9, v9, v9}, Lcom/htc/video/ViewVideo;->access$100(Lcom/htc/video/ViewVideo;IZZ)V

    .line 637
    .end local v0           #btCase:Z
    .end local v2           #hdmiCase:Z
    .end local v4           #speakerCase:Z
    :cond_8
    :goto_1
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->setHdmiSoundButton(ZZ)V
    invoke-static {v6, v1, v9}, Lcom/htc/video/ViewVideo;->access$2100(Lcom/htc/video/ViewVideo;ZZ)V

    .line 638
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsSupport()Z

    move-result v6

    if-nez v6, :cond_a

    .line 640
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v8, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v8}, Lcom/htc/video/ViewVideo;->access$000(Lcom/htc/video/ViewVideo;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/video/VideoSoundEffectHelper;->isEnabled(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 642
    const/4 v3, 0x1

    .line 643
    .local v3, isShow:Z
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$000(Lcom/htc/video/ViewVideo;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    .line 645
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->getHTC51FailToast()Landroid/widget/Toast;
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$2200(Lcom/htc/video/ViewVideo;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 646
    const/4 v3, 0x0

    .line 648
    :cond_9
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V
    invoke-static {v6, v10, v3, v9}, Lcom/htc/video/ViewVideo;->access$100(Lcom/htc/video/ViewVideo;IZZ)V

    .line 651
    .end local v3           #isShow:Z
    :cond_a
    return-void

    .line 513
    .restart local v0       #btCase:Z
    .restart local v2       #hdmiCase:Z
    .restart local v4       #speakerCase:Z
    :cond_b
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 515
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mBeatsHeadSetPlugged:Z
    invoke-static {v6, v9}, Lcom/htc/video/ViewVideo;->access$1502(Lcom/htc/video/ViewVideo;Z)Z

    .line 516
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mNonBeatsHeadSetPlugged:Z
    invoke-static {v6, v10}, Lcom/htc/video/ViewVideo;->access$1602(Lcom/htc/video/ViewVideo;Z)Z

    goto/16 :goto_0

    .line 558
    :cond_c
    if-nez v0, :cond_d

    if-eqz v4, :cond_8

    .line 560
    :cond_d
    const-string v6, "ViewVideo"

    const-string v7, "setSoundEffect, BT is plugged or Nothing is plugged. return."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V
    invoke-static {v6, v10, v9, v9}, Lcom/htc/video/ViewVideo;->access$100(Lcom/htc/video/ViewVideo;IZZ)V

    goto :goto_1

    .line 566
    :cond_e
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 568
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/video/VideoSoundEffectHelper;->refreshEffectList()V

    .line 574
    :goto_2
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->updateSoundEffectDialog()V
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$1900(Lcom/htc/video/ViewVideo;)V

    .line 576
    if-eqz v2, :cond_11

    .line 578
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v6}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f040013

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 579
    .local v5, t:Landroid/widget/Toast;
    const-string v6, "ViewVideo"

    const-string v7, "showSoundEffectDialog, HDMI is plugged. return."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 582
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V
    invoke-static {v6, v9, v9, v9}, Lcom/htc/video/ViewVideo;->access$100(Lcom/htc/video/ViewVideo;IZZ)V

    .line 608
    .end local v5           #t:Landroid/widget/Toast;
    :cond_f
    :goto_3
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mNotShowSoundEnhancer:Z
    invoke-static {v6, v10}, Lcom/htc/video/ViewVideo;->access$1802(Lcom/htc/video/ViewVideo;Z)Z

    goto/16 :goto_1

    .line 572
    :cond_10
    const-string v6, "ViewVideo"

    const-string v7, "StatusChanged, mVideoSoundEffectHelper is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 587
    :cond_11
    if-eqz v0, :cond_12

    .line 589
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v6}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f040012

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 590
    .restart local v5       #t:Landroid/widget/Toast;
    const-string v6, "ViewVideo"

    const-string v7, "showSoundEffectDialog, BT is plugged. return."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 593
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V
    invoke-static {v6, v10, v9, v9}, Lcom/htc/video/ViewVideo;->access$100(Lcom/htc/video/ViewVideo;IZZ)V

    goto :goto_3

    .line 598
    .end local v5           #t:Landroid/widget/Toast;
    :cond_12
    if-eqz v4, :cond_f

    .line 600
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v6}, Lcom/htc/video/ViewVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f040014

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 601
    .restart local v5       #t:Landroid/widget/Toast;
    const-string v6, "ViewVideo"

    const-string v7, "showSoundEffectDialog, Nothing is plugged. return."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 604
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V
    invoke-static {v6, v10, v9, v9}, Lcom/htc/video/ViewVideo;->access$100(Lcom/htc/video/ViewVideo;IZZ)V

    goto :goto_3

    .line 614
    .end local v5           #t:Landroid/widget/Toast;
    :cond_13
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mNotShowSoundEnhancer:Z
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$1800(Lcom/htc/video/ViewVideo;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 617
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #setter for: Lcom/htc/video/ViewVideo;->mNotShowSoundEnhancer:Z
    invoke-static {v6, v9}, Lcom/htc/video/ViewVideo;->access$1802(Lcom/htc/video/ViewVideo;Z)Z

    .line 619
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mBeatsEffect:I
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$2000(Lcom/htc/video/ViewVideo;)I

    move-result v6

    if-nez v6, :cond_15

    .line 620
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V
    invoke-static {v6, v10, v9, v9}, Lcom/htc/video/ViewVideo;->access$100(Lcom/htc/video/ViewVideo;IZZ)V

    .line 626
    :cond_14
    :goto_4
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 628
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/video/VideoSoundEffectHelper;->refreshEffectList()V

    .line 634
    :goto_5
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->updateSoundEffectDialog()V
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$1900(Lcom/htc/video/ViewVideo;)V

    goto/16 :goto_1

    .line 621
    :cond_15
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mBeatsEffect:I
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$2000(Lcom/htc/video/ViewVideo;)I

    move-result v6

    if-ne v6, v10, :cond_16

    .line 622
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V
    invoke-static {v6, v9, v9, v9}, Lcom/htc/video/ViewVideo;->access$100(Lcom/htc/video/ViewVideo;IZZ)V

    goto :goto_4

    .line 624
    :cond_16
    iget-object v6, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v7, p0, Lcom/htc/video/ViewVideo$6;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mBeatsEffect:I
    invoke-static {v7}, Lcom/htc/video/ViewVideo;->access$2000(Lcom/htc/video/ViewVideo;)I

    move-result v7

    #calls: Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V
    invoke-static {v6, v7, v9, v9}, Lcom/htc/video/ViewVideo;->access$100(Lcom/htc/video/ViewVideo;IZZ)V

    goto :goto_4

    .line 632
    :cond_17
    const-string v6, "ViewVideo"

    const-string v7, "StatusChanged, mVideoSoundEffectHelper is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
