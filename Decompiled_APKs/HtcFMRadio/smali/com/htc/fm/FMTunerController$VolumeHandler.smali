.class Lcom/htc/fm/FMTunerController$VolumeHandler;
.super Landroid/os/Handler;
.source "FMTunerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMTunerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeHandler"
.end annotation


# static fields
.field public static final VOLUME_INTERVAL:J = 0x1f4L

.field public static final WHAT_GET_VOLUME:I = 0x1

.field public static final WHAT_QUIT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMTunerController;


# direct methods
.method private constructor <init>(Lcom/htc/fm/FMTunerController;)V
    .locals 0
    .parameter

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fm/FMTunerController;Lcom/htc/fm/FMTunerController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1393
    invoke-direct {p0, p1}, Lcom/htc/fm/FMTunerController$VolumeHandler;-><init>(Lcom/htc/fm/FMTunerController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1401
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1404
    :pswitch_0
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    #calls: Lcom/htc/fm/FMTunerController;->checkTunerCmdStatus4AudioStream()V
    invoke-static {v4}, Lcom/htc/fm/FMTunerController;->access$500(Lcom/htc/fm/FMTunerController;)V

    .line 1406
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v4}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v4

    if-nez v4, :cond_6

    sget-boolean v4, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    if-nez v4, :cond_6

    .line 1408
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    #setter for: Lcom/htc/fm/FMTunerController;->mIllegalStateTimes:I
    invoke-static {v4, v7}, Lcom/htc/fm/FMTunerController;->access$602(Lcom/htc/fm/FMTunerController;I)I

    .line 1410
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/fm/FMTunerController;->access$100(Lcom/htc/fm/FMTunerController;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1412
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 1415
    .local v3, volume:I
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mVolume:I
    invoke-static {v4}, Lcom/htc/fm/FMTunerController;->access$700(Lcom/htc/fm/FMTunerController;)I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 1416
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    #setter for: Lcom/htc/fm/FMTunerController;->mVolume:I
    invoke-static {v4, v3}, Lcom/htc/fm/FMTunerController;->access$702(Lcom/htc/fm/FMTunerController;I)I

    .line 1417
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    iget-object v5, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mVolume:I
    invoke-static {v5}, Lcom/htc/fm/FMTunerController;->access$700(Lcom/htc/fm/FMTunerController;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/fm/FMTunerController;->setVolume(I)V

    .line 1464
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v3           #volume:I
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mVolumeStopPooling:Z
    invoke-static {v4}, Lcom/htc/fm/FMTunerController;->access$800(Lcom/htc/fm/FMTunerController;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1465
    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v8, v4, v5}, Lcom/htc/fm/FMTunerController$VolumeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1420
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v3       #volume:I
    :cond_2
    sget-boolean v4, Lcom/htc/fm/FMTunerController$TunerInfo;->IsServiceBinded:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v4}, Lcom/htc/fm/FMTunerController;->isRssiOn()Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/htc/fm/FMTunerController$TunerInfo;->isScreenOn:Z

    if-eqz v4, :cond_3

    .line 1421
    const-string v4, "FMTunerController"

    const-string v5, "[FMTunerController][FMTuner] VolumeHandler setRssiOn()"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v4}, Lcom/htc/fm/FMTunerController;->setRssiOn()V

    .line 1425
    :cond_3
    sget-boolean v4, Lcom/htc/fm/FMTunerController$TunerInfo;->IsServiceBinded:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v4}, Lcom/htc/fm/FMTunerController;->isRssiOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1426
    const-string v4, "FMTunerController"

    const-string v5, "[FMTunerController][FMTuner] VolumeHandler setRssiOff()"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v4}, Lcom/htc/fm/FMTunerController;->setRssiOff()V

    .line 1430
    :cond_4
    sget-boolean v4, Lcom/htc/fm/FMTunerController$TunerInfo;->IsServiceBinded:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v4}, Lcom/htc/fm/FMTunerController;->isRdsOn()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1431
    const-string v4, "FMTunerController"

    const-string v5, "[FMTunerController][FMTuner] VolumeHandler setRdsOn()"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v4}, Lcom/htc/fm/FMTunerController;->setRdsOn()V

    .line 1435
    :cond_5
    sget-boolean v4, Lcom/htc/fm/FMTunerController$TunerInfo;->IsServiceBinded:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v4}, Lcom/htc/fm/FMTunerController;->isRdsOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1436
    const-string v4, "FMTunerController"

    const-string v5, "[FMTunerController][FMTuner] VolumeHandler setRdsOff()"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v4}, Lcom/htc/fm/FMTunerController;->setRdsOff()V

    goto :goto_1

    .line 1441
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v3           #volume:I
    :cond_6
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v4}, Lcom/htc/fm/FMTunerController;->getCmdState()I

    move-result v1

    .line 1442
    .local v1, cmdState:I
    const-string v4, "FMTunerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FMTunerController] Cannot setVolume("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mVolume:I
    invoke-static {v6}, Lcom/htc/fm/FMTunerController;->access$700(Lcom/htc/fm/FMTunerController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") illegalState! mState("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v6}, Lcom/htc/fm/FMTunerController;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") mCmdState("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") IsScanning("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    if-eqz v1, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-eq v1, v8, :cond_1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_1

    sget-boolean v4, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    if-nez v4, :cond_1

    .line 1453
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-static {v4}, Lcom/htc/fm/FMTunerController;->access$608(Lcom/htc/fm/FMTunerController;)I

    .line 1454
    const-string v4, "FMTunerController"

    const-string v5, "Too many illegalState, turn off FM Radio automatically"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mIllegalStateTimes:I
    invoke-static {v4}, Lcom/htc/fm/FMTunerController;->access$600(Lcom/htc/fm/FMTunerController;)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 1456
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v4}, Lcom/htc/fm/FMTunerController;->turnOff()V

    .line 1457
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    #setter for: Lcom/htc/fm/FMTunerController;->mIllegalStateTimes:I
    invoke-static {v4, v7}, Lcom/htc/fm/FMTunerController;->access$602(Lcom/htc/fm/FMTunerController;I)I

    goto/16 :goto_1

    .line 1468
    .end local v1           #cmdState:I
    :pswitch_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1469
    .local v2, looper:Landroid/os/Looper;
    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 1470
    iget-object v4, p0, Lcom/htc/fm/FMTunerController$VolumeHandler;->this$0:Lcom/htc/fm/FMTunerController;

    const/4 v5, -0x1

    #setter for: Lcom/htc/fm/FMTunerController;->mVolume:I
    invoke-static {v4, v5}, Lcom/htc/fm/FMTunerController;->access$702(Lcom/htc/fm/FMTunerController;I)I

    .line 1471
    const-string v4, "FMTunerController"

    const-string v5, "[FMTunerController][FMTuner] VolumeHandler quit"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
