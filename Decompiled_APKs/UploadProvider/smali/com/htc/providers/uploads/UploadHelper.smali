.class public Lcom/htc/providers/uploads/UploadHelper;
.super Ljava/lang/Object;
.source "UploadHelper.java"


# static fields
.field private static final BATCH_LIMIT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "UploadHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCount(Ljava/lang/String;Ljava/util/List;)I
    .locals 4
    .parameter "aid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, albumList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 363
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "album_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    .local v0, albumAid:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "photo_count"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 368
    .end local v0           #albumAid:Ljava/lang/String;
    :goto_1
    return v2

    .line 362
    .restart local v0       #albumAid:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v0           #albumAid:Ljava/lang/String;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static declared-synchronized clearBatchUpload(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "batchId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 48
    const-class v3, Lcom/htc/providers/uploads/UploadHelper;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v1, whereb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 54
    const-string v2, "UploadHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "whereb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v2, Lcom/htc/opensense/upload/Uploads$BatchColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 56
    sget-object v2, Lcom/htc/opensense/upload/Uploads$TagColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dataId in (select _id from uploads where batch_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    sget-object v2, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "batch_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v3

    return-void

    .line 48
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #whereb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized clearFileUpload(Landroid/content/Context;II)V
    .locals 10
    .parameter "context"
    .parameter "id"
    .parameter "batchId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 65
    const-class v9, Lcom/htc/providers/uploads/UploadHelper;

    monitor-enter v9

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 66
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v7, where:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v8, where_tags:Ljava/lang/StringBuilder;
    const-string v1, "_id"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "dataId"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, "UploadHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v1, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 78
    sget-object v1, Lcom/htc/opensense/upload/Uploads$TagColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    if-lez p2, :cond_2

    .line 80
    sget-object v1, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "batch_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 82
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 83
    :cond_0
    sget-object v1, Lcom/htc/opensense/upload/Uploads$BatchColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    :cond_1
    if-eqz v6, :cond_2

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    monitor-exit v9

    return-void

    .line 65
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #where:Ljava/lang/StringBuilder;
    .end local v8           #where_tags:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method public static getAllAutoUploadItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/providers/uploads/AutoUploadItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 426
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/providers/uploads/AutoUploadItem;>;"
    const/16 v1, 0x8

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "frequency"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "service_title"

    aput-object v4, v2, v1

    const/4 v1, 0x2

    const-string v4, "service_pkg"

    aput-object v4, v2, v1

    const/4 v1, 0x3

    const-string v4, "service_class"

    aput-object v4, v2, v1

    const/4 v1, 0x4

    const-string v4, "album_id"

    aput-object v4, v2, v1

    const/4 v1, 0x5

    const-string v4, "album_name"

    aput-object v4, v2, v1

    const/4 v1, 0x6

    const-string v4, "privacy"

    aput-object v4, v2, v1

    const/4 v1, 0x7

    const-string v4, "uri"

    aput-object v4, v2, v1

    .line 429
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 430
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/opensense/upload/Uploads$AutoUploadUploadColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 432
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 434
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    new-instance v7, Lcom/htc/providers/uploads/AutoUploadItem;

    invoke-direct {v7}, Lcom/htc/providers/uploads/AutoUploadItem;-><init>()V

    .line 436
    .local v7, item:Lcom/htc/providers/uploads/AutoUploadItem;
    const-string v1, "frequency"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/providers/uploads/AutoUploadItem;->frequency:Ljava/lang/String;

    .line 437
    const-string v1, "service_title"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/providers/uploads/AutoUploadItem;->serviceTitle:Ljava/lang/String;

    .line 438
    const-string v1, "service_pkg"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/providers/uploads/AutoUploadItem;->uploadServicePackage:Ljava/lang/String;

    .line 439
    const-string v1, "service_class"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/providers/uploads/AutoUploadItem;->uploadServiceClass:Ljava/lang/String;

    .line 440
    const-string v1, "album_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/providers/uploads/AutoUploadItem;->albumId:Ljava/lang/String;

    .line 441
    const-string v1, "album_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/providers/uploads/AutoUploadItem;->albumName:Ljava/lang/String;

    .line 442
    const-string v1, "privacy"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/providers/uploads/AutoUploadItem;->albumPrivacy:Ljava/lang/String;

    .line 443
    const-string v1, "uri"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/providers/uploads/AutoUploadItem;->uri:Ljava/lang/String;

    .line 444
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 448
    .end local v7           #item:Lcom/htc/providers/uploads/AutoUploadItem;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 452
    :cond_1
    return-object v8
.end method

.method public static getAutoUploadItemsSize(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 384
    const/4 v7, 0x0

    .line 385
    .local v7, size:I
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    .line 386
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 387
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/opensense/upload/Uploads$AutoUploadUploadColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 389
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 391
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 394
    :cond_0
    const-string v1, "UploadHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_1
    return v7

    .line 397
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getLastFrequency(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 405
    const-string v7, ""

    .line 406
    .local v7, frequency:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "frequency"

    aput-object v4, v2, v1

    .line 407
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 408
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/opensense/upload/Uploads$AutoUploadUploadColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 410
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 412
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const-string v1, "frequency"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 415
    :cond_0
    const-string v1, "UploadHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequency = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_1
    return-object v7

    .line 418
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static insertAlbum(Lcom/htc/socialnetwork/SocialNetworkDataHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "mDataHelper"
    .parameter "uid"
    .parameter "newaid"
    .parameter "privacy"
    .parameter "newAlbumName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 375
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "album_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v1, "photo_count"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    const-string v1, "visible"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    const-string v1, "album_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0, v0}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->insertAlbum(Landroid/content/ContentValues;)Z

    .line 381
    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 318
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 320
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 321
    const-string v2, "UploadHelper"

    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    const-string v2, "UploadHelper"

    const-string v3, "network is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 323
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 324
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 327
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static final isWifiAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 338
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 339
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 340
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 343
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static queryBatchUploadStatus(Landroid/content/Context;I)Lcom/htc/providers/uploads/UploadItem;
    .locals 25
    .parameter "context"
    .parameter "batchId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 166
    .local v5, cr:Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 167
    .local v15, cursor:Landroid/database/Cursor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, where:Ljava/lang/String;
    const-string v6, "UploadHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query batch where : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v6, Lcom/htc/opensense/upload/Uploads$BatchColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "insert_time"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string v10, "service_title"

    aput-object v10, v7, v9

    const/4 v9, 0x0

    const-string v10, "_id ASC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 176
    if-eqz v15, :cond_6

    .line 178
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 179
    const-string v6, "insert_time"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 181
    .local v17, insertTime:J
    const-string v6, "service_title"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 183
    .local v20, provider:Ljava/lang/String;
    new-instance v19, Lcom/htc/providers/uploads/UploadBatchItem;

    move-object/from16 v0, v19

    move/from16 v1, p1

    move-wide/from16 v2, v17

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/providers/uploads/UploadBatchItem;-><init>(IJLjava/lang/String;)V

    .line 185
    .local v19, item:Lcom/htc/providers/uploads/UploadItem;
    sget-object v10, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v11, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v11, v6

    const/4 v6, 0x1

    const-string v7, "current_bytes"

    aput-object v7, v11, v6

    const/4 v6, 0x2

    const-string v7, "total_bytes"

    aput-object v7, v11, v6

    const/4 v6, 0x3

    const-string v7, "status"

    aput-object v7, v11, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "batch_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, "_id ASC"

    move-object v9, v5

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v16

    .line 191
    .local v16, cursor2:Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 192
    .local v22, subIdColumn:I
    const/16 v21, 0x1

    .line 193
    .local v21, subCurrentColumn:I
    const/16 v24, 0x2

    .line 194
    .local v24, subTotalByteColumn:I
    const/16 v23, 0x3

    .line 195
    .local v23, subStatusColumn:I
    if-eqz v16, :cond_3

    .line 197
    :goto_0
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 198
    const-string v6, "UploadHelper"

    const-string v7, "add file "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object/from16 v0, v19

    invoke-interface {v0, v6, v7, v9, v10}, Lcom/htc/providers/uploads/UploadItem;->addFile(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v6

    if-eqz v16, :cond_0

    .line 207
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    .end local v16           #cursor2:Landroid/database/Cursor;
    .end local v17           #insertTime:J
    .end local v19           #item:Lcom/htc/providers/uploads/UploadItem;
    .end local v20           #provider:Ljava/lang/String;
    .end local v21           #subCurrentColumn:I
    .end local v22           #subIdColumn:I
    .end local v23           #subStatusColumn:I
    .end local v24           #subTotalByteColumn:I
    :catchall_1
    move-exception v6

    if-eqz v15, :cond_1

    .line 215
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v6

    .line 204
    .restart local v16       #cursor2:Landroid/database/Cursor;
    .restart local v17       #insertTime:J
    .restart local v19       #item:Lcom/htc/providers/uploads/UploadItem;
    .restart local v20       #provider:Ljava/lang/String;
    .restart local v21       #subCurrentColumn:I
    .restart local v22       #subIdColumn:I
    .restart local v23       #subStatusColumn:I
    .restart local v24       #subTotalByteColumn:I
    :cond_2
    :try_start_3
    const-string v6, "UploadHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "item  size "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v19 .. v19}, Lcom/htc/providers/uploads/UploadItem;->getTotalNum()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    if-eqz v16, :cond_3

    .line 207
    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 214
    :cond_3
    if-eqz v15, :cond_4

    .line 215
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 220
    .end local v16           #cursor2:Landroid/database/Cursor;
    .end local v17           #insertTime:J
    .end local v19           #item:Lcom/htc/providers/uploads/UploadItem;
    .end local v20           #provider:Ljava/lang/String;
    .end local v21           #subCurrentColumn:I
    .end local v22           #subIdColumn:I
    .end local v23           #subStatusColumn:I
    .end local v24           #subTotalByteColumn:I
    :cond_4
    :goto_1
    return-object v19

    .line 214
    :cond_5
    if-eqz v15, :cond_6

    .line 215
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_6
    const/16 v19, 0x0

    goto :goto_1
.end method

.method public static queryUploadStatusByBatchId(Landroid/content/Context;I)Ljava/util/Map;
    .locals 20
    .parameter "context"
    .parameter "batchId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/providers/uploads/UploadItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 272
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "batch_id="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "_id ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 276
    .local v13, cursor:Landroid/database/Cursor;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v14, mItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/providers/uploads/UploadItem;>;"
    if-eqz v13, :cond_1

    .line 279
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v18

    if-nez v18, :cond_0

    .line 281
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 284
    .local v4, id:I
    const-string v18, "total_bytes"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 286
    .local v15, max:I
    const-string v18, "current_bytes"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 288
    .local v16, progress:I
    const-string v18, "status"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 290
    .local v17, status:I
    const-string v18, "insert_time"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 292
    .local v8, firstInsertTime:J
    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, title:Ljava/lang/String;
    const-string v18, "resp_status"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 296
    .local v10, respMesg:Ljava/lang/String;
    const-string v18, "medium_uri"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 298
    .local v6, uri:Landroid/net/Uri;
    const-string v18, "mime_type"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 300
    .local v7, mimeType:Ljava/lang/String;
    const-string v18, "status_change_time"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 303
    .local v11, statusChangeTime:J
    new-instance v3, Lcom/htc/providers/uploads/UploadFileItem;

    invoke-direct/range {v3 .. v12}, Lcom/htc/providers/uploads/UploadFileItem;-><init>(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;J)V

    .line 305
    .local v3, item:Lcom/htc/providers/uploads/UploadFileItem;
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v4, v0, v15, v1}, Lcom/htc/providers/uploads/UploadFileItem;->addFile(IIII)V

    .line 306
    new-instance v18, Ljava/lang/Integer;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 309
    .end local v3           #item:Lcom/htc/providers/uploads/UploadFileItem;
    .end local v4           #id:I
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v8           #firstInsertTime:J
    .end local v10           #respMesg:Ljava/lang/String;
    .end local v11           #statusChangeTime:J
    .end local v15           #max:I
    .end local v16           #progress:I
    .end local v17           #status:I
    :catchall_0
    move-exception v18

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v18

    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_1
    return-object v14
.end method

.method public static queryUploadStatusByUploadId(Landroid/content/Context;I)Lcom/htc/providers/uploads/UploadItem;
    .locals 19
    .parameter "context"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 228
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 230
    .local v13, cursor:Landroid/database/Cursor;
    sget-object v3, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "_id="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "_id ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 234
    if-eqz v13, :cond_1

    .line 236
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    const-string v4, "total_bytes"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 239
    .local v14, max:I
    const-string v4, "current_bytes"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 241
    .local v15, progress:I
    const-string v4, "status"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 243
    .local v16, status:I
    const-string v4, "insert_time"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 245
    .local v8, firstInsertTime:J
    const-string v4, "title"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, title:Ljava/lang/String;
    const-string v4, "resp_status"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 249
    .local v10, respMesg:Ljava/lang/String;
    const-string v4, "medium_uri"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 251
    .local v6, uri:Landroid/net/Uri;
    const-string v4, "mime_type"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 253
    .local v7, mimeType:Ljava/lang/String;
    const-string v4, "status_change_time"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 256
    .local v11, statusChangeTime:J
    new-instance v3, Lcom/htc/providers/uploads/UploadFileItem;

    move/from16 v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/htc/providers/uploads/UploadFileItem;-><init>(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;J)V

    .line 258
    .local v3, item:Lcom/htc/providers/uploads/UploadFileItem;
    move/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v3, v0, v15, v14, v1}, Lcom/htc/providers/uploads/UploadFileItem;->addFile(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 265
    .end local v3           #item:Lcom/htc/providers/uploads/UploadFileItem;
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #mimeType:Ljava/lang/String;
    .end local v8           #firstInsertTime:J
    .end local v10           #respMesg:Ljava/lang/String;
    .end local v11           #statusChangeTime:J
    .end local v14           #max:I
    .end local v15           #progress:I
    .end local v16           #status:I
    :goto_0
    return-object v3

    .line 262
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public static removeUploadedItemsInDb(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "frequency"

    .prologue
    const/4 v4, 0x0

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 457
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v1, where:Ljava/lang/StringBuilder;
    const-string v2, "frequency"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    if-nez p1, :cond_0

    .line 464
    sget-object v2, Lcom/htc/opensense/upload/Uploads$AutoUploadUploadColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    sget-object v2, Lcom/htc/opensense/upload/Uploads$AutoUploadUploadColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized resumeBatchUpload(Landroid/content/Context;Ljava/util/List;)Z
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .local p1, bidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 93
    const-class v6, Lcom/htc/providers/uploads/UploadHelper;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v3, values:Landroid/content/ContentValues;
    const-string v7, "control"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 98
    .local v4, whereb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 99
    if-lez v1, :cond_0

    .line 100
    const-string v7, " OR "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_0
    const-string v7, "batch_id"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const-string v7, ") AND ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v7, "status"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v7, " <> "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const/16 v7, 0xc8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v7, "UploadHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "whereb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v7, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v3, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 114
    .local v2, total:I
    if-lez v2, :cond_2

    const/4 v5, 0x1

    :cond_2
    monitor-exit v6

    return v5

    .line 93
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i:I
    .end local v2           #total:I
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v4           #whereb:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized resumeFileUpload(Landroid/content/Context;Ljava/util/List;)Z
    .locals 12
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .local p1, fileIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 120
    const-class v9, Lcom/htc/providers/uploads/UploadHelper;

    monitor-enter v9

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 123
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v6, where:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 125
    .local v1, firstTime:Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 126
    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 131
    :goto_1
    const-string v7, "( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 135
    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #firstTime:Z
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v6           #where:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v7

    monitor-exit v9

    throw v7

    .line 129
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #firstTime:Z
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v6       #where:Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 138
    :cond_1
    const-string v7, "UploadHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resume where : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v3, 0x0

    .line 141
    .local v3, resumeFileNum:I
    const/4 v4, -0x1

    .line 142
    .local v4, totalFileNum:I
    if-nez v1, :cond_2

    .line 144
    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v7, "status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const/16 v7, 0x190

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 148
    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v7, "status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const/16 v7, 0x258

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 152
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "control"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    sget-object v7, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v5, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 159
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_2
    if-ne v3, v4, :cond_3

    const/4 v7, 0x1

    :goto_2
    monitor-exit v9

    return v7

    :cond_3
    move v7, v8

    goto :goto_2
.end method

.method public static updateAlbum(Lcom/htc/socialnetwork/SocialNetworkDataHelper;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "mDataHelper"
    .parameter "mAid"
    .parameter "uid"
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 348
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .local v0, albumValues:Landroid/content/ContentValues;
    const-string v2, "uid"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v2, "album_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, p2}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getAlbumData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/htc/providers/uploads/UploadHelper;->checkCount(Ljava/lang/String;Ljava/util/List;)I

    move-result v1

    .line 354
    .local v1, count:I
    const-string v2, "photo_count"

    add-int v3, v1, p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    invoke-virtual {p0, v0}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->updateAlbum(Landroid/content/ContentValues;)Z

    .line 358
    .end local v0           #albumValues:Landroid/content/ContentValues;
    .end local v1           #count:I
    :cond_0
    return-void
.end method
