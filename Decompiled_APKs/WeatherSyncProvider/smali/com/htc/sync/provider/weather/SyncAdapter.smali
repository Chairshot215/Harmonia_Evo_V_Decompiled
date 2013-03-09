.class public Lcom/htc/sync/provider/weather/SyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SyncAdapter.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_PREFIX:Ljava/lang/String; = "[SyncAdapter] "

.field private static final LOG_TAG:Ljava/lang/String; = "WSP"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sync/provider/weather/SyncAdapter;->context:Landroid/content/Context;

    .line 22
    iput-object p1, p0, Lcom/htc/sync/provider/weather/SyncAdapter;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 5
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    const/4 v4, 0x0

    .line 27
    const-string v2, "WSP"

    const-string v3, "[SyncAdapter] EVENT - ACCOUNT MANAGER"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v2, "isFromAlarm"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 30
    .local v1, isFromAlarm:Z
    if-nez v1, :cond_0

    .line 32
    iget-object v2, p0, Lcom/htc/sync/provider/weather/SyncAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/sync/provider/weather/Receiver;->scheduleSync(Landroid/content/Context;)V

    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 36
    .local v0, isAutoSync:Z
    const-string v2, "isWeatherAutoSync"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    iget-object v2, p0, Lcom/htc/sync/provider/weather/SyncAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v4, v4, v3}, Lcom/htc/util/weather/WSPUtility;->triggerSyncService(Landroid/content/Context;Ljava/lang/String;[Lcom/htc/util/weather/WSPRequest;I)V

    .line 40
    :cond_1
    return-void
.end method
