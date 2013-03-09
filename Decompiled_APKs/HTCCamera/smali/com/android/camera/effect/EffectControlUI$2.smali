.class Lcom/android/camera/effect/EffectControlUI$2;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/EffectControlUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    check-cast p1, Lcom/android/camera/effect/EffectEvent;

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectEvent;->getEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    instance-of v2, v0, Lcom/android/camera/effect/IEffect;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z
    invoke-static {v2, v3}, Lcom/android/camera/effect/EffectControlUI;->access$102(Lcom/android/camera/effect/EffectControlUI;Z)Z

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2, v0}, Lcom/android/camera/effect/EffectControlUI;->access$202(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_PreviousEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$400(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    if-ne v2, v0, :cond_6

    move v2, v3

    :goto_1
    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_InitEffectFromControlBar:Z
    invoke-static {v5, v2}, Lcom/android/camera/effect/EffectControlUI;->access$302(Lcom/android/camera/effect/EffectControlUI;Z)Z

    instance-of v2, v0, Lcom/android/camera/effect/DistortionEffect;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z
    invoke-static {v2, v3}, Lcom/android/camera/effect/EffectControlUI;->access$502(Lcom/android/camera/effect/EffectControlUI;Z)Z

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #calls: Lcom/android/camera/effect/EffectControlUI;->showControls()V
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$600(Lcom/android/camera/effect/EffectControlUI;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/EffectControlCircle;->allowUserChangeCenterPoint(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lcom/android/camera/effect/DistortionEffect;

    invoke-virtual {v2}, Lcom/android/camera/effect/DistortionEffect;->getCenter()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/EffectControlCircle;->setBorderVisibility(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_InitEffectFromControlBar:Z
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$300(Lcom/android/camera/effect/EffectControlUI;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$800(Lcom/android/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v2

    check-cast v0, Lcom/android/camera/effect/DistortionEffect;

    invoke-virtual {v0}, Lcom/android/camera/effect/DistortionEffect;->getDistortion()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z
    invoke-static {v2, v4}, Lcom/android/camera/effect/EffectControlUI;->access$102(Lcom/android/camera/effect/EffectControlUI;Z)Z

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_InitEffectFromControlBar:Z
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$300(Lcom/android/camera/effect/EffectControlUI;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_InitEffectFromControlBar:Z
    invoke-static {v2, v4}, Lcom/android/camera/effect/EffectControlUI;->access$302(Lcom/android/camera/effect/EffectControlUI;Z)Z

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    iget-object v4, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_ControlBarProgress:I
    invoke-static {v4}, Lcom/android/camera/effect/EffectControlUI;->access$1200(Lcom/android/camera/effect/EffectControlUI;)I

    move-result v4

    #calls: Lcom/android/camera/effect/EffectControlUI;->onControlBarProgressChanged(I)V
    invoke-static {v2, v4}, Lcom/android/camera/effect/EffectControlUI;->access$1300(Lcom/android/camera/effect/EffectControlUI;I)V

    :cond_3
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$500(Lcom/android/camera/effect/EffectControlUI;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_IsToastShown:Z
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$000(Lcom/android/camera/effect/EffectControlUI;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    const v4, 0x7f0a0149

    invoke-virtual {v2, v4}, Lcom/android/camera/HTCCamera;->showToast(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/android/camera/effect/EffectControlUI;->access$800(Lcom/android/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    #calls: Lcom/android/camera/effect/EffectControlUI;->calcEffectRadius(I)I
    invoke-static {v4, v5}, Lcom/android/camera/effect/EffectControlUI;->access$1400(Lcom/android/camera/effect/EffectControlUI;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_IsToastShown:Z
    invoke-static {v2, v1}, Lcom/android/camera/effect/EffectControlUI;->access$002(Lcom/android/camera/effect/EffectControlUI;Z)Z

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$500(Lcom/android/camera/effect/EffectControlUI;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v2

    new-instance v4, Lcom/android/camera/OneValueEvent;

    const-string v5, "EffectControl.VisibilityChanged"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto/16 :goto_0

    :cond_6
    move v2, v4

    goto/16 :goto_1

    :cond_7
    instance-of v2, v0, Lcom/android/camera/effect/VignetteEffect;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z
    invoke-static {v2, v3}, Lcom/android/camera/effect/EffectControlUI;->access$502(Lcom/android/camera/effect/EffectControlUI;Z)Z

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #calls: Lcom/android/camera/effect/EffectControlUI;->showControls()V
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$600(Lcom/android/camera/effect/EffectControlUI;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/EffectControlCircle;->allowUserChangeCenterPoint(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #calls: Lcom/android/camera/effect/EffectControlUI;->getCenterPointOnScreenForDriver()Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/camera/effect/EffectControlUI;->access$900(Lcom/android/camera/effect/EffectControlUI;)Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/EffectControlCircle;->setBorderVisibility(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_InitEffectFromControlBar:Z
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$300(Lcom/android/camera/effect/EffectControlUI;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$800(Lcom/android/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    check-cast v0, Lcom/android/camera/effect/VignetteEffect;

    invoke-virtual {v0}, Lcom/android/camera/effect/VignetteEffect;->getRadius()I

    move-result v6

    #calls: Lcom/android/camera/effect/EffectControlUI;->calcControlBarProgress(I)I
    invoke-static {v5, v6}, Lcom/android/camera/effect/EffectControlUI;->access$1000(Lcom/android/camera/effect/EffectControlUI;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_2

    :cond_8
    instance-of v2, v0, Lcom/android/camera/effect/DepthOfFieldEffect;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z
    invoke-static {v2, v3}, Lcom/android/camera/effect/EffectControlUI;->access$502(Lcom/android/camera/effect/EffectControlUI;Z)Z

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #calls: Lcom/android/camera/effect/EffectControlUI;->showControls()V
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$600(Lcom/android/camera/effect/EffectControlUI;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/EffectControlCircle;->allowUserChangeCenterPoint(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lcom/android/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v2}, Lcom/android/camera/effect/DepthOfFieldEffect;->getCenter()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/EffectControlCircle;->setBorderVisibility(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_InitEffectFromControlBar:Z
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$300(Lcom/android/camera/effect/EffectControlUI;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$800(Lcom/android/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    check-cast v0, Lcom/android/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v0}, Lcom/android/camera/effect/DepthOfFieldEffect;->getRadius()I

    move-result v6

    #calls: Lcom/android/camera/effect/EffectControlUI;->calcControlBarProgress(I)I
    invoke-static {v5, v6}, Lcom/android/camera/effect/EffectControlUI;->access$1000(Lcom/android/camera/effect/EffectControlUI;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_2

    :cond_9
    instance-of v2, v0, Lcom/android/camera/effect/DotsEffect;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z
    invoke-static {v2, v3}, Lcom/android/camera/effect/EffectControlUI;->access$502(Lcom/android/camera/effect/EffectControlUI;Z)Z

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #calls: Lcom/android/camera/effect/EffectControlUI;->showControls()V
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$600(Lcom/android/camera/effect/EffectControlUI;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/android/camera/widget/EffectControlCircle;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_InitEffectFromControlBar:Z
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$300(Lcom/android/camera/effect/EffectControlUI;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$800(Lcom/android/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v2

    check-cast v0, Lcom/android/camera/effect/DotsEffect;

    invoke-virtual {v0}, Lcom/android/camera/effect/DotsEffect;->getDotSize()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_2

    :cond_a
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z
    invoke-static {v2, v4}, Lcom/android/camera/effect/EffectControlUI;->access$502(Lcom/android/camera/effect/EffectControlUI;Z)Z

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_InitEffectFromControlBar:Z
    invoke-static {v2, v4}, Lcom/android/camera/effect/EffectControlUI;->access$302(Lcom/android/camera/effect/EffectControlUI;Z)Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$2;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #calls: Lcom/android/camera/effect/EffectControlUI;->hideControls()V
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$1100(Lcom/android/camera/effect/EffectControlUI;)V

    goto/16 :goto_2
.end method
