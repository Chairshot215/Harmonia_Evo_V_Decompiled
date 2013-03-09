.class Lcom/android/camera/HTCCamera$MainHandler;
.super Landroid/os/Handler;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera$MainHandler;-><init>(Lcom/android/camera/HTCCamera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 54

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_RECORDING_INDICATOR end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecording_Shining:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v4, v4, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mRecording_Shining:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$502(Lcom/android/camera/HTCCamera;Z)Z

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    const-wide/16 v6, 0x3e8

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f0201ab

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mRecording_Shining:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$502(Lcom/android/camera/HTCCamera;Z)Z

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f0201aa

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_RECORDING_INDICATOR end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_RECORDING_INDICATOR end - mRecording = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-gez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lcom/android/camera/HTCCamera;->mStartCountTime:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$902(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$802(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    const-wide/16 v6, 0x3e8

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "Recording.Started"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x1

    cmp-long v3, v3, v6

    if-nez v3, :cond_a

    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnBlock Capture UI - start recorder, unblock time = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "CaptureUI.Unblock"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #calls: Lcom/android/camera/HTCCamera;->openSecondLayout(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$1400(Lcom/android/camera/HTCCamera;Z)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    new-instance v4, Lcom/android/camera/OneValueEvent;

    const-string v6, "Recording.TimeChanged"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x24

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-wide/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getRecordingTime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/RecordLimitCheck;->checkTimeOut_UI(J)J

    move-result-wide v43

    :goto_5
    const-wide/16 v3, 0x0

    cmp-long v3, v43, v3

    if-gtz v3, :cond_f

    const/16 v51, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-eqz v3, :cond_b

    if-nez v51, :cond_10

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$808(Lcom/android/camera/HTCCamera;)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mStartCountTime:J
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    sub-long v36, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long v6, v36, v6

    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1022(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x320

    cmp-long v3, v3, v6

    if-gez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x320

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    cmp-long v3, v3, v6

    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/RecordLimitCheck;->checkTimeOut_UI(J)J

    move-result-wide v43

    goto/16 :goto_5

    :cond_f
    const/16 v51, 0x0

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/RecordLimitCheck;->getLimitState()I

    move-result v46

    packed-switch v46, :pswitch_data_1

    const-string v3, "HTCCamera"

    const-string v4, "should not enter this state !!!!!!!!!!!!!!!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :pswitch_3
    const-string v3, "HTCCamera"

    const-string v4, "reach file size limit - stop to update recording indicator"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0x16

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/RecordLimitCheck;->getUseTimeOut_API()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    const-string v3, "HTCCamera"

    const-string v4, "ui reach time limit - wait api reach time limit"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v3, "HTCCamera"

    const-string v4, "ui reach time limit - and not use api"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_5
    const-string v3, "HTCCamera"

    const-string v4, "reach time limit to stop recorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->triggerRecord()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1600(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - TRIGGER_STOP_RECORD start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HTCCamera"

    const-string v4, "Block Capture UI - Stop Recorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->setPowerWarning(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v4, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1700(Lcom/android/camera/HTCCamera;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1802(Z)Z

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - TRIGGER_STOP_RECORD end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - STOP_RECORDING_INDICATOR start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - STOP_RECORDING_INDICATOR end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "Recording.Stopping"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1700(Lcom/android/camera/HTCCamera;)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - STOP_RECORDING_INDICATOR end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - STOP_RECORDING_FINISH start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - STOP_RECORDING_FINISH end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "Recording.Stopped"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2000(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$2100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;

    move-result-object v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2500(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$2600(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$3000(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DButtonStatus:I
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3100(Lcom/android/camera/HTCCamera;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$3300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->closeCaptureUI()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3400(Lcom/android/camera/HTCCamera;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3500(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3500(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->showActionScreen()V

    :cond_1a
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - STOP_RECORDING_FINISH end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SUSPEND_ON_RECORDING start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2000(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$2100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$3000(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$3300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_1d
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SUSPEND_ON_RECORDING end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - COUNT_DOWN_SELFTIMER end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1f

    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    :cond_1f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v3

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-nez v3, :cond_21

    :cond_20
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - COUNT_DOWN_SELFTIMER end - storage error"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    if-lez v23, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isMenuClosed()Z

    move-result v3

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->canTakePicture()Z

    move-result v3

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->closeSelfTimer()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3600(Lcom/android/camera/HTCCamera;)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - COUNT_DOWN_SELFTIMER end - canTakePicture() = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v52

    move/from16 v0, v52

    move/from16 v1, v23

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lcom/android/camera/HTCCamera;->mStartCountTime:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$902(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$3702(Lcom/android/camera/HTCCamera;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "SelfTimer.Started"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    :cond_23
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    new-instance v4, Lcom/android/camera/OneValueEvent;

    const-string v6, "SelfTimer.CountDown"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    add-int/lit8 v5, v23, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v8}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v8

    invoke-static/range {v3 .. v9}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3802(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->hasShutterSound()Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "HTCCamera"

    const-string v4, "Play Countdown Sound"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    :cond_24
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_25
    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - self timer countdown"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    goto/16 :goto_0

    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mStartCountTime:J
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    sub-long v34, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sub-int v4, v52, v23

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v6, v4

    sub-long v6, v34, v6

    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1022(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x320

    cmp-long v3, v3, v6

    if-gez v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x320

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_7

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    cmp-long v3, v3, v6

    if-lez v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_7

    :cond_28
    const-string v3, "HTCCamera"

    const-string v4, "StartSelfTimer: Time Out"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HTCCamera"

    const-string v4, "Block Capture UI - self timer timeout, take picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$3702(Lcom/android/camera/HTCCamera;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "SelfTimer.Stopped"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #calls: Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4000(Lcom/android/camera/HTCCamera;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3500(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3500(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #calls: Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4100(Lcom/android/camera/HTCCamera;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x23

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4302(Lcom/android/camera/HTCCamera;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;

    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v3, "HTCCamera"

    const-string v4, "Freeze UI - self timer timeout, take picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->lockOrientation()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4402(Lcom/android/camera/HTCCamera;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v4, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - RESET_SURFACEVIEW_LAYOUT start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v53, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move/from16 v0, v53

    move/from16 v1, v28

    #calls: Lcom/android/camera/HTCCamera;->reset_surface_view(II)V
    invoke-static {v3, v0, v1}, Lcom/android/camera/HTCCamera;->access$4500(Lcom/android/camera/HTCCamera;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSurfaceWidth:I
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSurfaceHeight:I
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$4700(Lcom/android/camera/HTCCamera;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/android/camera/HTCCamera;->reset_layout_from_surface(II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - RESET_SURFACEVIEW_LAYOUT end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->resetGridView()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4800(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    #calls: Lcom/android/camera/HTCCamera;->updateModeIcon(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4900(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    #calls: Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$5000(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    #calls: Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$5100(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DButtonStatus:I
    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$3100(Lcom/android/camera/HTCCamera;)I

    move-result v7

    #calls: Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V
    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/HTCCamera;->access$5200(Lcom/android/camera/HTCCamera;III)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v6, 0x0

    #calls: Lcom/android/camera/HTCCamera;->enableSceneIcon(IZ)V
    invoke-static {v3, v4, v6}, Lcom/android/camera/HTCCamera;->access$5300(Lcom/android/camera/HTCCamera;IZ)V

    goto/16 :goto_0

    :pswitch_e
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PROGRESS_STATUS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v47, v0

    const/4 v3, 0x1

    move/from16 v0, v47

    if-ne v0, v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    new-instance v4, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {v4, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$5402(Lcom/android/camera/HTCCamera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v3

    const-string v4, "Please Wait"

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    :cond_2c
    :goto_8
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PROGRESS_STATUS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$5402(Lcom/android/camera/HTCCamera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_8

    :pswitch_f
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - OPEN_CAPTURE_UI start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - OPEN_CAPTURE_UI end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - CLOSE_CAPTURE_UI start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->closeCaptureUI()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3400(Lcom/android/camera/HTCCamera;)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - CLOSE_CAPTURE_UI end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_ALBUM_CAMERAstart"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e

    const-string v3, "HTCCamera"

    const-string v4, "End - Return to album after taking picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v31, Landroid/content/Intent;

    const-string v3, "FROM_CAMERA"

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "preview_mode"

    const-string v4, "capture"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    :goto_9
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_ALBUM_CAMERA end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2e
    const-string v3, "HTCCamera"

    const-string v4, "Start - Go to album after taking picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v31, Landroid/content/Intent;

    const-string v3, "FROM_CAMERA"

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.MainActivity"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "preview_mode"

    const-string v4, "capture"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "review_duration"

    const/4 v4, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :pswitch_12
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - Play video after recording video start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v31, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v22, 0x1

    :try_start_0
    const-string v3, "com.htc.video"

    const-string v4, "com.htc.video.ViewVideo"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "landscape"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_a
    if-nez v22, :cond_2f

    :try_start_1
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.TabPluginDevice.ViewVideo"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "landscape"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2f
    :goto_b
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - Play video after recording video end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v25

    const/16 v22, 0x0

    const-string v3, "HTCCamera"

    const-string v4, "com.htc.video - play video fail"

    move-object/from16 v0, v25

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_1
    move-exception v25

    const-string v3, "HTCCamera"

    const-string v4, "com.htc.album - play video fail"

    move-object/from16 v0, v25

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :pswitch_13
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    goto/16 :goto_0

    :pswitch_14
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PANEL_FADEOUT start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "Menu.TimeOut"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PANEL_FADEOUT end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_15
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PLAY_FOCUS_SOUND start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5500(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->bCancelFocus:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5600(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move/from16 v0, v30

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PLAY_FOCUS_SOUND end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUSING start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5500(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->bCancelFocus:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5600(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v3, :cond_0

    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_30

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_30
    :goto_c
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUSING end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$5800()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$5900()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    goto :goto_c

    :pswitch_17
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUS_SUCCESS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5500(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->bCancelFocus:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5600(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v3, :cond_0

    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_34

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020193

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_32
    :goto_d
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUS_SUCCESS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    goto :goto_d

    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x36

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->setFocusFace()V

    goto :goto_d

    :pswitch_18
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUS_FAIL start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5500(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->bCancelFocus:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5600(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v3, :cond_0

    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_37

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_36

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020194

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_35
    :goto_e
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUS_FAIL end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    goto :goto_e

    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x36

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->setFocusFace()V

    goto :goto_e

    :pswitch_19
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUS_END start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_38

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_38
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUS_END end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1a
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - FINISH_FOCUS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - FINISH_FOCUS end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->bCancelFocus:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5600(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - FINISH_FOCUS end - bCancelFocus = true"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v3, :cond_3b

    const-string v3, "HTCCamera"

    const-string v4, "Enter this state only when interrupt focus !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - FINISH_FOCUS end - mFocusingState = NO_FOCUSING"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    if-eqz v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/SensorHandler;->setifWaitFocus(Z)V

    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x21

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x1f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0x1f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->setStateWithFocus()V

    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    packed-switch v3, :pswitch_data_2

    const-string v3, "HTCCamera"

    const-string v4, "unknown focus state !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    :goto_f
    const-string v3, "HTCCamera"

    const-string v4, "Finish Focus - mFocusingState = NO_FOCUSING"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "Focus.Finished"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - FINISH_FOCUS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->checkFaceDetection()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6300(Lcom/android/camera/HTCCamera;)V

    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - take focus end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    goto :goto_f

    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_3e

    const-string v3, "HTCCamera"

    const-string v4, "take focus end, and then take picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v3, "HTCCamera"

    const-string v4, "Freeze UI - take focus end, and then take picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->lockOrientation()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4402(Lcom/android/camera/HTCCamera;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v4, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_40

    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - switch to video mode after focusing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->switchMode(I)Z

    goto/16 :goto_f

    :cond_40
    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - record after focusing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->triggerRecord()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1600(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_f

    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_42

    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - take picture after focusing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_41

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_41

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->triggerTakePicture()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6400(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_f

    :cond_42
    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - record after focusing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->triggerRecord()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1600(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_f

    :pswitch_1f
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - CANCEL_FOCUS_END start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - CANCEL_FOCUS_END end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->bCancelFocus:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$5602(Lcom/android/camera/HTCCamera;Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_45

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_44

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_44

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_44
    :goto_10
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - CANCEL_FOCUS_END end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_44

    goto :goto_10

    :pswitch_20
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - ENABLE_SENSOR_FOCUS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$6502(Lcom/android/camera/HTCCamera;Z)Z

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - ENABLE_SENSOR_FOCUS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SensorHandler;->restartCheckSensorFocus()V

    goto/16 :goto_0

    :pswitch_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "HTCCamera"

    const-string v4, ">>>>>>>>>>>>>>>>>>>>> sensor stable, check scene file !!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SensorHandler;->enterSceneChangeState()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SensorHandler;->checkSceneChange()V

    goto/16 :goto_0

    :pswitch_23
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_SENSOR_FOCUS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v3

    if-nez v3, :cond_46

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SensorHandler;->restartCheckSensorFocus()V

    goto/16 :goto_0

    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v3

    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :cond_47
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->isStartDetection()Z

    move-result v3

    if-eqz v3, :cond_4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->isCheckLoop()Z

    move-result v3

    if-nez v3, :cond_48

    const/4 v3, 0x3

    sput v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    goto/16 :goto_0

    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v3

    if-lez v3, :cond_49

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->getFaceState()Lcom/android/camera/FaceDetection$STATE;

    move-result-object v3

    sget-object v4, Lcom/android/camera/FaceDetection$STATE;->STABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    if-eq v3, v4, :cond_4a

    const/4 v3, 0x3

    sput v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    goto/16 :goto_0

    :cond_49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->getFaceState()Lcom/android/camera/FaceDetection$STATE;

    move-result-object v3

    sget-object v4, Lcom/android/camera/FaceDetection$STATE;->NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    if-eq v3, v4, :cond_4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->getFaceState()Lcom/android/camera/FaceDetection$STATE;

    move-result-object v3

    sget-object v4, Lcom/android/camera/FaceDetection$STATE;->STABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    if-eq v3, v4, :cond_4a

    const/4 v3, 0x3

    sput v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    goto/16 :goto_0

    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->handleSensorFocus()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6600(Lcom/android/camera/HTCCamera;)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_SENSOR_FOCUS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_24
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_FACE_FOCUS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v3

    if-eqz v3, :cond_4f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_4e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v3

    if-gtz v3, :cond_4b

    const-string v3, "HTCCamera"

    const-string v4, "enter this state - must enable auto-capture !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1200()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3700(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_4c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v3, :cond_4d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4d

    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    goto/16 :goto_0

    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->setStateWithFocus()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camera()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6700(Lcom/android/camera/HTCCamera;)V

    :cond_4e
    :goto_11
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_FACE_FOCUS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v3

    if-nez v3, :cond_50

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    goto/16 :goto_0

    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v5

    if-lez v5, :cond_51

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x45

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6802(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->stopSoundPool()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6900(Lcom/android/camera/HTCCamera;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/FaceDetection$Face;

    invoke-virtual {v4, v3}, Lcom/android/camera/HTCCamera;->handleFaceFocus(Lcom/android/camera/FaceDetection$Face;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camera()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6700(Lcom/android/camera/HTCCamera;)V

    goto :goto_11

    :cond_51
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/FaceDetection$Face;

    invoke-virtual {v4, v3}, Lcom/android/camera/HTCCamera;->handleFaceFocus(Lcom/android/camera/FaceDetection$Face;)V

    goto :goto_11

    :pswitch_25
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_SELF_PORTRAIT start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_SELF_PORTRAIT end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_52
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6802(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->stopSoundPool()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6900(Lcom/android/camera/HTCCamera;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/FaceDetection$Face;

    invoke-virtual {v4, v3}, Lcom/android/camera/HTCCamera;->handleFaceFocus(Lcom/android/camera/FaceDetection$Face;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camera()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6700(Lcom/android/camera/HTCCamera;)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_SELF_PORTRAIT end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1200()Z

    move-result v3

    if-nez v3, :cond_53

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->clearFocusFace()V

    goto/16 :goto_0

    :cond_53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x36

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x36

    const-wide/16 v6, 0x64

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :pswitch_27
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREPARE_FOCUS_BEFORE_CAPTURE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREPARE_FOCUS_BEFORE_CAPTURE end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_55

    const-string v3, "HTCCamera"

    const-string v4, "REPARE_FOCUS_BEFORE_CAPTURE - mFocusingState != FOCUSING_TAP_CAPTURE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusPos_X:I
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$7000(Lcom/android/camera/HTCCamera;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusPos_Y:I
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$7100(Lcom/android/camera/HTCCamera;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREPARE_FOCUS_BEFORE_CAPTURE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_28
    const-string v3, "HTCCamera"

    const-string v4, "CameraHandler Message - CHECK_FACE_DETECTION start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->checkFaceDetection()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6300(Lcom/android/camera/HTCCamera;)V

    const-string v3, "HTCCamera"

    const-string v4, "CameraHandler Message - CHECK_FACE_DETECTION end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_29
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SCREEN_SAVE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->deactivate()V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SCREEN_SAVE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    if-eqz v40, :cond_56

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v40, v3, v4

    move-object/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    :cond_56
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SHOW_TOAST - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v3

    if-nez v3, :cond_57

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-string v6, ""

    const v7, 0x186a0

    invoke-static {v4, v6, v7}, Lcom/android/camera/rotate/RotateToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/camera/rotate/RotateToast;

    move-result-object v4

    #setter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$7202(Lcom/android/camera/HTCCamera;Lcom/android/camera/rotate/RotateToast;)Lcom/android/camera/rotate/RotateToast;

    :cond_57
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v41, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    if-eqz v40, :cond_58

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v40, v3, v4

    move-object/from16 v0, v29

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    :cond_58
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SHOW_3D_HINT - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v3

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/android/camera/rotate/RotateToast;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateToast;->show()V

    goto/16 :goto_0

    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7300(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    const-string v3, "%d fps"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7300(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mGpsIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7400(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/camera/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v33

    if-eqz v33, :cond_59

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mGpsIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7400(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_0

    :cond_59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mGpsIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7400(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x4

    if-le v5, v3, :cond_5a

    const/4 v5, 0x0

    :cond_5a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x29

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x1f4

    invoke-static/range {v3 .. v9}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :pswitch_2e
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREVIEW_DUPLICATE_START start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v3, :cond_5b

    const-string v3, "HTCCamera"

    const-string v4, "mCameraThread == null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_5c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const v4, 0x7f080040

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual/range {v49 .. v49}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f08015a

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    #setter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v4, v3}, Lcom/android/camera/HTCCamera;->access$7502(Lcom/android/camera/HTCCamera;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_5c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v3, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v4

    :goto_12
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v3, v3, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_5d

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v3, v3, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    const-string v3, "HTCCamera"

    const-string v6, "mOneShotBitmap = null - wait()"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_12

    :catch_2
    move-exception v26

    :try_start_4
    const-string v3, "HTCCamera"

    const-string v6, "Exception"

    move-object/from16 v0, v26

    invoke-static {v3, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :cond_5d
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    new-instance v45, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    if-nez v3, :cond_5e

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x42b4

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v11, v3, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v6, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    :cond_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/high16 v18, 0x3f00

    const/16 v19, 0x1

    const/high16 v20, 0x3f00

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    if-nez v3, :cond_5f

    new-instance v21, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v6, 0x0

    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-float v7, v7

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_13
    const/16 v24, 0x3e8

    move/from16 v0, v24

    int-to-long v3, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2b

    move/from16 v0, v24

    int-to-long v6, v0

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREVIEW_DUPLICATE_START end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5f
    new-instance v21, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    mul-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v6, 0x0

    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_13

    :pswitch_2f
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREVIEW_DUPLICATE_END start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_60

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_60
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_61

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v3, v3, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_61

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v3, v3, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    :cond_61
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREVIEW_DUPLICATE_END end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_30
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UPDATE_FLASH_FROM_RESTRICTION start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UPDATE_FLASH_FROM_RESTRICTION end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_62
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1200()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_63

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_63

    const-string v3, "HTCCamera"

    const-string v4, "UI Block - wait UI unBlock to update flash from restriction"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2c

    const-wide/16 v6, 0x64

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_63
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v3

    if-eqz v3, :cond_64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7700(Lcom/android/camera/HTCCamera;)I

    move-result v3

    if-gtz v3, :cond_64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7800(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x25

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FlashRestriction;->getRestrictionHint()I

    move-result v3

    if-eqz v3, :cond_64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x25

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$7600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/FlashRestriction;->getRestrictionHint()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v4, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UPDATE_FLASH_FROM_RESTRICTION end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_31
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - DO_CREATE_RESUME_AFTER_PREVIEW start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mActivityOnPause:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7900(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_65

    const-string v3, "HTCCamera"

    const-string v4, "mActivityOnPause == true, UIHandler Message - DO_CREATE_RESUME_AFTER_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_65
    invoke-static {}, Lcom/android/camera/HTCCamera;->isKeyguardShow()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_66

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportShowWhenLock()Z

    move-result v3

    if-nez v3, :cond_66

    const-string v3, "HTCCamera"

    const-string v4, "mIsKeyguardShow = true, && !DisplayDevice.supportShowWhenLock(), waiting for unlock screen"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->setWaitKeyguardBeforePreview(Z)V

    goto/16 :goto_0

    :cond_66
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->initOnCreate_after_preview()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8000(Lcom/android/camera/HTCCamera;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - DO_CREATE_RESUME_AFTER_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_32
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - DO_CREATE_AFTER_PREVIEW start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mActivityOnPause:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7900(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_67

    const-string v3, "HTCCamera"

    const-string v4, "mActivityOnPause == true, UIHandler Message - DO_CREATE_AFTER_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_67
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8100(Lcom/android/camera/HTCCamera;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #calls: Lcom/android/camera/HTCCamera;->openSecondLayout(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$1400(Lcom/android/camera/HTCCamera;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - DO_CREATE_AFTER_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_33
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - DO_RESUME_AFTER_PREVIEW start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mActivityOnPause:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7900(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_68

    const-string v3, "HTCCamera"

    const-string v4, "mActivityOnPause == true, UIHandler Message - DO_RESUME_AFTER_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_68
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->doOnResume_after_preview()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8200(Lcom/android/camera/HTCCamera;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4402(Lcom/android/camera/HTCCamera;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8300(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_69

    const-string v3, "HTCCamera"

    const-string v4, "mWaitResetSettings = true, reset panel and set mWaitResetSettings to false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #calls: Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4000(Lcom/android/camera/HTCCamera;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$8302(Lcom/android/camera/HTCCamera;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v3

    if-eqz v3, :cond_69

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/MenuHandler;->resetMenuHandler()V

    :cond_69
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v4

    #calls: Lcom/android/camera/HTCCamera;->updateSelfPortraitHint(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$8500(Lcom/android/camera/HTCCamera;I)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - after start preview"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$402(Lcom/android/camera/HTCCamera;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "CameraActivity.PreviewStarted"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderHWButton()Z

    move-result v3

    if-eqz v3, :cond_6a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->checkCamcorderButtonRecord()V

    :cond_6a
    const-string v3, "HTCCamera"

    const-string v4, "DO_RESUME_AFTER_PREVIEW end - mIsUIReady = true"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6b

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3, v4}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_6b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x67

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_6b
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - DO_RESUME_AFTER_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_34
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UPDATE_THUMBNAIL_BUTTON start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ThumbnailController;

    move-result-object v3

    if-nez v3, :cond_6c

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UPDATE_THUMBNAIL_BUTTON end, mThumbController == null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v50, :cond_0

    invoke-virtual/range {v50 .. v50}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_6c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "thumb_file_path"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, v50

    move-object/from16 v1, v42

    move/from16 v2, v38

    #calls: Lcom/android/camera/HTCCamera;->updateThumbnailButton(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    invoke-static {v3, v0, v1, v2}, Lcom/android/camera/HTCCamera;->access$8700(Lcom/android/camera/HTCCamera;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UPDATE_THUMBNAIL_BUTTON end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_35
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - LOAD_LATEST_THUMBNAIL start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ThumbnailController;

    move-result-object v3

    if-eqz v3, :cond_6d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_6d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ThumbnailController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ThumbnailController;->clearButtonImage()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_6d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_6e

    const/16 v3, 0x1d

    :goto_14
    invoke-static {v4, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_6d
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - LOAD_LATEST_THUMBNAIL end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6e
    const/16 v3, 0x1e

    goto :goto_14

    :pswitch_36
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UNBLOCK_CAPTURE_UI start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "CaptureUI.Unblock"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UNBLOCK_CAPTURE_UI end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_37
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - ENABLE_GARBAGE_COLLECTION start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - ENABLE_GARBAGE_COLLECTION end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFreezeUI:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8800(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v3

    if-eqz v3, :cond_71

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isOrientationLockNeeded()Z

    move-result v3

    if-nez v3, :cond_71

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v3

    if-eqz v3, :cond_6f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mLastOrientation:I
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$8900(Lcom/android/camera/HTCCamera;)I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v4

    #calls: Lcom/android/camera/HTCCamera;->onRotateChanged(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9000(Lcom/android/camera/HTCCamera;I)V

    const-string v3, "HTCCamera"

    const-string v4, "Unfreeze UI !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mFreezeUI:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$8802(Lcom/android/camera/HTCCamera;Z)Z

    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0x2b

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0x2b

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :cond_6f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_70

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_70

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mLastOrientation:I
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$8900(Lcom/android/camera/HTCCamera;)I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v4

    #calls: Lcom/android/camera/HTCCamera;->onRotateChanged(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9000(Lcom/android/camera/HTCCamera;I)V

    const-string v3, "HTCCamera"

    const-string v4, "Unfreeze UI !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mFreezeUI:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$8802(Lcom/android/camera/HTCCamera;Z)Z

    goto :goto_15

    :cond_70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    goto :goto_15

    :cond_71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    goto :goto_15

    :pswitch_39
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - LONG_PRESS_SW_CAPTURE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v3

    if-eqz v3, :cond_72

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->startFocusFromLongPressKey()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9100(Lcom/android/camera/HTCCamera;)V

    :cond_72
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mStartTapCapture:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9202(Lcom/android/camera/HTCCamera;Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_73

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v4, v4, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_74

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_74

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camera()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6700(Lcom/android/camera/HTCCamera;)V

    :goto_17
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - LONG_PRESS_SW_CAPTURE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_73
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v3, v4, v6}, Lcom/android/camera/HTCCamera;->updateDOTCaptureIcon(ZI)V

    goto :goto_16

    :cond_74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camcorder()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9300(Lcom/android/camera/HTCCamera;)V

    goto :goto_17

    :pswitch_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->getSelfPortraitState()I

    move-result v46

    const/4 v3, -0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9402(I)I

    packed-switch v46, :pswitch_data_3

    :goto_18
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$9400()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_75

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$9508()I

    :goto_19
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$9400()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lcom/android/camera/HTCCamera;->mPlayBeepTime:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$9602(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/camera/HTCCamera;->playSoundPool(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9700(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x45

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$9400()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v13 .. v19}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :pswitch_3b
    const/16 v3, 0xc8

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9402(I)I

    goto :goto_18

    :pswitch_3c
    const/4 v3, -0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9402(I)I

    goto :goto_18

    :cond_75
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9502(I)I

    goto :goto_19

    :pswitch_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3700(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->closeSelfTimer()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3600(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :pswitch_3e
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_76

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9802(Lcom/android/camera/HTCCamera;Z)Z

    :cond_76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9800(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_78

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x48

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1800()Z

    move-result v3

    if-eqz v3, :cond_77

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x48

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x7d0

    invoke-static/range {v13 .. v19}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :cond_77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DButtonStatus:I
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$3100(Lcom/android/camera/HTCCamera;)I

    move-result v4

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DButtonStatus:I
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$3100(Lcom/android/camera/HTCCamera;)I

    move-result v4

    iput v4, v3, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->switch3DMode()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9900(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :cond_78
    const-string v3, "HTCCamera"

    const-string v4, "mIsPreviewReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9802(Lcom/android/camera/HTCCamera;Z)Z

    goto/16 :goto_0

    :pswitch_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-eqz v32, :cond_79

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    :goto_1a
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MENU_3D_CAMERA_SWITCH] m3DButtonStatus = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->switch3DMode()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9900(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :cond_79
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    goto :goto_1a

    :pswitch_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #calls: Lcom/android/camera/HTCCamera;->hideSunNightSceneGuide(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$10000(Lcom/android/camera/HTCCamera;Z)V

    goto/16 :goto_0

    :pswitch_42
    const-string v3, "HTCCamera"

    const-string v4, "FADEOUT_SCENE_LANDSCAPE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_43
    const-string v3, "HTCCamera"

    const-string v4, "~~~~~~~SHOW_STABLE_ICON~~~~~~~"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x4d

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mbackIcon_land:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020003

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mfrontIcon_land:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneLandscapeTipText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10300(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a0194

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x4c

    const-wide/16 v6, 0xbb8

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :pswitch_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x4e

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mbackIcon_port:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mfrontIcon_port:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneLandscapeTipText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10300(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a0194

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x4c

    const-wide/16 v6, 0xbb8

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :pswitch_45
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Mesage - AUTO_SMILE_CAPTURE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x53

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_7a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_7a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->triggerTakePicture()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6400(Lcom/android/camera/HTCCamera;)V

    :goto_1b
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - AUTO_SMILE_CAPTURE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7a
    const-string v3, "HTCCamera"

    const-string v4, "Unable to do auto smile capture in this mode"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onCameraThreadRunning()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10900(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :pswitch_47
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v6

    #calls: Lcom/android/camera/HTCCamera;->enableSceneIcon(IZ)V
    invoke-static {v3, v4, v6}, Lcom/android/camera/HTCCamera;->access$5300(Lcom/android/camera/HTCCamera;IZ)V

    goto/16 :goto_0

    :pswitch_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x67

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #calls: Lcom/android/camera/HTCCamera;->onRotateChanged(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9000(Lcom/android/camera/HTCCamera;I)V

    const-string v3, "HTCCamera"

    const-string v4, "changetoVideoMode, set UI landscape, Freeze UI !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mFreezeUI:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$8802(Lcom/android/camera/HTCCamera;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/camera/rotate/OrientationConfig;->mapUIOrientationToDegree(I)I

    move-result v4

    #setter for: Lcom/android/camera/HTCCamera;->mFreezeOrientation:I
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$11002(Lcom/android/camera/HTCCamera;I)I

    goto/16 :goto_0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_24
        :pswitch_26
        :pswitch_0
        :pswitch_37
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_9
        :pswitch_8
        :pswitch_39
        :pswitch_0
        :pswitch_25
        :pswitch_3a
        :pswitch_3d
        :pswitch_0
        :pswitch_3e
        :pswitch_3f
        :pswitch_0
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_40
        :pswitch_2b
        :pswitch_0
        :pswitch_6
        :pswitch_45
        :pswitch_47
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_46
        :pswitch_48
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3c
    .end packed-switch
.end method
