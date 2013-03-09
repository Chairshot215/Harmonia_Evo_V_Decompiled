.class Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$ClearAllScenes;
.super Ljava/lang/Thread;
.source "UpdateSceneReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearAllScenes"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$ClearAllScenes;->this$0:Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$ClearAllScenes;->mContext:Landroid/content/Context;

    .line 119
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 122
    iget-object v10, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$ClearAllScenes;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v2

    .line 123
    .local v2, mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual {v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v7

    .line 124
    .local v7, sceneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 125
    .local v8, sceneSize:I
    new-array v6, v8, [I

    .line 126
    .local v6, sceneIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_3

    .line 128
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcSceneManager/scene/Scene;

    .line 129
    .local v5, scene:Lcom/htc/htcSceneManager/scene/Scene;
    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathPort()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, previewPathForPortrait:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Scene;->getPreviewPathLand()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, previewPathForLandscape:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, wallpaperPath:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 134
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, deleteScene:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 138
    .end local v0           #deleteScene:Ljava/io/File;
    :cond_0
    if-eqz v3, :cond_1

    .line 139
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .restart local v0       #deleteScene:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 143
    .end local v0           #deleteScene:Ljava/io/File;
    :cond_1
    if-eqz v9, :cond_2

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .restart local v0       #deleteScene:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 149
    .end local v0           #deleteScene:Ljava/io/File;
    :cond_2
    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v10

    aput v10, v6, v1

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v3           #previewPathForLandscape:Ljava/lang/String;
    .end local v4           #previewPathForPortrait:Ljava/lang/String;
    .end local v5           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v9           #wallpaperPath:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->removeScenes([I)I

    .line 153
    return-void
.end method
