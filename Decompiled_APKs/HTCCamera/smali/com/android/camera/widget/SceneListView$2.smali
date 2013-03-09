.class Lcom/android/camera/widget/SceneListView$2;
.super Ljava/lang/Object;
.source "SceneListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/SceneListView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SceneListView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/SceneListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SceneListView$2;->this$0:Lcom/android/camera/widget/SceneListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView$2;->this$0:Lcom/android/camera/widget/SceneListView;

    #getter for: Lcom/android/camera/widget/SceneListView;->m_EffectList:Lcom/android/camera/effect/EffectList;
    invoke-static {v1}, Lcom/android/camera/widget/SceneListView;->access$100(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/EffectList;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/camera/effect/EffectList;->getEffect(I)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView$2;->this$0:Lcom/android/camera/widget/SceneListView;

    #getter for: Lcom/android/camera/widget/SceneListView;->m_EffectManager:Lcom/android/camera/effect/EffectManager;
    invoke-static {v1}, Lcom/android/camera/widget/SceneListView;->access$200(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/EffectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectManager;->getCurrentScene()Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView$2;->this$0:Lcom/android/camera/widget/SceneListView;

    #getter for: Lcom/android/camera/widget/SceneListView;->m_EffectManager:Lcom/android/camera/effect/EffectManager;
    invoke-static {v1}, Lcom/android/camera/widget/SceneListView;->access$200(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/EffectManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectManager;->setCurrentScene(Lcom/android/camera/effect/EffectBase;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/SceneListView$2;->this$0:Lcom/android/camera/widget/SceneListView;

    #getter for: Lcom/android/camera/widget/SceneListView;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v1}, Lcom/android/camera/widget/SceneListView;->access$300(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/EventManager;

    move-result-object v1

    const-string v2, "SameMenuItem.Selected"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
