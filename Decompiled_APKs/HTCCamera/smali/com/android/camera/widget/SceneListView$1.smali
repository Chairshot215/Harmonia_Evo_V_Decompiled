.class Lcom/android/camera/widget/SceneListView$1;
.super Ljava/lang/Object;
.source "SceneListView.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/SceneListView;
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

    iput-object p1, p0, Lcom/android/camera/widget/SceneListView$1;->this$0:Lcom/android/camera/widget/SceneListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    check-cast p1, Lcom/android/camera/effect/EffectEvent;

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectEvent;->getEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    instance-of v1, v0, Lcom/android/camera/effect/IScene;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView$1;->this$0:Lcom/android/camera/widget/SceneListView;

    #getter for: Lcom/android/camera/widget/SceneListView;->mSceneMenuAdapter:Lcom/android/camera/effect/SceneMenuAdapter;
    invoke-static {v1}, Lcom/android/camera/widget/SceneListView;->access$000(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/SceneMenuAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView$1;->this$0:Lcom/android/camera/widget/SceneListView;

    #getter for: Lcom/android/camera/widget/SceneListView;->mSceneMenuAdapter:Lcom/android/camera/effect/SceneMenuAdapter;
    invoke-static {v1}, Lcom/android/camera/widget/SceneListView;->access$000(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/SceneMenuAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/SceneMenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
