.class Lcom/android/camera/effect/EffectManager$7;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


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

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectManager;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectManager;->getCurrentScene()Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/effect/EffectManager;->access$1300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/effect/EffectManager;->access$1300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/effect/EffectBase;->prepareCancel(Lcom/android/camera/effect/EffectBase;I)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/effect/EffectManager;->access$1400(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/effect/EffectManager;->access$1400(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/effect/EffectBase;->prepareCancel(Lcom/android/camera/effect/EffectBase;I)V

    :cond_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->reset(Z)V
    invoke-static {v2, v3}, Lcom/android/camera/effect/EffectManager;->access$900(Lcom/android/camera/effect/EffectManager;Z)V

    return-void
.end method
