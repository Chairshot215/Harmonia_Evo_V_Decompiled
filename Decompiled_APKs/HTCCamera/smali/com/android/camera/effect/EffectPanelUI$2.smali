.class Lcom/android/camera/effect/EffectPanelUI$2;
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

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$2;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 5

    const/4 v4, 0x1

    check-cast p1, Lcom/android/camera/actionscreen/ActionScreenEvent;

    invoke-virtual {p1}, Lcom/android/camera/actionscreen/ActionScreenEvent;->getActionScreen()Lcom/android/camera/actionscreen/ActionScreen;

    move-result-object v0

    instance-of v2, v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$2;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    check-cast v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    #setter for: Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;
    invoke-static {v2, v0}, Lcom/android/camera/effect/EffectPanelUI;->access$002(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/actionscreen/CommonActionScreen;)Lcom/android/camera/actionscreen/CommonActionScreen;

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$2;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$2;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$100(Lcom/android/camera/effect/EffectPanelUI;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectManager;->getCurrentScene()Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/effect/BurstScene;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$2;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v3, p0, Lcom/android/camera/effect/EffectPanelUI$2;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Lcom/android/camera/widget/OffsetRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/effect/EffectPanelUI;->access$300(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/OffsetRelativeLayout;

    move-result-object v3

    #calls: Lcom/android/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v2, v3, v4, v4}, Lcom/android/camera/effect/EffectPanelUI;->access$400(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;ZZ)V

    :cond_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$2;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonContent()V
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$200(Lcom/android/camera/effect/EffectPanelUI;)V

    goto :goto_0
.end method
