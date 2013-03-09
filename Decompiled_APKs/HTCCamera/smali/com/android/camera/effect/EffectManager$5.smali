.class Lcom/android/camera/effect/EffectManager$5;
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

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 7

    iget-object v5, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;
    invoke-static {v5}, Lcom/android/camera/effect/EffectManager;->access$1000(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectList;->getAllEffects()[Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;
    invoke-static {v5}, Lcom/android/camera/effect/EffectManager;->access$1100(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectList;->getAllEffects()[Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    const/4 v6, 0x0

    #setter for: Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z
    invoke-static {v5, v6}, Lcom/android/camera/effect/EffectManager;->access$1202(Lcom/android/camera/effect/EffectManager;Z)Z

    return-void
.end method
