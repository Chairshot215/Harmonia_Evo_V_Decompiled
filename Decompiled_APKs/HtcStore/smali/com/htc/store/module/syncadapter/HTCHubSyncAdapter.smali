.class public Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "HTCHubSyncAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 24
    iput-object p1, p0, Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 6
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    const/4 v5, 0x0

    .line 31
    const-string v2, "force"

    invoke-virtual {p2, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 35
    .local v0, forceSync:Z
    if-eqz v0, :cond_0

    .line 36
    iget-object v2, p0, Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.store.provider.ContentProvider"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.htc.cs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    sget-object v2, Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "HTC Store onPerformSync.."

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.store.start.sync"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
