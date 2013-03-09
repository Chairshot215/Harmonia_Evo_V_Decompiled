.class Lcom/android/camera/component/ThumbnailUI$3;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ThumbnailUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$3;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$3;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getCurrentScene()Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/effect/BurstScene;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$3;->this$0:Lcom/android/camera/component/ThumbnailUI;

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI$3;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/component/ThumbnailUI;->access$400(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/camera/component/ThumbnailUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method
