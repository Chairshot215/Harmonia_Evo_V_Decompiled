.class Lcom/android/camera/effect/EffectPanelUI$15;
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

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    check-cast p1, Lcom/android/camera/OrientationEvent;

    invoke-virtual {p1}, Lcom/android/camera/OrientationEvent;->getNewUIOrientation()I

    move-result v8

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectListOrientation(I)V
    invoke-static {v0, v8}, Lcom/android/camera/effect/EffectPanelUI;->access$1200(Lcom/android/camera/effect/EffectPanelUI;I)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$500(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/SlidingPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$500(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/SlidingPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingPanel;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/4 v5, 0x0

    const/16 v6, 0x1388

    move v4, v3

    move v7, v2

    #calls: Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z
    invoke-static/range {v0 .. v7}, Lcom/android/camera/effect/EffectPanelUI;->access$1300(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContentPanel:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1400(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContentPanel:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1400(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :cond_1
    return-void
.end method
