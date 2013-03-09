.class public Lcom/htc/sdm/sync/SDMSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SDMSyncAdapter.java"


# static fields
.field public static final INTENT_ACTION_START_SYNC_SERVICE:Ljava/lang/String; = "com.htc.sdm.sync.START_AUTOSYNC_SERVICE"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SDMSyncAdapter] "


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/sync/SDMSyncAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/htc/sdm/sync/SDMSyncAdapter;->context:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 2
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.sdm.sync.START_AUTOSYNC_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/sdm/sync/SDMSyncAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    return-void
.end method
