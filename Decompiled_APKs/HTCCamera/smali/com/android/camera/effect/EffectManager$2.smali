.class Lcom/android/camera/effect/EffectManager$2;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/android/camera/effect/EffectList$OnEffectChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/EffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectChanged(Lcom/android/camera/effect/EffectList;Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    #setter for: Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$602(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;)V
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$400(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->updateSelfTimerState(Lcom/android/camera/effect/EffectBase;)V
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$500(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$2;->this$0:Lcom/android/camera/effect/EffectManager;

    #setter for: Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$702(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    goto :goto_1
.end method
