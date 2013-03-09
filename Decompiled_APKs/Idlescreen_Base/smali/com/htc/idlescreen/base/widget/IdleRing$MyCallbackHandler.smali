.class Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;
.super Landroid/os/Handler;
.source "IdleRing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/IdleRing;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/widget/IdleRing;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    .line 257
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 258
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 261
    iget v4, p1, Landroid/os/Message;->what:I

    .line 262
    .local v4, what:I
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    #getter for: Lcom/htc/idlescreen/base/widget/IdleRing;->mRingCallback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;
    invoke-static {v5}, Lcom/htc/idlescreen/base/widget/IdleRing;->access$300(Lcom/htc/idlescreen/base/widget/IdleRing;)Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;

    move-result-object v0

    .line 263
    .local v0, callback:Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;
    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 268
    :pswitch_0
    const-string v5, "IdleRing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WHAT_ON_START_DRAG mRingState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    iget-object v7, v7, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    sget-object v6, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->DRAGGING:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    iput-object v6, v5, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    .line 270
    invoke-interface {v0}, Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;->onStartDrag()V

    goto :goto_0

    .line 273
    :pswitch_1
    const-string v5, "IdleRing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WHAT_ON_END_DRAG mRingState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    iget-object v7, v7, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    iget-object v5, v5, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v6, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->UNLOCKING:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-eq v5, v6, :cond_0

    .line 277
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    iget-object v5, v5, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    sget-object v6, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    if-ne v5, v6, :cond_2

    .line 278
    invoke-interface {v0}, Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;->onStartDrag()V

    .line 281
    :cond_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_3

    .line 282
    .local v3, unlock:Z
    :goto_1
    if-eqz v3, :cond_4

    .line 283
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    sget-object v6, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->UNLOCKING:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    iput-object v6, v5, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    .line 288
    :goto_2
    invoke-interface {v0, v3}, Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;->onEndDrag(Z)V

    goto :goto_0

    .line 281
    .end local v3           #unlock:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 286
    .restart local v3       #unlock:Z
    :cond_4
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    sget-object v6, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    iput-object v6, v5, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    goto :goto_2

    .line 291
    .end local v3           #unlock:Z
    :pswitch_2
    const-string v5, "IdleRing"

    const-string v6, "WHAT_ON_UNLOCK_START"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-interface {v0}, Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;->onUnlockStart()V

    goto :goto_0

    .line 295
    :pswitch_3
    const-string v5, "IdleRing"

    const-string v6, "WHAT_ON_UNLOCK_END"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    invoke-virtual {v5, v3}, Lcom/htc/idlescreen/base/widget/IdleRing;->setEnable(Z)V

    .line 297
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    sget-object v6, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    iput-object v6, v5, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    .line 298
    invoke-interface {v0}, Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;->onUnlockEnd()V

    goto/16 :goto_0

    .line 303
    :pswitch_4
    const-string v5, "IdleRing"

    const-string v6, "WHAT_ON_DROP_START"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    sget-object v6, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->UNLOCKING:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    iput-object v6, v5, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    .line 305
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    .line 306
    .local v1, dragItem:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    #calls: Lcom/htc/idlescreen/base/widget/IdleRing;->handleDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    invoke-static {v5, v1}, Lcom/htc/idlescreen/base/widget/IdleRing;->access$400(Lcom/htc/idlescreen/base/widget/IdleRing;Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    goto/16 :goto_0

    .line 310
    .end local v1           #dragItem:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    :pswitch_5
    const-string v5, "IdleRing"

    const-string v6, "WHAT_ON_DROP_END"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    invoke-virtual {v5, v3}, Lcom/htc/idlescreen/base/widget/IdleRing;->setEnable(Z)V

    .line 312
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    sget-object v6, Lcom/htc/idlescreen/base/widget/IdleRing$RingState;->IDLE:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    iput-object v6, v5, Lcom/htc/idlescreen/base/widget/IdleRing;->mRingState:Lcom/htc/idlescreen/base/widget/IdleRing$RingState;

    .line 313
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    #getter for: Lcom/htc/idlescreen/base/widget/IdleRing;->mDragItem:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    invoke-static {v5}, Lcom/htc/idlescreen/base/widget/IdleRing;->access$500(Lcom/htc/idlescreen/base/widget/IdleRing;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/htc/idlescreen/base/widget/IdleRing$RingCallback;->onDropEnd(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V

    .line 314
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    const/4 v6, 0x0

    #setter for: Lcom/htc/idlescreen/base/widget/IdleRing;->mDragItem:Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/widget/IdleRing;->access$502(Lcom/htc/idlescreen/base/widget/IdleRing;Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    goto/16 :goto_0

    .line 317
    :pswitch_6
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    #calls: Lcom/htc/idlescreen/base/widget/IdleRing;->handleDropOver()V
    invoke-static {v5}, Lcom/htc/idlescreen/base/widget/IdleRing;->access$600(Lcom/htc/idlescreen/base/widget/IdleRing;)V

    goto/16 :goto_0

    .line 320
    :pswitch_7
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    #calls: Lcom/htc/idlescreen/base/widget/IdleRing;->handleDropOut()V
    invoke-static {v5}, Lcom/htc/idlescreen/base/widget/IdleRing;->access$700(Lcom/htc/idlescreen/base/widget/IdleRing;)V

    goto/16 :goto_0

    .line 323
    :pswitch_8
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    invoke-virtual {v5, v3}, Lcom/htc/idlescreen/base/widget/IdleRing;->setEnable(Z)V

    .line 324
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    #calls: Lcom/htc/idlescreen/base/widget/IdleRing;->handleBounce()V
    invoke-static {v5}, Lcom/htc/idlescreen/base/widget/IdleRing;->access$800(Lcom/htc/idlescreen/base/widget/IdleRing;)V

    goto/16 :goto_0

    .line 327
    :pswitch_9
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    #calls: Lcom/htc/idlescreen/base/widget/IdleRing;->handleIndicate()V
    invoke-static {v5}, Lcom/htc/idlescreen/base/widget/IdleRing;->access$900(Lcom/htc/idlescreen/base/widget/IdleRing;)V

    goto/16 :goto_0

    .line 330
    :pswitch_a
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    invoke-virtual {v5, v3}, Lcom/htc/idlescreen/base/widget/IdleRing;->setEnable(Z)V

    goto/16 :goto_0

    .line 333
    :pswitch_b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .line 334
    .local v2, playbackInfo:Lcom/htc/fusion/fx/FxPlaybackInfo;
    iget-object v5, p0, Lcom/htc/idlescreen/base/widget/IdleRing$MyCallbackHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleRing;

    #calls: Lcom/htc/idlescreen/base/widget/IdleRing;->handlePlaybackEvent(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    invoke-static {v5, v2}, Lcom/htc/idlescreen/base/widget/IdleRing;->access$1000(Lcom/htc/idlescreen/base/widget/IdleRing;Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    goto/16 :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
