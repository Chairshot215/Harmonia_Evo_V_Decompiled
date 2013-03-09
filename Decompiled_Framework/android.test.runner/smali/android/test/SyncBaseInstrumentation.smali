.class public Landroid/test/SyncBaseInstrumentation;
.super Landroid/test/InstrumentationTestCase;
.source "SyncBaseInstrumentation.java"


# static fields
.field private static final MAX_TIME_FOR_SYNC_IN_MINS:I = 0x14


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field private mTargetContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelSyncsandDisableAutoSync()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    invoke-static {v1, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->setUp()V

    invoke-virtual {p0}, Landroid/test/SyncBaseInstrumentation;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/SyncBaseInstrumentation;->mTargetContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/test/SyncBaseInstrumentation;->mTargetContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/test/SyncBaseInstrumentation;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method protected syncProvider(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v7, "ignore_settings"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Landroid/accounts/Account;

    const-string v7, "com.google"

    invoke-direct {v0, p2, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p3, v4}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/32 v7, 0x124f80

    add-long v2, v5, v7

    const/4 v1, 0x0

    :goto_0
    const/4 v7, 0x2

    if-ge v1, v7, :cond_0

    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {v0, p3}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
