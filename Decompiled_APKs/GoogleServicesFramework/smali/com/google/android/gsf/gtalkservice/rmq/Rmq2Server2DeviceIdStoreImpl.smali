.class public Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;
.super Ljava/lang/Object;
.source "Rmq2Server2DeviceIdStoreImpl.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;


# static fields
.field private static final S2D_IDS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rmq_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->S2D_IDS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->mResolver:Landroid/content/ContentResolver;

    .line 41
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 103
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Rmq2Server2DeviceIdStore] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method


# virtual methods
.method public addS2dId(Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "rmq_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gsf/TalkContract$ServerToDeviceRmqIds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public clearAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/TalkContract$ServerToDeviceRmqIds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public deleteS2dIds(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 80
    .local v1, count:I
    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, buf:Ljava/lang/StringBuilder;
    new-array v6, v1, [Ljava/lang/String;

    .line 86
    .local v6, idsToDelete:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 87
    .local v2, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 88
    .local v5, id:Ljava/lang/String;
    if-lez v2, :cond_1

    .line 89
    const-string v7, " OR "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_1
    const-string v7, "rmq_id"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aput-object v5, v6, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 95
    .end local v5           #id:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/google/android/gsf/TalkContract$ServerToDeviceRmqIds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getS2dIds()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 44
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v8, retVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/TalkContract$ServerToDeviceRmqIds;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->S2D_IDS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 54
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, id:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    .end local v7           #id:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 65
    :goto_1
    return-object v8

    .line 62
    :cond_1
    const-string v0, "getS2dIds"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_1
.end method
