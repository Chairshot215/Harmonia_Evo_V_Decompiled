.class Lcom/android/camera/CameraThread$MainHandler;
.super Landroid/os/Handler;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$MainHandler;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 66

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - SET_RESOLUTION start mMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mCameraDevice is null in SET_RESOLUTION message"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v65, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v36, v0

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Resolution: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v65

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_camera_image_ratio"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Width:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$302(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Height:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$402(Lcom/android/camera/CameraThread;I)I

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v65

    #setter for: Lcom/android/camera/CameraThread;->Camera_Mode_Width:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$502(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v36

    #setter for: Lcom/android/camera/CameraThread;->Camera_Mode_Height:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$602(Lcom/android/camera/CameraThread;I)I

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$900(Lcom/android/camera/CameraThread;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;Z)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1002(Lcom/android/camera/CameraThread;Z)Z

    new-instance v45, Landroid/graphics/Matrix;

    invoke-direct/range {v45 .. v45}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x5a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v7

    move-object/from16 v0, v45

    invoke-static {v0, v2, v3, v5, v7}, Lcom/android/camera/CameraThread;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1100(Lcom/android/camera/CameraThread;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - SET_RESOLUTION end mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_2
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - START_PREVIEW start mode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCanStartPreview:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Width:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$302(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Height:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$402(Lcom/android/camera/CameraThread;I)I

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v65

    #setter for: Lcom/android/camera/CameraThread;->Video_Mode_Width:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$702(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v36

    #setter for: Lcom/android/camera/CameraThread;->Video_Mode_Height:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$802(Lcom/android/camera/CameraThread;I)I

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->isLastCameraClosed()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x64

    invoke-static/range {v2 .. v8}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraThread;->startPreview(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlock3DSwitch(Z)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x49

    const-wide/16 v9, 0x6a4

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x48

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x12c

    invoke-static/range {v5 .. v11}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    :cond_8
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_PREVIEW end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - WAIT_SELFTIMER start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkCanTakePicture()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1300(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const-string v2, "CameraThread"

    const-string v3, "mTaking_picture == true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mTaking_picture == true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v2, "CameraThread"

    const-string v3, "mTaking_picture == true - mFocusingState = NO_FOCUSING"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setFocusingState(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    goto/16 :goto_0

    :cond_9
    const-string v2, "CameraThread"

    const-string v3, "WAIT_SELFTIMER"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const-string v2, "CameraThread"

    const-string v3, "take picture, but mMode == VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - take picture, but mMode == VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v2, "CameraThread"

    const-string v3, "mMode == VIDEO_MODE - mFocusingState = NO_FOCUSING"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setFocusingState(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getFocusingState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - focus and then take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x22

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_3
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - WAIT_SELFTIMER end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v59

    if-lez v59, :cond_c

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start SelfTimer: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, v59

    invoke-static {v2, v3, v0, v5, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_3

    :cond_c
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - no self timer, take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x7

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_3

    :pswitch_4
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PREVIEW start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mOneShotPreviewCallback:Lcom/android/camera/CameraThread$OneShotPreviewCallback;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$OneShotPreviewCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :goto_4
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PREVIEW exit"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "CameraThread"

    const-string v3, "mCameraDevice is null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_5
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_FOCUS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TAKE FOCUS: X = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Y = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v33, :cond_e

    if-gez v34, :cond_f

    :cond_e
    const-string v2, "CameraThread"

    const-string v3, "TAKE FOCUS: X < 0 or Y < 0 !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->bShutterSound:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_17

    sget v2, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_10

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceFocusSound()Z

    move-result v2

    if-nez v2, :cond_10

    sget-boolean v2, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    if-eqz v2, :cond_17

    :cond_10
    const-string v2, "CameraThread"

    const-string v3, "Play Focusing Sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x15

    const v7, 0x7f060003

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0xc8

    invoke-static/range {v5 .. v11}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-eqz v2, :cond_12

    sget v2, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->bShowFocusIcon:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1902(Lcom/android/camera/CameraThread;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v33

    move/from16 v1, v34

    #calls: Lcom/android/camera/CameraThread;->SetICSFocusParam(II)V
    invoke-static {v2, v0, v1}, Lcom/android/camera/CameraThread;->access$2000(Lcom/android/camera/CameraThread;II)V

    sget v2, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "touch-aec"

    const-string v5, "on"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    const-string v2, "CameraThread"

    const-string v3, "Enable touch aec !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    const-string v2, "CameraThread"

    const-string v3, "Touch focus - disable continue AF !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "enable-caf"

    const-string v5, "off"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    sget-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    if-eqz v2, :cond_15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    const-string v2, "CameraThread"

    const-string v3, "take focus again, so cancel auto focus, mTakeFocus = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x5

    const-wide/16 v9, 0x12c

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TOUCH_FOCUS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_FOCUS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "CameraThread"

    const-string v3, "Play Focusing Sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x15

    const v7, 0x7f060003

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0xc8

    invoke-static/range {v5 .. v11}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->bShowFocusIcon:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1902(Lcom/android/camera/CameraThread;Z)Z

    goto/16 :goto_6

    :catch_0
    move-exception v30

    const-string v2, "CameraThread"

    const-string v3, "cancel focus failed"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :pswitch_6
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_FOCUS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/TIME;->AutoFocusCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v2}, Lcom/android/camera/TIME$Value;->Start()V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAutoFocusCallback:Lcom/android/camera/CameraThread$AutoFocusCallback;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$2100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$AutoFocusCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const-string v2, "CameraThread"

    const-string v3, "start focus, mTakeFocus = true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2d

    const-wide/16 v9, 0x1f4

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_19
    :goto_8
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_FOCUS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v30

    const-string v2, "CameraThread"

    const-string v3, "auto focus failed"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "CameraThread"

    const-string v3, "set focus false, continute taking picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #calls: Lcom/android/camera/CameraThread;->handleAutoFocus(Z)V
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2200(Lcom/android/camera/CameraThread;Z)V

    goto :goto_8

    :pswitch_7
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CANCEL_FOCUS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    sget-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    if-eqz v2, :cond_1a

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_9
    const-string v2, "CameraThread"

    const-string v3, "cancel auto focus, mTakeFocus = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CANCEL_FOCUS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v30

    const-string v2, "CameraThread"

    const-string v3, "cancel focus failed"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :pswitch_8
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_FINISH_AUTO_FOCUS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #calls: Lcom/android/camera/CameraThread;->handleAutoFocus(Z)V
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2200(Lcom/android/camera/CameraThread;Z)V

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_FINISH_AUTO_FOCUS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1b

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_ERROR, can\'t take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1402(Lcom/android/camera/CameraThread;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->stop_calculate_fps()V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1c
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2302(Lcom/android/camera/CameraThread;Ljava/lang/Thread;)Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1402(Lcom/android/camera/CameraThread;Z)Z

    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mbCanTakePicture = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->start_calculate_fps()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE end, mbCanTakePicture = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v30

    const-string v2, "CameraThread"

    const-string v3, "Exception"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    const-string v2, "CameraThread"

    const-string v3, "Really take picture - mCaptureState = CAPTURE_STATE_TAKING_PICTURE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->capture()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)V

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - STOP_PREVIEW start  mMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$900(Lcom/android/camera/CameraThread;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->stop_calculate_fps()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;Z)Z

    const-string v2, "CameraThread"

    const-string v3, "stopPreview"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - STOP_PREVIEW end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA_DELAYED start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_b
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA_DELAYED end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_c
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - CLOSE_CAMERA start mMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->close_camera()V

    :goto_c
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_4
    move-exception v30

    const-string v2, "CameraThread"

    const-string v3, "Exception"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :pswitch_d
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState == CAPTURE_STATE_TAKING_PICTURE, not close camera, waiting ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x2

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_WAITING_CLOSE_CAMERA"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->close_camera()V

    goto :goto_c

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_c

    :pswitch_10
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - QUIT_CAMERA_THREAD start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)I

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1f

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState != CAPTURE_STATE_IDLE, not quit camera thread, waiting ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x3

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_WAITING_QUIT_THREAD"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->close_camera()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/os/Looper;->quit()V

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - QUIT_CAMERA_THREAD end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->stop_calculate_fps()V

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2302(Lcom/android/camera/CameraThread;Ljava/lang/Thread;)Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1802(Lcom/android/camera/CameraThread;Z)Z

    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mbCanTakePicture = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->start_calculate_fps()V

    goto/16 :goto_0

    :catch_5
    move-exception v30

    const-string v2, "CameraThread"

    const-string v3, "Exception"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->bShutterSound:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2600(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "CameraThread"

    const-string v3, "Play start record sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x36

    const-wide/16 v9, 0x12c

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->start_video_recording(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_24
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING_DELAY start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->start_video_recording(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_25
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING_DELAY end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_MESSAGE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_26

    const-string v2, "CameraThread"

    const-string v3, "record, but mMode != VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - record, but mMode != VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkCanTakeRecorder()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2700(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x9

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_e
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_MESSAGE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    const-string v2, "CameraThread"

    const-string v3, "Recording Message - Stop Recording"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1802(Lcom/android/camera/CameraThread;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->stop_video_recording()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2800(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->bShutterSound:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2600(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "CameraThread"

    const-string v3, "Play end record sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x41

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_e

    :pswitch_14
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - ENTER_VIDEO_MODE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/camera/CameraThread;->mMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_29
    :goto_f
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - ENTER_VIDEO_MODE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x39

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_f

    :pswitch_15
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - EXIT_VIDEO_MODE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "CameraThread"

    const-string v3, "Exit Video Mode - Stop Recording"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->stop_video_recording()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2800(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1802(Lcom/android/camera/CameraThread;Z)Z

    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/camera/CameraThread;->mMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_2c
    :goto_10
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - EXIT_VIDEO_MODE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x39

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_10

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v64

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v2, "incandescent"

    move-object/from16 v0, v64

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[choose_Incandescent]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "exposure-compensation"

    const/4 v5, 0x5

    move/from16 v0, v43

    invoke-virtual {v2, v3, v0, v5}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v60

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_exposure]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "postproc-enable-imboost"

    const-string v5, "on"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "postproc-enable-denoise"

    const-string v5, "on"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "postproc-enable-imboost"

    const-string v5, "off"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "postproc-enable-denoise"

    const-string v5, "off"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :pswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    #setter for: Lcom/android/camera/CameraThread;->bIsStereo:Z
    invoke-static {v3, v2}, Lcom/android/camera/CameraThread;->access$2902(Lcom/android/camera/CameraThread;Z)Z

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[STEREO_RECORDING] Stereo = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->bIsStereo:Z
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2900(Lcom/android/camera/CameraThread;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "iso"

    move-object/from16 v0, v41

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraThread;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const/4 v3, 0x5

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v60

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v42

    move/from16 v1, v60

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v2, "contrast"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_contract]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    const-string v2, "saturation"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_saturation]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_30
    const-string v2, "sharpness"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_sharpness]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getFlashRestriction()Lcom/android/camera/FlashRestriction;

    move-result-object v53

    if-eqz v53, :cond_31

    invoke-virtual/range {v53 .. v53}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :cond_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Ljava/lang/String;

    if-eqz v60, :cond_32

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set flash mode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :cond_32
    const-string v2, "CameraThread"

    const-string v3, "set flash mode - null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CHECK_RECORD_SIZE_LIMIT end - mRecording = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v44

    if-nez v44, :cond_34

    const-string v2, "CameraThread"

    const-string v3, "mRecordLimitCheck = null !!! - CHECK_RECORD_SIZE_LIMIT end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_34
    invoke-virtual/range {v44 .. v44}, Lcom/android/camera/RecordLimitCheck;->checkSizeLimit()V

    invoke-virtual/range {v44 .. v44}, Lcom/android/camera/RecordLimitCheck;->getLimitState()I

    move-result v55

    packed-switch v55, :pswitch_data_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    invoke-virtual/range {v44 .. v44}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x7f0a003f

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const-string v2, "CameraThread"

    const-string v3, "reach FATA32 file \'system file size limitation"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_20
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - FILE_SIZE_LIMIT stop recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_21
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - DISK_SPACE_LIMIT stop recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const/4 v2, 0x3

    sput v2, Lcom/android/camera/CameraThread;->Storage_Status:I

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x8a

    if-ne v2, v3, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x7f0a0034

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x7f0a0033

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_22
    const-string v2, "CameraThread"

    const-string v3, "reach time out - not to check file size limit"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mIsStart_fps:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3000(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mFps:I
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)I

    move-result v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mFps:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$3102(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x19

    const-wide/16 v9, 0x3e8

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :pswitch_24
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - LOAD_SETTINGS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->loadSettings()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - LOAD_SETTINGS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_25
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_THUMB start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v2

    if-nez v2, :cond_36

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v63, v8

    :goto_12
    if-eqz v6, :cond_0

    if-eqz v63, :cond_0

    const-string v16, "IMAG%"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v7, v2

    const/4 v2, 0x2

    const-string v3, "datetaken"

    aput-object v3, v7, v2

    const-string v8, "_display_name LIKE ?"

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v16, v9, v2

    const-string v10, "datetaken ASC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v2, 0x3

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v9, v2

    const/4 v2, 0x2

    const-string v3, "datetaken"

    aput-object v3, v9, v2

    const-string v10, "bucket_display_name=\'100MEDIA\'"

    const/4 v11, 0x0

    const-string v12, "datetaken ASC"

    move-object/from16 v8, v63

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    const/16 v56, 0x0

    const/16 v38, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    if-eqz v27, :cond_37

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_37

    :try_start_6
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToLast()Z

    const-string v2, "_data"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    const-string v2, "_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    const-string v2, "datetaken"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v39

    :goto_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v61, 0x0

    const/16 v62, 0x0

    if-eqz v28, :cond_38

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_38

    :try_start_7
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToLast()Z

    const-string v2, "_data"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    const-string v2, "datetaken"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    move-result-object v62

    :goto_14
    const/16 v57, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-nez v27, :cond_39

    if-nez v28, :cond_39

    const/16 v18, 0x0

    :goto_15
    if-nez v18, :cond_42

    const-string v2, "CameraThread"

    const-string v3, "Both Image/Video cursor are null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_36
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_69

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v63, v8

    goto/16 :goto_12

    :catch_6
    move-exception v32

    const-string v2, "CameraThread"

    invoke-virtual/range {v32 .. v32}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    const/16 v27, 0x0

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_7
    move-exception v31

    const-string v2, "CameraThread"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    const/16 v27, 0x0

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_37
    const-string v2, "CameraThread"

    const-string v3, "thumbnail Image Cursor == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :catch_8
    move-exception v32

    const-string v2, "CameraThread"

    invoke-virtual/range {v32 .. v32}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    const/16 v28, 0x0

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_9
    move-exception v31

    const-string v2, "CameraThread"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    const/16 v28, 0x0

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_38
    const-string v2, "CameraThread"

    const-string v3, "thumbnail Video Cursor == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_39
    if-nez v27, :cond_3b

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3a

    const/16 v18, 0x0

    goto/16 :goto_15

    :cond_3a
    const/16 v18, 0x2

    goto/16 :goto_15

    :cond_3b
    if-nez v28, :cond_3d

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3c

    const/16 v18, 0x0

    goto/16 :goto_15

    :cond_3c
    const/16 v18, 0x1

    goto/16 :goto_15

    :cond_3d
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3e

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3e

    const/16 v18, 0x0

    goto/16 :goto_15

    :cond_3e
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3f

    const/16 v18, 0x1

    goto/16 :goto_15

    :cond_3f
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_40

    const/16 v18, 0x2

    goto/16 :goto_15

    :cond_40
    const/16 v25, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-lez v25, :cond_41

    const/16 v18, 0x1

    goto/16 :goto_15

    :cond_41
    const/16 v18, 0x2

    goto/16 :goto_15

    :cond_42
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_46

    :try_start_8
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create image thumbnail - path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    move-object/from16 v0, v38

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_b

    move-result-object v56

    move-object/from16 v57, v38

    const/16 v17, 0x0

    :cond_43
    :goto_16
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    const-string v2, "thumb_file_path"

    move-object/from16 v0, v24

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v46

    const/16 v2, 0x32

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->what:I

    move/from16 v0, v17

    move-object/from16 v1, v46

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v46

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz v27, :cond_44

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    const/16 v27, 0x0

    :cond_44
    if-eqz v28, :cond_45

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    const/16 v28, 0x0

    :cond_45
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_a
    move-exception v29

    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createImageThumbnail() throws exception"

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :catch_b
    move-exception v48

    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createImageThumbnail() throws java.lang.OutOfMemoryError"

    move-object/from16 v0, v48

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_46
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_43

    :try_start_9
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create video thumbnail - path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    move-object/from16 v0, v61

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_d

    move-result-object v56

    move-object/from16 v57, v61

    const/16 v17, 0x1

    goto/16 :goto_16

    :catch_c
    move-exception v29

    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createVideoThumbnail() throws exception"

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    :catch_d
    move-exception v48

    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createVideoThumbnail() throws java.lang.OutOfMemoryError"

    move-object/from16 v0, v48

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    :pswitch_26
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_IMAGE_THUMB start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v2

    if-nez v2, :cond_49

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_47
    :goto_17
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v7, v2

    const-string v8, "bucket_display_name=\'100MEDIA\'"

    const/4 v9, 0x0

    const-string v10, "datetaken ASC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    const/16 v56, 0x0

    const/16 v58, 0x0

    const/16 v37, 0x0

    if-eqz v26, :cond_4a

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4a

    :try_start_a
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToLast()Z

    const-string v2, "_data"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    const-string v2, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    move-result-object v37

    :try_start_b
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create image thumbnail - path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    move-object/from16 v0, v58

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_11

    move-result-object v56

    :goto_18
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    const-string v2, "thumb_file_path"

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v46

    const/16 v2, 0x32

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v46

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz v26, :cond_48

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    const/16 v26, 0x0

    :cond_48
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_IMAGE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_49
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_47

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_17

    :catch_e
    move-exception v32

    const-string v2, "CameraThread"

    invoke-virtual/range {v32 .. v32}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    const/16 v26, 0x0

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_IMAGE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_f
    move-exception v31

    const-string v2, "CameraThread"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    const/16 v26, 0x0

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_IMAGE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_10
    move-exception v29

    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createImageThumbnail() throws exception"

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    :catch_11
    move-exception v48

    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createImageThumbnail() throws java.lang.OutOfMemoryError"

    move-object/from16 v0, v48

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    :cond_4a
    const-string v2, "CameraThread"

    const-string v3, "thumbnail Image Cursor == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :pswitch_27
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_VIDEO_THUMB start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v61, 0x0

    if-nez v52, :cond_4e

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v2

    if-nez v2, :cond_4d

    sget-object v8, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_4b
    :goto_19
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v9, v2

    const-string v10, "bucket_display_name=\'100MEDIA\'"

    const/4 v11, 0x0

    const-string v12, "datetaken ASC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    if-eqz v26, :cond_4c

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4c

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToLast()Z

    const-string v2, "_data"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_4c
    :goto_1a
    if-nez v61, :cond_4f

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_VIDEO_THUMB end - video_path = null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4d
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4b

    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_19

    :cond_4e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Ljava/lang/String;

    goto :goto_1a

    :cond_4f
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create video thumbnail - path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v35, 0x0

    const/4 v2, 0x3

    :try_start_c
    move-object/from16 v0, v61

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_12

    move-result-object v35

    :goto_1b
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    const-string v2, "thumb_file_path"

    move-object/from16 v0, v24

    move-object/from16 v1, v61

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v46

    const/16 v2, 0x32

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v46

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_VIDEO_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_12
    move-exception v29

    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createVideoThumbnail() throws exception"

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    :pswitch_28
    sget-boolean v2, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    if-eqz v2, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isBlockCaptureUI()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x1f

    const-wide/16 v9, 0x64

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    const-string v2, "CameraThread"

    const-string v3, "Can\'t disable touch aec, send message again"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_51

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "touch-aec"

    const-string v5, "off"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    const-string v2, "CameraThread"

    const-string v3, "Disable touch aec !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_51
    const-string v2, "CameraThread"

    const-string v3, "Can\'t disable touch aec, mCamController == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_29
    sget-boolean v2, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    if-eqz v2, :cond_52

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isBlockCaptureUI()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    :cond_52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "CameraThread"

    const-string v3, "ENABLE_CAF - enable continue AF !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "enable-caf"

    const-string v5, "on"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    goto/16 :goto_0

    :pswitch_2a
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_FACE_OPTIONS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    const-string v2, "On"

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - setFaceDetectionListener start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startFaceDetection()V

    const-string v2, "%01d%04d%04d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ICS: start face detect, option = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-options"

    move-object/from16 v0, v51

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_53
    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_54

    :cond_54
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_FACE_OPTIONS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_55
    const-string v2, "Off"

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - setFaceDetectionListener stop"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopFaceDetection()V

    const-string v2, "%01d%04d%04d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ICS: start face detect, option = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-options"

    move-object/from16 v0, v51

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_1c

    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-options"

    move-object/from16 v0, v49

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_1c

    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    const-string v2, "contrast"

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "saturation"

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "sharpness"

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    :cond_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v42

    move/from16 v1, v60

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    :cond_58
    :goto_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :cond_59
    const-string v2, "exposure-compensation"

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    goto :goto_1d

    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isBlockCaptureUI()Z

    move-result v2

    if-eqz v2, :cond_5a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2b

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2b

    const-wide/16 v9, 0x64

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isUIFreeze()Z

    move-result v2

    if-eqz v2, :cond_5b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v50

    :goto_1e
    const/4 v2, -0x1

    move/from16 v0, v50

    if-ne v0, v2, :cond_5c

    const-string v2, "CameraThread"

    const-string v3, "orientation = OrientationEventListener.ORIENTATION_UNKNOWN"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v50, 0x0

    :goto_1f
    invoke-static/range {v50 .. v50}, Lcom/android/camera/ImageManager;->roundOrientation(I)I

    move-result v60

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola_orientation"

    move/from16 v0, v60

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :cond_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getLastOrientation()I

    move-result v50

    goto :goto_1e

    :cond_5c
    add-int/lit8 v50, v50, 0x5a

    goto :goto_1f

    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->stop_video_recording_delay()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3300(Lcom/android/camera/CameraThread;)V

    goto/16 :goto_0

    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "taking-picture-zoom"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->bSwitchCamera:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_5d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-nez v2, :cond_5d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "taking-picture-zoom"

    sget v5, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    :goto_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :cond_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "taking-picture-zoom"

    invoke-virtual/range {v40 .. v40}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto :goto_20

    :pswitch_2f
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CHECK_INTERNAL_STORAGE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->checkInternalStorage()Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "CameraThread"

    const-string v3, "low internal storage ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x104039d

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_5e
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CHECK_INTERNAL_STORAGE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_30
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CHECK_STORAGE_STATUS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkStorageStatus()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3500(Lcom/android/camera/CameraThread;)V

    sget v2, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-nez v2, :cond_60

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0x1e

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showFocusWithoutDelay()Z

    move-result v2

    if-eqz v2, :cond_5f

    const-wide/16 v2, 0x0

    :goto_21
    invoke-static {v5, v7, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :goto_22
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CHECK_STORAGE_STATUS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5f
    const-wide/16 v2, 0x1f4

    goto :goto_21

    :cond_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0x1e

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showFocusWithoutDelay()Z

    move-result v2

    if-eqz v2, :cond_61

    const-wide/16 v2, 0x0

    :goto_23
    invoke-static {v5, v7, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_22

    :cond_61
    const-wide/16 v2, 0x1f4

    goto :goto_23

    :pswitch_31
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SCENE_MODE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_62

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Ljava/lang/String;

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_SCENE_MODE - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v54

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_62
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SCENE_MODE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_blink detection"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v22, :cond_63

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "03"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_smile_capture"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "10"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "00"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_33
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SMILE_CAPTURE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_smile_capture"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_65

    if-eqz v22, :cond_66

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "10"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    :goto_24
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SMILE_CAPTURE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_blink detection"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_67

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "03"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "00"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :pswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v2

    const-string v3, "PowerWarning.Received"

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    goto/16 :goto_0

    :pswitch_36
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_GE_ WHITEBOARD start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_68

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "B_whiteboard"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v9

    const-string v10, "GE-param0"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v9 .. v15}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v9

    const-string v10, "GE-param1"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->injectGEParam()Z

    :cond_68
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_GE_ WHITEBOARD end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_69
    move-object/from16 v63, v8

    goto/16 :goto_12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_a
        :pswitch_c
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_16
        :pswitch_17
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_b
        :pswitch_23
        :pswitch_4
        :pswitch_0
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_2a
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
        :pswitch_2c
        :pswitch_2b
        :pswitch_8
        :pswitch_29
        :pswitch_2d
        :pswitch_2e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_30
        :pswitch_12
        :pswitch_18
        :pswitch_19
        :pswitch_25
        :pswitch_31
        :pswitch_34
        :pswitch_32
        :pswitch_33
        :pswitch_36
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_35
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method
