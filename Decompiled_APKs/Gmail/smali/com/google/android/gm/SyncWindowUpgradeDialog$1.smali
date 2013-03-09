.class Lcom/google/android/gm/SyncWindowUpgradeDialog$1;
.super Landroid/os/AsyncTask;
.source "SyncWindowUpgradeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/SyncWindowUpgradeDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/SyncWindowUpgradeDialog;


# direct methods
.method constructor <init>(Lcom/google/android/gm/SyncWindowUpgradeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/gm/SyncWindowUpgradeDialog$1;->this$0:Lcom/google/android/gm/SyncWindowUpgradeDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, [Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/SyncWindowUpgradeDialog$1;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    .line 57
    aget-object v2, p1, v10

    .line 58
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 59
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v9

    invoke-virtual {v9, v2, v10}, Lcom/google/android/gm/persistence/Persistence;->getCachedConfiguredGoogleAccounts(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 61
    .local v1, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v3

    .line 62
    .local v3, gm:Lcom/google/android/gm/provider/Gmail;
    invoke-static {v2}, Lcom/google/android/gm/provider/Gmail;->getDefaultConversationAgeDays(Landroid/content/Context;)J

    move-result-wide v7

    .line 64
    .local v7, targetAgeDays:J
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gm/provider/Gmail;->getSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v6

    .line 66
    .local v6, settings:Lcom/google/android/gm/provider/Gmail$Settings;
    invoke-virtual {v6}, Lcom/google/android/gm/provider/Gmail$Settings;->getConversationAgeDays()J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-gez v9, :cond_0

    .line 67
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gm/provider/Gmail$Settings;->setConversationAgeDays(J)V

    .line 69
    invoke-virtual {v3, v0, v6}, Lcom/google/android/gm/provider/Gmail;->setSettings(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V

    goto :goto_0

    .line 73
    .end local v0           #account:Ljava/lang/String;
    .end local v6           #settings:Lcom/google/android/gm/provider/Gmail$Settings;
    :cond_1
    const/4 v9, 0x0

    return-object v9
.end method
