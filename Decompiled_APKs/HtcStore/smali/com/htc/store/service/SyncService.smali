.class public Lcom/htc/store/service/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.cs"


# instance fields
.field private syncAdapter:Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/service/SyncService;->syncAdapter:Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.content.SyncAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/htc/store/service/SyncService;->syncAdapter:Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;

    invoke-virtual {v1}, Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 26
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 17
    new-instance v0, Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;

    invoke-direct {v0, p0}, Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/service/SyncService;->syncAdapter:Lcom/htc/store/module/syncadapter/HTCHubSyncAdapter;

    .line 18
    return-void
.end method
