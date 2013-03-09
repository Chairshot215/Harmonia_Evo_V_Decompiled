.class Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScenePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/scene/ScenePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSceneListReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/scene/ScenePicker;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;Lcom/htc/home/personalize/scene/ScenePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1277
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1281
    const-string v4, "ScenePicker"

    const-string v5, "UpdateSceneListReceiver"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-static {}, Lcom/htc/home/personalize/scene/ScenePicker;->access$1600()Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/htcSceneManager/scene/SceneManager;->setSceneUpdate(Z)V

    .line 1283
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v4, v4, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->update()V

    .line 1285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1287
    const-string v4, "ScenePicker"

    const-string v5, "UpdateSceneListReceiver receive no action..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :goto_0
    return-void

    .line 1291
    :cond_0
    const-string v4, "scene_changed_type"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1292
    .local v1, changeType:I
    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    .line 1293
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v4, v4, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    .line 1303
    :cond_1
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurScenePos:I
    invoke-static {v5}, Lcom/htc/home/personalize/scene/ScenePicker;->access$600(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v6, v6, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    #calls: Lcom/htc/home/personalize/scene/ScenePicker;->updateSceneTitle(I)V
    invoke-static {v4, v5}, Lcom/htc/home/personalize/scene/ScenePicker;->access$700(Lcom/htc/home/personalize/scene/ScenePicker;I)V

    goto :goto_0

    .line 1295
    :cond_2
    const-string v4, "scene_changed_id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 1296
    .local v3, sceneIds:[I
    if-eqz v3, :cond_1

    .line 1297
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 1298
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v4, v4, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateSceneListReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v5, v5, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    aget v6, v3, v2

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSceneIndexById(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyUpdateItem(I)V

    .line 1297
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
