.class public Lcom/htc/store/util/SyncUtils;
.super Ljava/lang/Object;
.source "SyncUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAutoSyncForHtcHub(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 13
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-static {p0}, Lcom/htc/cscore/util/CSSyncUtilities;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 15
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 16
    const-string v1, "com.htc.store.provider.ContentProvider"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 21
    .end local v0           #account:Landroid/accounts/Account;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
