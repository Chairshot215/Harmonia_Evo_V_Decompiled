.class Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;
.super Landroid/os/Handler;
.source "FxLeapRearrangeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 386
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    iget-object v4, v4, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    if-nez v4, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    const/4 v5, 0x1

    #setter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mIsMoving:Z
    invoke-static {v4, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->access$002(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;Z)Z

    .line 390
    iget v3, p1, Landroid/os/Message;->what:I

    .line 392
    .local v3, what:I
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 393
    .local v0, from:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 395
    .local v2, to:I
    sget-boolean v4, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->localLOGD:Z

    if-eqz v4, :cond_2

    const-string v4, "FxLeapRearrangeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ROSIE_DEBUG][LEAP_REARRANGE] mMoveAnimationHandler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_2
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    iget-object v4, v4, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aget-object v1, v4, v0

    .line 399
    .local v1, mDragFrom:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;
    packed-switch v3, :pswitch_data_0

    .line 414
    :goto_1
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->setMoveFrom(I)V

    .line 415
    invoke-virtual {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;->setScreen(I)V

    .line 416
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    iget-object v4, v4, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLeapDrags:[Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrag;

    aput-object v1, v4, v2

    .line 417
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #setter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mLastMoveTime:J
    invoke-static {v4, v5, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->access$302(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;J)J

    .line 423
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    const/4 v5, 0x0

    #setter for: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->mIsMoving:Z
    invoke-static {v4, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->access$002(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;Z)Z

    .line 425
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 426
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->getFxLeapRearrangeListener()Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeListener;->onMoveAnimationEnd()V

    goto :goto_0

    .line 401
    :pswitch_0
    sget-boolean v4, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->localLOGD:Z

    if-eqz v4, :cond_3

    const-string v4, "FxLeapRearrangeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ROSIE_DEBUG][LEAP_REARRANGE] WHAT_MOVE_BACKWARD "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_3
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->moveBackward(II)V
    invoke-static {v4, v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;II)V

    goto :goto_1

    .line 407
    :pswitch_1
    sget-boolean v4, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->localLOGD:Z

    if-eqz v4, :cond_4

    const-string v4, "FxLeapRearrangeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ROSIE_DEBUG][LEAP_REARRANGE] WHAT_MOVE_FORWARD "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_4
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->moveForward(II)V
    invoke-static {v4, v0, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;->access$200(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeController;II)V

    goto/16 :goto_1

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
