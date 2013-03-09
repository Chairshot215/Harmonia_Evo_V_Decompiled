.class Lcom/android/camera/effect/EffectPanelUI$8;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/EffectPanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$8;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$8;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$8;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$8;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Lcom/android/camera/widget/OffsetRelativeLayout;
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$300(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/OffsetRelativeLayout;

    move-result-object v2

    #calls: Lcom/android/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v1, v2, v3, v3}, Lcom/android/camera/effect/EffectPanelUI;->access$800(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;ZZ)V

    goto :goto_0
.end method
