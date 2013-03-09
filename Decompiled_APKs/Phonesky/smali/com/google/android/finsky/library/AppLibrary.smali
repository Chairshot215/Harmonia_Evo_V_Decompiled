.class public Lcom/google/android/finsky/library/AppLibrary;
.super Lcom/google/android/finsky/library/HashMapLibrary;
.source "AppLibrary.java"


# instance fields
.field private mInAppDocIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionsDocIdSet:Ljava/util/Set;
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
.method public constructor <init>(Lcom/google/android/finsky/library/LibraryHasher;)V
    .locals 1
    .parameter "hasher"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    .line 32
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    .line 33
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mInAppDocIdSet:Ljava/util/Set;

    .line 37
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 45
    iget v0, p1, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/library/HashMapLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 51
    return-void

    .line 47
    :cond_1
    iget v0, p1, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mInAppDocIdSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dumpState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "label"
    .parameter "indent"

    .prologue
    .line 143
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AppLibrary ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  totalCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/library/AppLibrary;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  subscriptionsCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;
    .locals 8
    .parameter "docId"

    .prologue
    const/4 v5, 0x1

    .line 104
    new-instance v0, Lcom/google/android/finsky/library/LibraryEntry;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    const/4 v3, 0x3

    move-object v4, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/AppLibrary;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v7

    .line 106
    .local v7, entry:Lcom/google/android/finsky/library/LibraryEntry;
    check-cast v7, Lcom/google/android/finsky/library/LibraryAppEntry;

    .end local v7           #entry:Lcom/google/android/finsky/library/LibraryEntry;
    return-object v7
.end method

.method public getInAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppEntry;
    .locals 8
    .parameter "docId"

    .prologue
    .line 124
    new-instance v0, Lcom/google/android/finsky/library/LibraryEntry;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    const/4 v3, 0x3

    const/16 v5, 0xb

    const/4 v6, 0x1

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/AppLibrary;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v7

    .line 127
    .local v7, entry:Lcom/google/android/finsky/library/LibraryEntry;
    check-cast v7, Lcom/google/android/finsky/library/LibraryInAppEntry;

    .end local v7           #entry:Lcom/google/android/finsky/library/LibraryEntry;
    return-object v7
.end method

.method getInAppPurchasesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryInAppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 90
    .local v2, inAppList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryInAppEntry;>;"
    iget-object v3, p0, Lcom/google/android/finsky/library/AppLibrary;->mInAppDocIdSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, inAppDocId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/finsky/utils/DocUtils;->getPackageNameForInApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/library/AppLibrary;->getInAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v1           #inAppDocId:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .locals 8
    .parameter "docId"

    .prologue
    .line 114
    new-instance v0, Lcom/google/android/finsky/library/LibraryEntry;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    const/4 v3, 0x3

    const/16 v5, 0xf

    const/4 v6, 0x1

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/AppLibrary;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v7

    .line 116
    .local v7, entry:Lcom/google/android/finsky/library/LibraryEntry;
    check-cast v7, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    .end local v7           #entry:Lcom/google/android/finsky/library/LibraryEntry;
    return-object v7
.end method

.method getSubscriptionsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibrarySubscriptionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 79
    .local v2, subsList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibrarySubscriptionEntry;>;"
    iget-object v3, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, subsDocId:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/library/AppLibrary;->getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v1           #subsDocId:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public remove(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 59
    iget v0, p1, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/library/HashMapLibrary;->remove(Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 65
    return-void

    .line 61
    :cond_1
    iget v0, p1, Lcom/google/android/finsky/library/LibraryEntry;->docType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mInAppDocIdSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/android/finsky/library/LibraryEntry;->docId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 133
    invoke-super {p0}, Lcom/google/android/finsky/library/HashMapLibrary;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    const-string v0, "{num apps=%d}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/library/AppLibrary;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
