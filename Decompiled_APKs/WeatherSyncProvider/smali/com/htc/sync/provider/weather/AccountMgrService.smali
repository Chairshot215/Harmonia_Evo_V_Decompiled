.class public Lcom/htc/sync/provider/weather/AccountMgrService;
.super Landroid/app/Service;
.source "AccountMgrService.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_PREFIX:Ljava/lang/String; = "[AccountMgrService] "

.field private static final LOG_TAG:Ljava/lang/String; = "WSP"


# instance fields
.field private accountAuthenticator:Lcom/htc/sync/provider/weather/AccountAuthenticator;

.field private syncAdapter:Lcom/htc/sync/provider/weather/SyncAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/htc/sync/provider/weather/AccountMgrService;->accountAuthenticator:Lcom/htc/sync/provider/weather/AccountAuthenticator;

    .line 13
    iput-object v0, p0, Lcom/htc/sync/provider/weather/AccountMgrService;->syncAdapter:Lcom/htc/sync/provider/weather/SyncAdapter;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/htc/sync/provider/weather/AccountMgrService;->accountAuthenticator:Lcom/htc/sync/provider/weather/AccountAuthenticator;

    invoke-virtual {v1}, Lcom/htc/sync/provider/weather/AccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 33
    :goto_0
    return-object v1

    .line 29
    :cond_0
    const-string v1, "android.content.SyncAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/htc/sync/provider/weather/AccountMgrService;->syncAdapter:Lcom/htc/sync/provider/weather/SyncAdapter;

    invoke-virtual {v1}, Lcom/htc/sync/provider/weather/SyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 19
    new-instance v0, Lcom/htc/sync/provider/weather/AccountAuthenticator;

    invoke-direct {v0, p0}, Lcom/htc/sync/provider/weather/AccountAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sync/provider/weather/AccountMgrService;->accountAuthenticator:Lcom/htc/sync/provider/weather/AccountAuthenticator;

    .line 20
    new-instance v0, Lcom/htc/sync/provider/weather/SyncAdapter;

    invoke-direct {v0, p0}, Lcom/htc/sync/provider/weather/SyncAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sync/provider/weather/AccountMgrService;->syncAdapter:Lcom/htc/sync/provider/weather/SyncAdapter;

    .line 21
    return-void
.end method
