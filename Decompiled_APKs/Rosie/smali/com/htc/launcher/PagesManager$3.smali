.class Lcom/htc/launcher/PagesManager$3;
.super Ljava/lang/Thread;
.source "PagesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/PagesManager;->setHomeIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/PagesManager;


# direct methods
.method constructor <init>(Lcom/htc/launcher/PagesManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 208
    iget-object v2, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #calls: Lcom/htc/launcher/PagesManager;->getSceneManager()Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-static {v2}, Lcom/htc/launcher/PagesManager;->access$000(Lcom/htc/launcher/PagesManager;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentSceneId()I

    move-result v0

    .line 209
    .local v0, currentSceneId:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #getter for: Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/launcher/PagesManager;->access$100(Lcom/htc/launcher/PagesManager;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 213
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #getter for: Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/launcher/PagesManager;->access$100(Lcom/htc/launcher/PagesManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #getter for: Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/launcher/PagesManager;->access$100(Lcom/htc/launcher/PagesManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;

    iget v2, v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->id:I

    if-ne v0, v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #getter for: Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/launcher/PagesManager;->access$100(Lcom/htc/launcher/PagesManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;

    iget-object v4, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #getter for: Lcom/htc/launcher/PagesManager;->mHomeIndex:I
    invoke-static {v4}, Lcom/htc/launcher/PagesManager;->access$400(Lcom/htc/launcher/PagesManager;)I

    move-result v4

    iput v4, v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->homeIndex:I

    .line 216
    iget-object v4, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #getter for: Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/launcher/PagesManager;->access$100(Lcom/htc/launcher/PagesManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;

    iget v2, v2, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->id:I

    #calls: Lcom/htc/launcher/PagesManager;->updatePagesInfosInDb(II)V
    invoke-static {v4, v5, v2}, Lcom/htc/launcher/PagesManager;->access$300(Lcom/htc/launcher/PagesManager;II)V

    .line 213
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_2
    monitor-exit v3

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
