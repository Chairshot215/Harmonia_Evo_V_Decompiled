.class Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;
.super Ljava/lang/Thread;
.source "UpdateSceneReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "initSceneTranslateId"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSceneIds:[I

.field final synthetic this$0:Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;Landroid/content/Context;[I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "sceneIds"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->this$0:Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->mSceneIds:[I

    .line 66
    iput-object p2, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->mContext:Landroid/content/Context;

    .line 67
    iput-object p3, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->mSceneIds:[I

    .line 68
    return-void
.end method

.method private setAllTranslateId()V
    .locals 10

    .prologue
    .line 80
    invoke-static {}, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "setAllTranslateId"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v6, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v1

    .line 82
    .local v1, mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual {v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v4

    .line 83
    .local v4, sceneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 84
    .local v5, sceneSize:I
    new-array v3, v5, [I

    .line 85
    .local v3, sceneIds:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 86
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htcSceneManager/scene/Scene;

    .line 87
    .local v2, scene:Lcom/htc/htcSceneManager/scene/Scene;
    invoke-virtual {v2}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v6

    iget-object v7, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->this$0:Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;

    iget-object v8, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->getTranslateId(Landroid/content/Context;Ljava/lang/String;)I
    invoke-static {v7, v8, v9}, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->access$100(Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateTranslateId(II)V

    .line 88
    invoke-virtual {v2}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v6

    aput v6, v3, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v2           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {v1, v6, v3}, Lcom/htc/htcSceneManager/scene/SceneManager;->notifySceneChanged(I[I)V

    .line 92
    return-void
.end method

.method private setSceneTranslateId()V
    .locals 8

    .prologue
    .line 95
    invoke-static {}, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setSceneTranslateId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v4, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v1

    .line 97
    .local v1, mSceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    iget-object v4, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->mSceneIds:[I

    array-length v3, v4

    .line 98
    .local v3, sceneSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 99
    iget-object v4, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->mSceneIds:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v2

    .line 100
    .local v2, scene:Lcom/htc/htcSceneManager/scene/Scene;
    if-nez v2, :cond_0

    .line 101
    invoke-static {}, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is no scene with id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->mSceneIds:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v2}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->this$0:Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;

    iget-object v6, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->getTranslateId(Landroid/content/Context;Ljava/lang/String;)I
    invoke-static {v5, v6, v7}, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->access$100(Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/htc/htcSceneManager/scene/SceneManager;->updateTranslateId(II)V

    goto :goto_1

    .line 107
    .end local v2           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    :cond_1
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->mSceneIds:[I

    invoke-virtual {v1, v4, v5}, Lcom/htc/htcSceneManager/scene/SceneManager;->notifySceneChanged(I[I)V

    .line 108
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->mSceneIds:[I

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->setAllTranslateId()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->setSceneTranslateId()V

    goto :goto_0
.end method
