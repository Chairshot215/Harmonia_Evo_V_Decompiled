.class Lcom/android/camera/CameraThread$7;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->setAecAwbLock(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$isLocked:Z


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$7;->this$0:Lcom/android/camera/CameraThread;

    iput-boolean p2, p0, Lcom/android/camera/CameraThread$7;->val$isLocked:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread$7;->this$0:Lcom/android/camera/CameraThread;

    iget-boolean v1, p0, Lcom/android/camera/CameraThread$7;->val$isLocked:Z

    #calls: Lcom/android/camera/CameraThread;->setAecAwbLockInternal(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$4500(Lcom/android/camera/CameraThread;Z)V

    return-void
.end method
