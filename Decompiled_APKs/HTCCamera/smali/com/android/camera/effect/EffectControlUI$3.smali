.class Lcom/android/camera/effect/EffectControlUI$3;
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

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$3;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 5

    const/4 v4, 0x0

    check-cast p1, Lcom/android/camera/effect/EffectEvent;

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectEvent;->getEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/effect/IEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$3;->this$0:Lcom/android/camera/effect/EffectControlUI;

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI$3;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1}, Lcom/android/camera/effect/EffectControlUI;->access$200(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_PreviousEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectControlUI;->access$402(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$3;->this$0:Lcom/android/camera/effect/EffectControlUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectControlUI;->access$202(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$3;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z
    invoke-static {v0}, Lcom/android/camera/effect/EffectControlUI;->access$500(Lcom/android/camera/effect/EffectControlUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$3;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "EffectControl.VisibilityChanged"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$3;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z
    invoke-static {v0, v4}, Lcom/android/camera/effect/EffectControlUI;->access$502(Lcom/android/camera/effect/EffectControlUI;Z)Z

    :cond_0
    return-void
.end method
