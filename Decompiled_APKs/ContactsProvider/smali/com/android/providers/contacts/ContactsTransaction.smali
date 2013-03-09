.class public Lcom/android/providers/contacts/ContactsTransaction;
.super Ljava/lang/Object;
.source "ContactsTransaction.java"


# instance fields
.field private final mBatch:Z

.field private mDatabaseTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private mDatabasesForTransaction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDirty:Z

.field private mYieldFailed:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "batch"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean p1, p0, Lcom/android/providers/contacts/ContactsTransaction;->mBatch:Z

    .line 69
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsTransaction;->mDatabasesForTransaction:Ljava/util/List;

    .line 70
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsTransaction;->mDatabaseTagMap:Ljava/util/Map;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsTransaction;->mIsDirty:Z

    .line 72
    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 3
    .parameter "callerIsBatch"

    .prologue
    .line 162
    iget-boolean v2, p0, Lcom/android/providers/contacts/ContactsTransaction;->mBatch:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_4

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsTransaction;->mDatabasesForTransaction:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 168
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-boolean v2, p0, Lcom/android/providers/contacts/ContactsTransaction;->mYieldFailed:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 174
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsTransaction;->mDatabasesForTransaction:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 175
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsTransaction;->mDatabaseTagMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 176
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactsTransaction;->mIsDirty:Z

    .line 178
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public getDbForTag(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "tag"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTransaction;->mDatabaseTagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public hasDbInTransaction(Ljava/lang/String;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTransaction;->mDatabaseTagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBatch()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsTransaction;->mBatch:Z

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsTransaction;->mIsDirty:Z

    return v0
.end method

.method public markDirty()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsTransaction;->mIsDirty:Z

    .line 84
    return-void
.end method

.method public markSuccessful(Z)V
    .locals 3
    .parameter "callerIsBatch"

    .prologue
    .line 149
    iget-boolean v2, p0, Lcom/android/providers/contacts/ContactsTransaction;->mBatch:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsTransaction;->mDatabasesForTransaction:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 151
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_0

    .line 154
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public markYieldFailed()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsTransaction;->mYieldFailed:Z

    .line 88
    return-void
.end method

.method public removeDbForTag(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .parameter "tag"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsTransaction;->mDatabaseTagMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 138
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsTransaction;->mDatabaseTagMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsTransaction;->mDatabasesForTransaction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    return-object v0
.end method

.method public startTransactionForDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .parameter "db"
    .parameter "tag"
    .parameter "listener"

    .prologue
    .line 100
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactsTransaction;->hasDbInTransaction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTransaction;->mDatabasesForTransaction:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsTransaction;->mDatabaseTagMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    if-eqz p3, :cond_1

    .line 104
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_0
.end method
