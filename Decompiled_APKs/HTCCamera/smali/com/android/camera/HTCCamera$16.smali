.class Lcom/android/camera/HTCCamera$16;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$16;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "HTCCamera"

    const-string v3, "Click button to filmstrip"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera$16;->this$0:Lcom/android/camera/HTCCamera;

    iget v2, v2, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v2, v4, :cond_1

    const-string v2, "HTCCamera"

    const-string v3, "Press filmstrip button when focusing, cancel focus"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera$16;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera$16;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v4, :cond_3

    const-string v2, "HTCCamera"

    const-string v3, "End - Return to album after pressing filmstrip button"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "FROM_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "preview_mode"

    const-string v3, "filmstrip"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/camera/HTCCamera$16;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera$16;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->finish()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1200()Z

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera$16;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera$16;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera$16;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$3700(Lcom/android/camera/HTCCamera;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HTCCamera"

    const-string v3, "Block Capture UI - press filmstrip button"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    goto :goto_0

    :cond_3
    const-string v2, "HTCCamera"

    const-string v3, "Start - Go to album after pressing filmstrip button"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera$16;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/HTCCamera$16;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_4

    const-string v2, "capture_mode"

    const-string v3, "camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera$16;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "image/jpeg"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "preview_mode"

    const-string v3, "filmstrip"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera$16;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start - Go to album after pressing filmstrip button : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "capture_mode"

    const-string v3, "comcorder"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method
