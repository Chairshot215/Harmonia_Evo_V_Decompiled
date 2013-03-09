.class Lcom/android/camera/effect/GpuEffectController$1;
.super Ljava/lang/Object;
.source "GpuEffectController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/GpuEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/GpuEffectController;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/GpuEffectController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/GpuEffectController$1;->this$0:Lcom/android/camera/effect/GpuEffectController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/effect/GpuEffectController$1;->this$0:Lcom/android/camera/effect/GpuEffectController;

    invoke-virtual {v1}, Lcom/android/camera/effect/GpuEffectController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/GpuEffectController$1;->this$0:Lcom/android/camera/effect/GpuEffectController;

    invoke-virtual {v0}, Lcom/android/camera/effect/GpuEffectController;->clearEffect()V

    :cond_0
    return-void
.end method
