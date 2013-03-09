.class public Lcom/htc/usage/net/AllAppLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AllAppLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_END:Ljava/lang/String; = "end"

.field private static final KEY_START:Ljava/lang/String; = "start"

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "template"

.field private static final TAG:Ljava/lang/String; = "AllAppLoader"


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter "statsService"
    .parameter "args"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/htc/usage/net/AllAppLoader;->mStatsService:Landroid/net/INetworkStatsService;

    .line 51
    iput-object p3, p0, Lcom/htc/usage/net/AllAppLoader;->mArgs:Landroid/os/Bundle;

    .line 52
    return-void
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;)Landroid/os/Bundle;
    .locals 4
    .parameter "template"

    .prologue
    .line 39
    const-string v1, "AllAppLoader"

    const-string v2, "buildArgs"

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    const-string v1, "start"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 43
    const-string v1, "end"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public loadInBackground()Landroid/net/NetworkStats;
    .locals 8

    .prologue
    .line 62
    const-string v0, "AllAppLoader"

    const-string v6, "loadInBackground"

    invoke-static {v0, v6}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/htc/usage/net/AllAppLoader;->mArgs:Landroid/os/Bundle;

    const-string v6, "template"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 64
    .local v1, template:Landroid/net/NetworkTemplate;
    iget-object v0, p0, Lcom/htc/usage/net/AllAppLoader;->mArgs:Landroid/os/Bundle;

    const-string v6, "start"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 65
    .local v2, start:J
    iget-object v0, p0, Lcom/htc/usage/net/AllAppLoader;->mArgs:Landroid/os/Bundle;

    const-string v6, "end"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 68
    .local v4, end:J
    :try_start_0
    iget-object v0, p0, Lcom/htc/usage/net/AllAppLoader;->mStatsService:Landroid/net/INetworkStatsService;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v7

    .line 70
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/htc/usage/net/AllAppLoader;->loadInBackground()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 83
    invoke-virtual {p0}, Lcom/htc/usage/net/AllAppLoader;->cancelLoad()Z

    .line 84
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 57
    invoke-virtual {p0}, Lcom/htc/usage/net/AllAppLoader;->forceLoad()V

    .line 58
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 77
    invoke-virtual {p0}, Lcom/htc/usage/net/AllAppLoader;->cancelLoad()Z

    .line 78
    return-void
.end method
