.class Lcom/android/camera/effect/PortraitScene$2;
.super Ljava/lang/Object;
.source "PortraitScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/PortraitScene;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/PortraitScene;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/PortraitScene;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/PortraitScene$2;->this$0:Lcom/android/camera/effect/PortraitScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/effect/PortraitScene$2;->this$0:Lcom/android/camera/effect/PortraitScene;

    invoke-virtual {v1}, Lcom/android/camera/effect/PortraitScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ola-bs-options"

    const-string v2, "034"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_0
    return-void
.end method
