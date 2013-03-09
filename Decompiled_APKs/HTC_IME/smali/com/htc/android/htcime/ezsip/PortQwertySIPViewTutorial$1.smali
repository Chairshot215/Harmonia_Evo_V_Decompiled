.class Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;
.super Landroid/os/Handler;
.source "PortQwertySIPViewTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, -0x1

    const-wide/16 v3, 0xa

    .line 514
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 553
    :goto_0
    :pswitch_0
    return-void

    .line 516
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showKey(I)V

    goto :goto_0

    .line 519
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mPreviewFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 525
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)I

    move-result v0

    if-nez v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 546
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v0, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->dismiss()V

    .line 547
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 532
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 537
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLongPressScenerioHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 550
    :pswitch_4
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$1;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1, v5, v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(III)V

    goto/16 :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
