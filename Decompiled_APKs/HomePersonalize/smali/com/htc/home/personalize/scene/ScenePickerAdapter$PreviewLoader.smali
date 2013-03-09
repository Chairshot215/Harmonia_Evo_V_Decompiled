.class Lcom/htc/home/personalize/scene/ScenePickerAdapter$PreviewLoader;
.super Ljava/lang/Thread;
.source "ScenePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/scene/ScenePickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/scene/ScenePickerAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/scene/ScenePickerAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PreviewLoader;->this$0:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/scene/ScenePickerAdapter;Lcom/htc/home/personalize/scene/ScenePickerAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PreviewLoader;-><init>(Lcom/htc/home/personalize/scene/ScenePickerAdapter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 220
    .local v2, startTime:J
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 221
    invoke-static {}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->access$300()Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 222
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 223
    invoke-static {}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->access$400()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/scene/ScenePickerItem;

    .line 224
    .local v1, item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PreviewLoader;->this$0:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    #getter for: Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->access$500(Lcom/htc/home/personalize/scene/ScenePickerAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htcSceneManager/scene/Scene;

    const/4 v6, 0x1

    #calls: Lcom/htc/home/personalize/scene/ScenePickerAdapter;->getPanelViewBitmap(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Scene;Z)Landroid/graphics/Bitmap;
    invoke-static {v5, v4, v6}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->access$600(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/Scene;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setPreview(Landroid/graphics/Bitmap;)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v1           #item:Lcom/htc/home/personalize/scene/ScenePickerItem;
    :cond_0
    iget-object v4, p0, Lcom/htc/home/personalize/scene/ScenePickerAdapter$PreviewLoader;->this$0:Lcom/htc/home/personalize/scene/ScenePickerAdapter;

    #getter for: Lcom/htc/home/personalize/scene/ScenePickerAdapter;->mHandler:Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;
    invoke-static {v4}, Lcom/htc/home/personalize/scene/ScenePickerAdapter;->access$700(Lcom/htc/home/personalize/scene/ScenePickerAdapter;)Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/scene/ScenePickerAdapter$LauncherHandler;->sendEmptyMessage(I)Z

    .line 228
    const-string v4, "ScenePickerAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load preview image complete takes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method
