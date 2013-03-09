.class Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver$SaveSceneThread;
.super Ljava/lang/Thread;
.source "DownloadSceneReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveSceneThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver$SaveSceneThread;->this$0:Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver$SaveSceneThread;->mContext:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver$SaveSceneThread;->mIntent:Landroid/content/Intent;

    .line 33
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 39
    const-string v1, "ListPicker"

    const-string v2, "manager.addDownloadScene"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v1, p0, Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver$SaveSceneThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v0

    .line 41
    .local v0, manager:Lcom/htc/htcSceneManager/scene/SceneManager;
    iget-object v1, p0, Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver$SaveSceneThread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->addDownloadScene(Landroid/content/Intent;)V

    .line 42
    iput-object v3, p0, Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver$SaveSceneThread;->mContext:Landroid/content/Context;

    .line 43
    iput-object v3, p0, Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver$SaveSceneThread;->mIntent:Landroid/content/Intent;

    .line 44
    return-void
.end method
