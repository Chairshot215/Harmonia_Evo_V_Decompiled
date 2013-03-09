.class public Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BuilderSceneDownloadReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "BuilderSceneDownloadReceiver"

    sput-object v0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 29
    sget-object v0, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver$DownloadBuilderSceneComplete;-><init>(Lcom/htc/home/personalize/scene/BuilderSceneDownloadReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    return-void
.end method
