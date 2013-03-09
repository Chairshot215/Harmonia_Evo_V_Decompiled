.class public Lcom/android/providers/contacts/PhotoStore;
.super Ljava/lang/Object;
.source "PhotoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/PhotoStore$Entry;
    }
.end annotation


# instance fields
.field private final DIRECTORY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/contacts/PhotoStore$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsStorePathReady:Z

.field private final mStorePath:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/providers/contacts/ContactsDatabaseHelper;)V
    .locals 7
    .parameter "rootDirectory"
    .parameter "databaseHelper"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v4, Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/contacts/PhotoStore;->TAG:Ljava/lang/String;

    .line 45
    const-string v4, "photos"

    iput-object v4, p0, Lcom/android/providers/contacts/PhotoStore;->DIRECTORY:Ljava/lang/String;

    .line 51
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    .line 71
    new-instance v2, Ljava/io/File;

    const-string v4, "photos"

    invoke-direct {v2, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v2, storePath:Ljava/io/File;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/providers/contacts/PhotoStore;->mIsStorePathReady:Z

    .line 77
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 79
    const/4 v1, 0x1

    .line 80
    .local v1, isMkDirSuccess:Z
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 84
    :cond_0
    if-nez v1, :cond_1

    .line 85
    new-instance v3, Ljava/io/File;

    const-string v4, "photos"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    .end local v2           #storePath:Ljava/io/File;
    .local v3, storePath:Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 89
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 90
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create photo storage directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 100
    .end local v1           #isMkDirSuccess:Z
    .end local v3           #storePath:Ljava/io/File;
    .local v0, e:Ljava/lang/RuntimeException;
    .restart local v2       #storePath:Ljava/io/File;
    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/PhotoStore;->TAG:Ljava/lang/String;

    const-string v5, "Unable to create photo storage directory "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/providers/contacts/PhotoStore;->mIsStorePathReady:Z

    .line 104
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    .line 105
    iput-object p2, p0, Lcom/android/providers/contacts/PhotoStore;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 106
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    .line 107
    invoke-virtual {p0}, Lcom/android/providers/contacts/PhotoStore;->initialize()V

    .line 108
    return-void

    .line 99
    :catch_1
    move-exception v0

    goto :goto_0

    .end local v2           #storePath:Ljava/io/File;
    .restart local v1       #isMkDirSuccess:Z
    .restart local v3       #storePath:Ljava/io/File;
    :cond_2
    move-object v2, v3

    .end local v3           #storePath:Ljava/io/File;
    .restart local v2       #storePath:Ljava/io/File;
    goto :goto_1
.end method

.method private cleanupFile(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 289
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 290
    .local v0, deleted:Z
    if-nez v0, :cond_0

    .line 291
    const-string v1, "Could not clean up file %s"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    return-void
.end method

.method private ensureStorePathReady()V
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/providers/contacts/PhotoStore;->mIsStorePathReady:Z

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/contacts/PhotoStore;->mIsStorePathReady:Z

    .line 115
    iget-boolean v0, p0, Lcom/android/providers/contacts/PhotoStore;->mIsStorePathReady:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/providers/contacts/PhotoStore;->initialize()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/PhotoStore;->mIsStorePathReady:Z

    goto :goto_0
.end method

.method private getFileForPhotoFileId(J)Ljava/io/File;
    .locals 3
    .parameter "id"

    .prologue
    .line 310
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private putEntry(JLcom/android/providers/contacts/PhotoStore$Entry;)V
    .locals 7
    .parameter "id"
    .parameter "entry"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    iget-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    iget-wide v3, p3, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    .line 325
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    return-void

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore$Entry;

    .line 323
    .local v0, oldEntry:Lcom/android/providers/contacts/PhotoStore$Entry;
    iget-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    iget-wide v3, p3, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    iget-wide v5, v0, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    goto :goto_0
.end method

.method private removeEntry(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore$Entry;

    .line 334
    .local v0, entry:Lcom/android/providers/contacts/PhotoStore$Entry;
    if-eqz v0, :cond_0

    .line 335
    iget-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    iget-wide v3, v0, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    .line 336
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "photo_files"

    const-string v3, "photo_files._id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    return-void
.end method


# virtual methods
.method public cleanup(Ljava/util/Set;)Ljava/util/Set;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, keysInUse:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 200
    .local v3, keysToRemove:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 201
    invoke-interface {v3, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 202
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 203
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleanup removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " entries"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 205
    .local v1, key:J
    invoke-virtual {p0, v1, v2}, Lcom/android/providers/contacts/PhotoStore;->remove(J)V

    goto :goto_0

    .line 209
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:J
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 210
    .local v4, missingKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 211
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 212
    return-object v4
.end method

.method public clear()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 130
    invoke-direct {p0}, Lcom/android/providers/contacts/PhotoStore;->ensureStorePathReady()V

    .line 132
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 133
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 134
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 135
    .local v1, file:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/PhotoStore;->cleanupFile(Ljava/io/File;)V

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    .line 139
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 141
    :cond_1
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "photo_files"

    invoke-virtual {v5, v6, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 143
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    .line 144
    return-void
.end method

.method public get(J)Lcom/android/providers/contacts/PhotoStore$Entry;
    .locals 2
    .parameter "key"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore$Entry;

    return-object v0
.end method

.method public getTotalSize()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    return-wide v0
.end method

.method public final initialize()V
    .locals 9

    .prologue
    .line 163
    iget-object v7, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 164
    .local v3, files:[Ljava/io/File;
    if-nez v3, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 169
    .local v2, file:Ljava/io/File;
    :try_start_0
    new-instance v1, Lcom/android/providers/contacts/PhotoStore$Entry;

    invoke-direct {v1, v2}, Lcom/android/providers/contacts/PhotoStore$Entry;-><init>(Ljava/io/File;)V

    .line 170
    .local v1, entry:Lcom/android/providers/contacts/PhotoStore$Entry;
    iget-wide v7, v1, Lcom/android/providers/contacts/PhotoStore$Entry;->id:J

    invoke-direct {p0, v7, v8, v1}, Lcom/android/providers/contacts/PhotoStore;->putEntry(JLcom/android/providers/contacts/PhotoStore$Entry;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1           #entry:Lcom/android/providers/contacts/PhotoStore$Entry;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    :catch_0
    move-exception v6

    .line 173
    .local v6, nfe:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/PhotoStore;->cleanupFile(Ljava/io/File;)V

    goto :goto_2

    .line 179
    .end local v2           #file:Ljava/io/File;
    .end local v6           #nfe:Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v7, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_0

    .line 181
    iget-object v7, p0, Lcom/android/providers/contacts/PhotoStore;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public insert(Lcom/android/providers/contacts/PhotoProcessor;)J
    .locals 2
    .parameter "photoProcessor"

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/contacts/PhotoStore;->insert(Lcom/android/providers/contacts/PhotoProcessor;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Lcom/android/providers/contacts/PhotoProcessor;Z)J
    .locals 15
    .parameter "photoProcessor"
    .parameter "allowSmallImageStorage"

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/providers/contacts/PhotoStore;->ensureStorePathReady()V

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/contacts/PhotoProcessor;->getDisplayPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    .local v0, displayPhoto:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 242
    .local v11, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 243
    .local v4, height:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/contacts/PhotoProcessor;->getMaxThumbnailPhotoDim()I

    move-result v9

    .line 244
    .local v9, thumbnailDim:I
    if-nez p2, :cond_0

    if-gt v11, v9, :cond_0

    if-le v4, v9, :cond_3

    .line 247
    :cond_0
    const/4 v2, 0x0

    .line 250
    .local v2, file:Ljava/io/File;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/contacts/PhotoProcessor;->getDisplayPhotoBytes()[B

    move-result-object v7

    .line 251
    .local v7, photoBytes:[B
    const-string v12, "img"

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-static {v12, v13, v14}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 252
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 253
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/contacts/PhotoProcessor;->getDisplayPhotoBytes()[B

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 254
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 257
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v10, values:Landroid/content/ContentValues;
    const-string v12, "height"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    const-string v12, "width"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v12, "filesize"

    array-length v13, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    iget-object v12, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v12, :cond_1

    .line 263
    iget-object v12, p0, Lcom/android/providers/contacts/PhotoStore;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    iput-object v12, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 266
    :cond_1
    iget-object v12, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "photo_files"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 267
    .local v5, id:J
    const-wide/16 v12, 0x0

    cmp-long v12, v5, v12

    if-eqz v12, :cond_2

    .line 269
    invoke-direct {p0, v5, v6}, Lcom/android/providers/contacts/PhotoStore;->getFileForPhotoFileId(J)Ljava/io/File;

    move-result-object v8

    .line 270
    .local v8, target:Ljava/io/File;
    invoke-virtual {v2, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 271
    new-instance v1, Lcom/android/providers/contacts/PhotoStore$Entry;

    invoke-direct {v1, v8}, Lcom/android/providers/contacts/PhotoStore$Entry;-><init>(Ljava/io/File;)V

    .line 272
    .local v1, entry:Lcom/android/providers/contacts/PhotoStore$Entry;
    iget-wide v12, v1, Lcom/android/providers/contacts/PhotoStore$Entry;->id:J

    invoke-direct {p0, v12, v13, v1}, Lcom/android/providers/contacts/PhotoStore;->putEntry(JLcom/android/providers/contacts/PhotoStore$Entry;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v1           #entry:Lcom/android/providers/contacts/PhotoStore$Entry;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v5           #id:J
    .end local v7           #photoBytes:[B
    .end local v8           #target:Ljava/io/File;
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_0
    return-wide v5

    .line 276
    .restart local v2       #file:Ljava/io/File;
    :catch_0
    move-exception v12

    .line 281
    :cond_2
    if-eqz v2, :cond_3

    .line 282
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/PhotoStore;->cleanupFile(Ljava/io/File;)V

    .line 285
    .end local v2           #file:Ljava/io/File;
    :cond_3
    const-wide/16 v5, 0x0

    goto :goto_0
.end method

.method public remove(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/android/providers/contacts/PhotoStore;->ensureStorePathReady()V

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/PhotoStore;->getFileForPhotoFileId(J)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoStore;->cleanupFile(Ljava/io/File;)V

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/PhotoStore;->removeEntry(J)V

    .line 304
    return-void
.end method
