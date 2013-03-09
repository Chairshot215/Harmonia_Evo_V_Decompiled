.class public Lcom/android/providers/contacts/HtcContactsProvider2$SyncControlSyncStatusObserver;
.super Ljava/lang/Object;
.source "HtcContactsProvider2.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SyncControlSyncStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method protected constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;)V
    .locals 0
    .parameter

    .prologue
    .line 2537
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$SyncControlSyncStatusObserver;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 5
    .parameter "which"

    .prologue
    .line 2540
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v0

    .line 2542
    .local v0, activeSyncValues:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2568
    :cond_0
    return-void

    .line 2548
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 2553
    .local v2, info:Landroid/content/SyncInfo;
    const-string v3, "com.android.contacts"

    iget-object v4, v2, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2556
    const-string v3, "com.google"

    iget-object v4, v2, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2559
    iget-object v3, v2, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    const-string v4, "com.android.contacts"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2564
    iget-object v3, v2, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    const-string v4, "com.android.contacts"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method
