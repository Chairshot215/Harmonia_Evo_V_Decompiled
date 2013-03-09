.class Lcom/android/camera/OnScreenPreference$5;
.super Ljava/lang/Object;
.source "OnScreenPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/OnScreenPreference;->show_reset_dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/OnScreenPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/OnScreenPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/RequestEvent;

    const-string v2, "Request.ResetToDefault"

    invoke-direct {v1, v2}, Lcom/android/camera/RequestEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    sput-boolean v3, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    invoke-static {v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->setDefault(Z)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/HTCCamera;->setTurnOnTorch(Z)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isWideScreen()Z

    move-result v1

    #setter for: Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z
    invoke-static {v0, v1}, Lcom/android/camera/OnScreenPreference;->access$402(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z
    invoke-static {v0, v3}, Lcom/android/camera/OnScreenPreference;->access$502(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z
    invoke-static {v0, v3}, Lcom/android/camera/OnScreenPreference;->access$602(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z
    invoke-static {v0, v3}, Lcom/android/camera/OnScreenPreference;->access$702(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z
    invoke-static {v0, v3}, Lcom/android/camera/OnScreenPreference;->access$802(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bShutterSound:Z
    invoke-static {v0, v3}, Lcom/android/camera/OnScreenPreference;->access$902(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z
    invoke-static {v0, v4}, Lcom/android/camera/OnScreenPreference;->access$1002(Lcom/android/camera/OnScreenPreference;Z)Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z
    invoke-static {v0, v3}, Lcom/android/camera/OnScreenPreference;->access$1102(Lcom/android/camera/OnScreenPreference;Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x38

    if-eq v0, v1, :cond_4

    const-string v0, "OnScreenPreference"

    const-string v1, "REVIEW_DURATION - 3s - set Default"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v1, "3s"

    #setter for: Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/OnScreenPreference;->access$1202(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHWShareButton()Z

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v1, "3s"

    #setter for: Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/OnScreenPreference;->access$1202(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v1, "mpo"

    #setter for: Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/OnScreenPreference;->access$1302(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v1, "3gpp"

    #setter for: Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/OnScreenPreference;->access$1402(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->restartCamera()V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    const-string v1, "pref_camera_record_with_audio"

    invoke-static {v0, v1, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetIndicatorLayout()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetForDOT()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isSelfTimerOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    const-string v1, "pref_camera_self_timer"

    const-string v2, "none"

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "SelfTimer.Changed"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_2
    sget-boolean v0, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/OnScreenPreference;->access$1500(Lcom/android/camera/OnScreenPreference;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_3
    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v1, "[reset_default]complete"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "OnScreenPreference"

    const-string v1, "REVIEW_DURATION - nr - set Default"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v1, "no_review"

    #setter for: Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/OnScreenPreference;->access$1202(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->reloadSettings()V

    goto/16 :goto_1
.end method
