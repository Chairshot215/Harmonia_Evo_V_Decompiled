.class Lcom/htc/htcSceneManager/scene/SceneManager$1;
.super Ljava/lang/Object;
.source "SceneManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList(Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/htcSceneManager/scene/Scene;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcSceneManager/scene/SceneManager;


# direct methods
.method constructor <init>(Lcom/htc/htcSceneManager/scene/SceneManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/htcSceneManager/scene/SceneManager$1;->this$0:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/htcSceneManager/scene/Scene;Lcom/htc/htcSceneManager/scene/Scene;)I
    .locals 5

    iget-object v2, p0, Lcom/htc/htcSceneManager/scene/SceneManager$1;->this$0:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getSceneType()Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    move-result-object v3

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/Scene;->getSceneType()Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->CompareSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getSceneType()Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v2

    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/htcSceneManager/scene/Scene;

    check-cast p2, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-virtual {p0, p1, p2}, Lcom/htc/htcSceneManager/scene/SceneManager$1;->compare(Lcom/htc/htcSceneManager/scene/Scene;Lcom/htc/htcSceneManager/scene/Scene;)I

    move-result v0

    return v0
.end method
