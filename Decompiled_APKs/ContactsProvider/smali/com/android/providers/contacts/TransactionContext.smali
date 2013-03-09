.class public Lcom/android/providers/contacts/TransactionContext;
.super Ljava/lang/Object;
.source "TransactionContext.java"


# instance fields
.field private mDirtyRawContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mForProfile:Z

.field private mInsertedRawContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/contacts/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedFixPrimaryDisableAggregationContact:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStaleSearchIndexContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStaleSearchIndexRawContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatedRawContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatedSyncStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "forProfile"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContacts:Ljava/util/HashMap;

    .line 36
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    .line 37
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    .line 38
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    .line 39
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    .line 40
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    .line 43
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mNeedFixPrimaryDisableAggregationContact:Ljava/util/HashSet;

    .line 47
    iput-boolean p1, p0, Lcom/android/providers/contacts/TransactionContext;->mForProfile:Z

    .line 48
    return-void
.end method


# virtual methods
.method public addNeedFixPrimaryDisableAggregationContacts(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mNeedFixPrimaryDisableAggregationContact:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 112
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 113
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 114
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 116
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mNeedFixPrimaryDisableAggregationContact:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 118
    return-void
.end method

.method public clearSearchIndexUpdates()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 122
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 123
    return-void
.end method

.method public getAccountWithDataSetForRawContact(J)Lcom/android/providers/contacts/AccountWithDataSet;
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContacts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/AccountWithDataSet;

    return-object v0
.end method

.method public getDirtyRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    return-object v0
.end method

.method public getInsertedRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNeedFixPrimaryDisableAggregationContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mNeedFixPrimaryDisableAggregationContact:Ljava/util/HashSet;

    return-object v0
.end method

.method public getStaleSearchIndexContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    return-object v0
.end method

.method public getStaleSearchIndexRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    return-object v0
.end method

.method public getUpdatedRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    return-object v0
.end method

.method public getUpdatedSyncStates()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public invalidateSearchIndexForContact(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public invalidateSearchIndexForRawContact(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public isForProfile()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/providers/contacts/TransactionContext;->mForProfile:Z

    return v0
.end method

.method public isNewRawContact(J)Z
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContacts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markRawContactDirty(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public rawContactInserted(JLcom/android/providers/contacts/AccountWithDataSet;)V
    .locals 2
    .parameter "rawContactId"
    .parameter "accountWithDataSet"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContacts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public rawContactUpdated(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public syncStateUpdated(JLjava/lang/Object;)V
    .locals 2
    .parameter "rowId"
    .parameter "data"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method
