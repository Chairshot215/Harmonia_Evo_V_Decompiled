.class Lcom/android/camera/effect/EffectPanelUI$17;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectPanelUI;->initializeUI()V
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

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$17;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/android/camera/widget/SlidingPanel;)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$17;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    const-string v2, "EffectPanel.Closed"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->enableTouchFocus(Z)V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableSensorFocus()V

    return-void
.end method

.method public onClosing(Lcom/android/camera/widget/SlidingPanel;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$17;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/effect/EffectPanelUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectPanelUI;->access$1600(Lcom/android/camera/effect/EffectPanelUI;I)V

    return-void
.end method
