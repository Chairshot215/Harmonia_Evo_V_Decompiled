.class public Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadSceneReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver$SaveSceneThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListPicker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    const-string v2, "ListPicker"

    const-string v3, "DownloadSceneReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.htc.home.personalize.SceneProvider.ACTION_INIT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    :goto_0
    return-void

    .line 20
    :cond_0
    new-instance v1, Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver$SaveSceneThread;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver$SaveSceneThread;-><init>(Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 21
    .local v1, saveSceneThread:Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver$SaveSceneThread;
    invoke-virtual {v1}, Lcom/htc/home/personalize/SceneProvider/DownloadSceneReceiver$SaveSceneThread;->start()V

    goto :goto_0
.end method
