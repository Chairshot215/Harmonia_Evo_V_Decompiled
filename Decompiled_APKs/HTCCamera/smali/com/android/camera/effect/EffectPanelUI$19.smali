.class Lcom/android/camera/effect/EffectPanelUI$19;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;


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

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$19;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Lcom/android/camera/widget/SlidingPanel;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$19;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "EffectPanel.Open"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onOpening(Lcom/android/camera/widget/SlidingPanel;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$19;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->disableTouchFocus()V

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->disableSensorFocus()V

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$19;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$19;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/4 v5, 0x0

    const/16 v6, 0x1388

    move v4, v3

    move v7, v2

    #calls: Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z
    invoke-static/range {v0 .. v7}, Lcom/android/camera/effect/EffectPanelUI;->access$1800(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "EffectPanel.Opening"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    return-void
.end method
