.class Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScenePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/scene/ScenePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateScenePreviewReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/scene/ScenePicker;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;Lcom/htc/home/personalize/scene/ScenePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1311
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1316
    .local v4, strAction:Ljava/lang/String;
    const-string v5, "com.htc.home.personalize.finishCreatePreview"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1317
    invoke-static {p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v0

    .line 1318
    .local v0, manager:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual {v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentSceneId()I

    move-result v1

    .line 1319
    .local v1, sceneId:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 1320
    const-string v5, "ScenePicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyUpdateItem+, sceneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v5, v5, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v5, v1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSceneIndexById(I)I

    move-result v2

    .line 1322
    .local v2, sceneIndex:I
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v5, v5, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v5, v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/home/personalize/scene/ScenePickerItem;

    .line 1324
    .local v3, sceneItem:Lcom/htc/home/personalize/scene/ScenePickerItem;
    if-eqz v3, :cond_1

    .line 1325
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setPreview(Landroid/graphics/Bitmap;)V

    .line 1329
    :goto_0
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v5, v5, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v5, v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyUpdateItem(I)V

    .line 1330
    const-string v5, "ScenePicker"

    const-string v6, "notifyUpdateItem- and set null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mIsPanelView:Z
    invoke-static {v5}, Lcom/htc/home/personalize/scene/ScenePicker;->access$100(Lcom/htc/home/personalize/scene/ScenePicker;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1333
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v5, v5, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    iget-object v6, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v6, v6, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v6, v2}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getSceneIndexById(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyUpdateItem(I)V

    .line 1340
    .end local v0           #manager:Lcom/htc/htcSceneManager/scene/SceneManager;
    .end local v1           #sceneId:I
    .end local v2           #sceneIndex:I
    .end local v3           #sceneItem:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_0
    :goto_1
    return-void

    .line 1327
    .restart local v0       #manager:Lcom/htc/htcSceneManager/scene/SceneManager;
    .restart local v1       #sceneId:I
    .restart local v2       #sceneIndex:I
    .restart local v3       #sceneItem:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_1
    const-string v5, "ScenePicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sceneItem is null, sceneIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1335
    :cond_2
    iget-object v5, p0, Lcom/htc/home/personalize/scene/ScenePicker$UpdateScenePreviewReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v5, v5, Lcom/htc/home/personalize/scene/ScenePicker;->mAdapter:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-virtual {v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
