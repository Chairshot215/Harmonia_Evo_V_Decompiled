.class Lcom/android/camera/effect/EffectPanelUI$12;
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

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$12;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$12;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$12;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->initializeUI()V
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$900(Lcom/android/camera/effect/EffectPanelUI;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$12;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$500(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/SlidingPanel;

    move-result-object v0

    check-cast p1, Lcom/android/camera/UIRequestEvent;

    invoke-virtual {p1}, Lcom/android/camera/UIRequestEvent;->isAnimationNeeded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingPanel;->open(Z)V

    :cond_0
    return-void
.end method
