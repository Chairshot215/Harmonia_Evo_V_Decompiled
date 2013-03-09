.class Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$3;
.super Ljava/lang/Thread;
.source "SetupFaceLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;


# direct methods
.method constructor <init>(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$3;->this$0:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$3;->this$0:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    invoke-static {}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->access$400()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$3;->this$0:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    #getter for: Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;
    invoke-static {v2}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->access$500(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)Lcom/android/facelockutil/Preview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/facelockutil/Preview;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$3;->this$0:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    #getter for: Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;
    invoke-static {v3}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->access$500(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)Lcom/android/facelockutil/Preview;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/facelockutil/Preview;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    iget-object v4, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$3;->this$0:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    #getter for: Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;
    invoke-static {v4}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->access$500(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)Lcom/android/facelockutil/Preview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/facelockutil/Preview;->getPreviewRotation()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/facelockutil/FaceLockUtil;->setupEnroll([BIII)Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    move-result-object v1

    #setter for: Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mEnrollState:Lcom/android/facelockutil/FaceLockUtil$EnrollState;
    invoke-static {v0, v1}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->access$302(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;Lcom/android/facelockutil/FaceLockUtil$EnrollState;)Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    .line 544
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$3;->this$0:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    #getter for: Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mEnrollState:Lcom/android/facelockutil/FaceLockUtil$EnrollState;
    invoke-static {v0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->access$300(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    move-result-object v0

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->FACE:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$3;->this$0:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mLastFrameTime:J
    invoke-static {v0, v1, v2}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->access$602(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;J)J

    .line 548
    :cond_0
    invoke-static {}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->access$700()Z

    move-result v0

    if-nez v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$3;->this$0:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    #getter for: Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->access$900(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$3;->this$0:Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    #getter for: Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mEnrollRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->access$800(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 550
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    #calls: Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->setFinalize(ZZ)Z
    invoke-static {v0, v1}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->access$1000(ZZ)Z

    .line 551
    return-void
.end method
