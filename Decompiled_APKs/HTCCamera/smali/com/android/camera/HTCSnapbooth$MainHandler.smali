.class Lcom/android/camera/HTCSnapbooth$MainHandler;
.super Landroid/os/Handler;
.source "HTCSnapbooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCSnapbooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;


# direct methods
.method private constructor <init>(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/HTCSnapbooth;Lcom/android/camera/HTCSnapbooth$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth$MainHandler;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v0, "HTCSnapbooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainHandler Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - RESET_SURFACEVIEW_LAYOUT start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTCSnapbooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_0

    move v3, v5

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/camera/SnapboothCustomize;->updatePreviewOrientation(Z)V

    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - RESET_SURFACEVIEW_LAYOUT end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PREVIEW_STARTED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsPreviewStarted:Z
    invoke-static {v0, v5}, Lcom/android/camera/HTCSnapbooth;->access$202(Lcom/android/camera/HTCSnapbooth;Z)Z

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$300(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-ne v0, v5, :cond_1

    const-string v0, "HTCSnapbooth"

    const-string v1, "mActivityOnPause == true, UIHandler Message - DO_CREATE_AFTER_PREVIEW end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/SnapboothCustomize;->showPreviewCover(Z)V

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z
    invoke-static {v0, v3}, Lcom/android/camera/HTCSnapbooth;->access$402(Lcom/android/camera/HTCSnapbooth;Z)Z

    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z
    invoke-static {v0, v3}, Lcom/android/camera/HTCSnapbooth;->access$502(Lcom/android/camera/HTCSnapbooth;Z)Z

    :cond_4
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PREVIEW_STARTED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PREVIEW_STOPPED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsPreviewStarted:Z
    invoke-static {v0, v3}, Lcom/android/camera/HTCSnapbooth;->access$202(Lcom/android/camera/HTCSnapbooth;Z)Z

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/SnapboothCustomize;->showPreviewCover(Z)V

    :cond_5
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PREVIEW_STOPPED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - FIRST_PREVIEW_FRAME_ARRIVED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$300(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsPreviewFrameArrived:Z
    invoke-static {v0, v5}, Lcom/android/camera/HTCSnapbooth;->access$602(Lcom/android/camera/HTCSnapbooth;Z)Z

    :cond_6
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - FIRST_PREVIEW_FRAME_ARRIVED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - CAPTURE_CANCELED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z
    invoke-static {v0, v3}, Lcom/android/camera/HTCSnapbooth;->access$702(Lcom/android/camera/HTCSnapbooth;Z)Z

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->unfreezeUIRotation()V
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$800(Lcom/android/camera/HTCSnapbooth;)V

    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - CAPTURE_CANCELED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - CAPTURE_COMPLETED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/SnapboothCustomize;->selectEffectIcon(I)V

    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - CAPTURE_COMPLETED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - COUNT_DOWN_SELFTIMER start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$700(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "HTCSnapbooth"

    const-string v1, "Capture is canceled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - COUNT_DOWN_SELFTIMER end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget v12, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$900(Lcom/android/camera/HTCSnapbooth;)I

    move-result v0

    invoke-static {v0, v3}, Lcom/android/camera/rotate/OrientationConfig;->mapDrgreeToUIOrientationEx(IZ)I

    move-result v9

    if-lez v12, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    add-int/lit8 v2, v12, -0x1

    if-le v12, v5, :cond_8

    move v5, v3

    :goto_1
    rsub-int v5, v5, 0x320

    int-to-long v5, v5

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    invoke-virtual {v0, v12, v9}, Lcom/android/camera/SnapboothCustomize;->enableCountdown(II)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCSnapbooth;->PlaySound(I)V

    :goto_2
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - COUNT_DOWN_SELFTIMER end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x1f4

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/camera/SnapboothCustomize;->disableCountdowns(I)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1100(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1200(Lcom/android/camera/HTCSnapbooth;)I

    move-result v0

    if-ne v0, v6, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->closeCaptureUI()V
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1300(Lcom/android/camera/HTCSnapbooth;)V

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsPreviewFrameArrived:Z
    invoke-static {v0, v3}, Lcom/android/camera/HTCSnapbooth;->access$602(Lcom/android/camera/HTCSnapbooth;Z)Z

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z
    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$1100(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v6, v3, v3, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1400(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1400(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :sswitch_7
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - UPDATE_MULTISHUTTER_BUBBLE start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTCSnapbooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentShutterNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I
    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$1200(Lcom/android/camera/HTCSnapbooth;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I
    invoke-static {v0, v1}, Lcom/android/camera/HTCSnapbooth;->access$1202(Lcom/android/camera/HTCSnapbooth;I)I

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1200(Lcom/android/camera/HTCSnapbooth;)I

    move-result v0

    if-le v0, v5, :cond_d

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1500(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$1200(Lcom/android/camera/HTCSnapbooth;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->enableCountBubble(I)V

    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - UPDATE_MULTISHUTTER_BUBBLE end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - STORE_IMAGE_FAILED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    const v1, 0x7f0a016a

    #calls: Lcom/android/camera/HTCSnapbooth;->showToast(ILjava/lang/String;)V
    invoke-static {v0, v1, v4}, Lcom/android/camera/HTCSnapbooth;->access$1600(Lcom/android/camera/HTCSnapbooth;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3, v3, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V
    invoke-static {v0, v3, v3}, Lcom/android/camera/HTCSnapbooth;->access$1700(Lcom/android/camera/HTCSnapbooth;ZZ)V

    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - STORE_IMAGE_FAILED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - REVIEW_SCREEN start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/graphics/Bitmap;

    move-object v7, v0

    check-cast v7, [Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    aget-object v1, v7, v3

    aget-object v2, v7, v5

    #calls: Lcom/android/camera/HTCSnapbooth;->showReviewScreen(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCSnapbooth;->access$1800(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - REVIEW_SCREEN end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - REVIEW_ANIMATION start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V
    invoke-static {v0, v5, v5}, Lcom/android/camera/HTCSnapbooth;->access$1700(Lcom/android/camera/HTCSnapbooth;ZZ)V

    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - REVIEW_ANIMATION end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - INIT_THUMBNAIL_CREATED start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mNeedInitThumbnail:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1900(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2000(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2000(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v0, v11}, Lcom/android/camera/HTCSnapbooth;->access$2002(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2100(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2000(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2200(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2000(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_f
    :goto_4
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - INIT_THUMBNAIL_CREATED end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    if-eqz v11, :cond_f

    const-string v0, "HTCSnapbooth"

    const-string v1, "Thumbnail image is not needed, recycled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :sswitch_c
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - SHOW_TOAST start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/camera/HTCSnapbooth;->showToast(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/camera/HTCSnapbooth;->access$1600(Lcom/android/camera/HTCSnapbooth;ILjava/lang/String;)V

    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - SHOW_TOAST end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - NOTIFY_STORAGE_STATE start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2100(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    if-ne v10, v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$2000(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_11
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->showStorageToast(IZ)V
    invoke-static {v0, v10, v5}, Lcom/android/camera/HTCSnapbooth;->access$2300(Lcom/android/camera/HTCSnapbooth;IZ)V

    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - NOTIFY_STORAGE_STATE end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PLAY_SOUND start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$MainHandler;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0, v8}, Lcom/android/camera/HTCSnapbooth;->PlaySound(I)V

    const-string v0, "HTCSnapbooth"

    const-string v1, "UIHandler Message - PLAY_SOUND end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_3
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0x1f -> :sswitch_c
        0x22 -> :sswitch_e
        0x2a -> :sswitch_d
        0x64 -> :sswitch_b
        0x65 -> :sswitch_8
    .end sparse-switch
.end method
