.class Lcom/android/camera/SnapboothThread$2;
.super Ljava/lang/Object;
.source "SnapboothThread.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SnapboothThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SnapboothThread;


# direct methods
.method constructor <init>(Lcom/android/camera/SnapboothThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SnapboothThread$2;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 2

    const-string v0, "SnapboothThread"

    const-string v1, "Got ErrorCallback !!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const-string v0, "SnapboothThread"

    const-string v1, "Camera.CAMERA_ERROR_SERVER_DIED"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread$2;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v0}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SnapboothThread"

    const-string v1, "Got ErrorCallback, Camera app finished"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread$2;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v0}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->finish()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string v0, "SnapboothThread"

    const-string v1, "Camera.CAMERA_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "SnapboothThread"

    const-string v1, "Unknown error"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
