.class Lcom/android/camera/effect/EffectManager$6;
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

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$1000(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectList;->updateCurrentEffects()V

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$1100(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectList;->updateCurrentEffects()V

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    iget-object v4, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v4}, Lcom/android/camera/effect/EffectManager;->access$1300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v4

    #setter for: Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v3, v4}, Lcom/android/camera/effect/EffectManager;->access$102(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    iget-object v4, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v4}, Lcom/android/camera/effect/EffectManager;->access$1300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v4

    #setter for: Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v3, v4}, Lcom/android/camera/effect/EffectManager;->access$302(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$000(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$1000(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/android/camera/effect/NoneEffect;

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_MainCameraModeScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$600(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    :goto_2
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$1100(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    :goto_3
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;)V
    invoke-static {v3, v0}, Lcom/android/camera/effect/EffectManager;->access$400(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->updateSelfTimerState(Lcom/android/camera/effect/EffectBase;)V
    invoke-static {v3, v0}, Lcom/android/camera/effect/EffectManager;->access$500(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$200(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_MainVideoModeScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$700(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$1100(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v4}, Lcom/android/camera/effect/EffectManager;->access$1400(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    iget-object v4, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v4}, Lcom/android/camera/effect/EffectManager;->access$1300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v4

    #setter for: Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v3, v4}, Lcom/android/camera/effect/EffectManager;->access$002(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    iget-object v4, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v4}, Lcom/android/camera/effect/EffectManager;->access$1300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v4

    #setter for: Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v3, v4}, Lcom/android/camera/effect/EffectManager;->access$202(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$100(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    :goto_4
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$1000(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$1100(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v4}, Lcom/android/camera/effect/EffectManager;->access$1400(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$6;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    goto :goto_4
.end method
