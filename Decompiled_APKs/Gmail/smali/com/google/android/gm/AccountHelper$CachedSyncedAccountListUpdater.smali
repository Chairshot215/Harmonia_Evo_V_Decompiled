.class Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/AccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CachedSyncedAccountListUpdater"
.end annotation


# instance fields
.field private final mAccounts:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mNumPendingLabelResults:I

.field private final mSyncedAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p2, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "accounts"

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->mContext:Landroid/content/Context;

    .line 407
    iput-object p2, p0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->mAccounts:[Ljava/lang/String;

    .line 408
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->mSyncedAccounts:Ljava/util/Set;

    .line 409
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .prologue
    .line 415
    iget-object v4, p0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->mAccounts:[Ljava/lang/String;

    array-length v4, v4

    iput v4, p0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->mNumPendingLabelResults:I

    .line 417
    iget-object v1, p0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->mAccounts:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 418
    .local v0, account:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->mContext:Landroid/content/Context;

    const-string v5, "^i"

    const/4 v6, 0x1

    invoke-static {v4, v0, v5, v6, p0}, Lcom/google/android/gm/provider/LabelManager;->getLabelAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v0           #account:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onLabelResult(Lcom/google/android/gm/provider/Label;)V
    .locals 4
    .parameter "label"

    .prologue
    .line 426
    if-eqz p1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->mSyncedAccounts:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    iget v0, p0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->mNumPendingLabelResults:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->mNumPendingLabelResults:I

    if-gtz v0, :cond_1

    .line 431
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gm/AccountHelper$CachedSyncedAccountListUpdater;->mSyncedAccounts:Ljava/util/Set;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/persistence/Persistence;->cacheConfiguredGoogleAccounts(Landroid/content/Context;ZLjava/lang/Iterable;)V

    .line 434
    :cond_1
    return-void
.end method
