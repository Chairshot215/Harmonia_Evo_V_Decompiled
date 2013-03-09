.class Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;
.super Lcom/google/android/common/LoggingThreadedSyncAdapter;
.source "MailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncAdapterImpl"
.end annotation


# instance fields
.field private volatile mMailEngine:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/common/LoggingThreadedSyncAdapter;-><init>(Landroid/content/Context;ZZ)V

    .line 45
    return-void
.end method


# virtual methods
.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .locals 4
    .parameter "bytesSent"
    .parameter "bytesReceived"
    .parameter "result"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;->mMailEngine:Lcom/google/android/gm/provider/MailEngine;

    if-eqz v0, :cond_0

    .line 50
    const v0, 0x318f9

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Gmail"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;->mMailEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailEngine;->getMailSync()Lcom/google/android/gm/provider/MailSync;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/google/android/gm/provider/MailSync;->getStats(Landroid/content/SyncResult;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 53
    :cond_0
    return-void
.end method

.method public onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 4
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 59
    invoke-static {}, Lcom/google/android/gm/provider/MailProvider;->getMailProvider()Lcom/google/android/gm/provider/MailProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineSync(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;->mMailEngine:Lcom/google/android/gm/provider/MailEngine;

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;->mMailEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v1, p5, p2}, Lcom/google/android/gm/provider/MailEngine;->performBackgroundSync(Landroid/content/SyncResult;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "Gmail"

    const-string v2, "Mail sync failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p5, Landroid/content/SyncResult;->databaseError:Z

    goto :goto_0
.end method

.method public onSyncCanceled(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;->mMailEngine:Lcom/google/android/gm/provider/MailEngine;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSyncAdapterService$SyncAdapterImpl;->mMailEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->onSyncCanceled()V

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/common/LoggingThreadedSyncAdapter;->onSyncCanceled(Ljava/lang/Thread;)V

    .line 75
    return-void
.end method
