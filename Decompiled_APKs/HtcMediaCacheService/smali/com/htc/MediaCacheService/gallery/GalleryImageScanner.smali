.class public Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;
.super Ljava/lang/Object;
.source "GalleryImageScanner.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MediaCacheScanner"


# instance fields
.field private mCacheProvider:Landroid/content/IContentProvider;

.field private mContext:Landroid/content/Context;

.field private mMediaProvider:Landroid/content/IContentProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static ApplyBatchUpdate(Landroid/content/IContentProvider;Landroid/net/Uri;Lcom/htc/MediaCacheService/gallery/FileCacheCreator;Ljava/util/HashMap;)I
    .locals 13
    .parameter "provider"
    .parameter "uri"
    .parameter "creator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IContentProvider;",
            "Landroid/net/Uri;",
            "Lcom/htc/MediaCacheService/gallery/FileCacheCreator;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/MediaCacheService/gallery/FileCache;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 389
    .local p3, filecahche:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 390
    :cond_0
    const/4 v6, 0x0

    .line 467
    :cond_1
    :goto_0
    return v6

    .line 393
    :cond_2
    const/4 v6, 0x0

    .line 395
    .local v6, nRes:I
    const/4 v1, 0x0

    .line 397
    .local v1, cur:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v7, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 403
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 405
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/MediaCacheService/gallery/FileCache;

    .line 407
    .local v4, entry:Lcom/htc/MediaCacheService/gallery/FileCache;
    if-nez v4, :cond_6

    .line 449
    .end local v4           #entry:Lcom/htc/MediaCacheService/gallery/FileCache;
    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 451
    invoke-interface {p0, v7}, Landroid/content/IContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 452
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 461
    :cond_5
    if-eqz v1, :cond_1

    .line 462
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 463
    const/4 v1, 0x0

    goto :goto_0

    .line 411
    .restart local v4       #entry:Lcom/htc/MediaCacheService/gallery/FileCache;
    :cond_6
    const/4 v0, 0x0

    .line 413
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    :try_start_1
    iget v10, v4, Lcom/htc/MediaCacheService/gallery/FileCache;->mEntryAction:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 415
    invoke-virtual {p2, v4}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->CreateMediaCacheContentValue(Lcom/htc/MediaCacheService/gallery/FileCache;)Landroid/content/ContentValues;

    move-result-object v2

    .line 416
    .local v2, cv:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 446
    .end local v2           #cv:Landroid/content/ContentValues;
    :goto_2
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 455
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #entry:Lcom/htc/MediaCacheService/gallery/FileCache;
    .end local v5           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    :catch_0
    move-exception v3

    .line 457
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    const-string v10, "MediaCacheScanner"

    const-string v11, "[MediaCacheScanner][ApplyBatchUpdate]"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    if-eqz v1, :cond_1

    .line 462
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 463
    const/4 v1, 0x0

    goto :goto_0

    .line 419
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v4       #entry:Lcom/htc/MediaCacheService/gallery/FileCache;
    .restart local v5       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    :cond_7
    :try_start_3
    iget v10, v4, Lcom/htc/MediaCacheService/gallery/FileCache;->mEntryAction:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 421
    invoke-virtual {p2, v4}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->CreateMediaCacheContentValue(Lcom/htc/MediaCacheService/gallery/FileCache;)Landroid/content/ContentValues;

    move-result-object v2

    .line 423
    .restart local v2       #cv:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 424
    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 426
    const-string v8, "_id= ?"

    .line 428
    .local v8, where:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p2, v4}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetId(Lcom/htc/MediaCacheService/gallery/FileCache;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 430
    .local v9, whereArgs:[Ljava/lang/String;
    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 461
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #entry:Lcom/htc/MediaCacheService/gallery/FileCache;
    .end local v5           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .end local v8           #where:Ljava/lang/String;
    .end local v9           #whereArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v10

    if-eqz v1, :cond_8

    .line 462
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 463
    const/4 v1, 0x0

    :cond_8
    throw v10

    .line 432
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v4       #entry:Lcom/htc/MediaCacheService/gallery/FileCache;
    .restart local v5       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    :cond_9
    :try_start_4
    iget v10, v4, Lcom/htc/MediaCacheService/gallery/FileCache;->mEntryAction:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 434
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 436
    const-string v8, "_id= ?"

    .line 438
    .restart local v8       #where:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p2, v4}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetId(Lcom/htc/MediaCacheService/gallery/FileCache;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 440
    .restart local v9       #whereArgs:[Ljava/lang/String;
    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

.method public static GetStartFileCacheEntry(Landroid/content/IContentProvider;Landroid/net/Uri;[Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/FileCacheCreator;III)Ljava/util/HashMap;
    .locals 16
    .parameter "provider"
    .parameter "uri"
    .parameter "projection"
    .parameter "creator"
    .parameter "nStart"
    .parameter "MAXCOUNT"
    .parameter "nEtryDefualtSate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IContentProvider;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Lcom/htc/MediaCacheService/gallery/FileCacheCreator;",
            "III)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/MediaCacheService/gallery/FileCache;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    const/4 v10, 0x0

    .line 479
    .local v10, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 480
    :cond_0
    const/4 v2, 0x0

    .line 538
    :cond_1
    :goto_0
    return-object v2

    .line 484
    :cond_2
    const/4 v12, 0x0

    .line 488
    .local v12, cur:Landroid/database/Cursor;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    :try_start_0
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 490
    if-nez v12, :cond_3

    .line 491
    const/4 v2, 0x0

    .line 532
    if-eqz v12, :cond_1

    .line 533
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 534
    const/4 v12, 0x0

    goto :goto_0

    .line 494
    :cond_3
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_4

    .line 495
    const/4 v2, 0x0

    .line 532
    if-eqz v12, :cond_1

    .line 533
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 534
    const/4 v12, 0x0

    goto :goto_0

    .line 498
    :cond_4
    :try_start_2
    move/from16 v0, p4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->move(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-nez v2, :cond_5

    .line 499
    const/4 v2, 0x0

    .line 532
    if-eqz v12, :cond_1

    .line 533
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 534
    const/4 v12, 0x0

    goto :goto_0

    .line 502
    :cond_5
    :try_start_3
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 504
    .end local v10           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .local v11, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    const/4 v15, 0x0

    .line 508
    .local v15, nCount:I
    :cond_6
    :try_start_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetLongValue(Landroid/database/Cursor;)[J

    move-result-object v8

    .line 509
    .local v8, arrL:[J
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetStringValue(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v9

    .line 510
    .local v9, arrS:[Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetId([J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 512
    .local v14, id:Ljava/lang/Long;
    const-wide/16 v2, 0x0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 524
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v2

    if-nez v2, :cond_6

    .line 532
    :goto_1
    if-eqz v12, :cond_b

    .line 533
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 534
    const/4 v12, 0x0

    move-object v10, v11

    .end local v8           #arrL:[J
    .end local v9           #arrS:[Ljava/lang/String;
    .end local v11           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .end local v14           #id:Ljava/lang/Long;
    .end local v15           #nCount:I
    .restart local v10       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    :cond_8
    :goto_2
    move-object v2, v10

    .line 538
    goto :goto_0

    .line 516
    .end local v10           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .restart local v8       #arrL:[J
    .restart local v9       #arrS:[Ljava/lang/String;
    .restart local v11       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .restart local v14       #id:Ljava/lang/Long;
    .restart local v15       #nCount:I
    :cond_9
    :try_start_5
    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-virtual {v0, v8, v9, v1}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->CreateCache([J[Ljava/lang/String;I)Lcom/htc/MediaCacheService/gallery/FileCache;

    move-result-object v2

    invoke-virtual {v11, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 518
    add-int/lit8 v15, v15, 0x1

    .line 520
    move/from16 v0, p5

    if-lt v15, v0, :cond_7

    goto :goto_1

    .line 526
    .end local v8           #arrL:[J
    .end local v9           #arrS:[Ljava/lang/String;
    .end local v11           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .end local v14           #id:Ljava/lang/Long;
    .end local v15           #nCount:I
    .restart local v10       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    :catch_0
    move-exception v13

    .line 528
    .local v13, e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v2, "MediaCacheScanner"

    const-string v3, "[MediaCacheScanner][GetStartFileCacheEntry]"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 532
    if-eqz v12, :cond_8

    .line 533
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 534
    const/4 v12, 0x0

    goto :goto_2

    .line 532
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v12, :cond_a

    .line 533
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 534
    const/4 v12, 0x0

    :cond_a
    throw v2

    .line 532
    .end local v10           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .restart local v11       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .restart local v15       #nCount:I
    :catchall_1
    move-exception v2

    move-object v10, v11

    .end local v11           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .restart local v10       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    goto :goto_4

    .line 526
    .end local v10           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .restart local v11       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    :catch_1
    move-exception v13

    move-object v10, v11

    .end local v11           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .restart local v10       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    goto :goto_3

    .end local v10           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .restart local v8       #arrL:[J
    .restart local v9       #arrS:[Ljava/lang/String;
    .restart local v11       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .restart local v14       #id:Ljava/lang/Long;
    :cond_b
    move-object v10, v11

    .end local v11           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    .restart local v10       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    goto :goto_2
.end method

.method public static check_new_cache3(Landroid/content/IContentProvider;Landroid/net/Uri;Lcom/htc/MediaCacheService/gallery/FileCacheCreator;Ljava/util/HashMap;)I
    .locals 16
    .parameter "provider"
    .parameter "uri"
    .parameter "creator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IContentProvider;",
            "Landroid/net/Uri;",
            "Lcom/htc/MediaCacheService/gallery/FileCacheCreator;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/MediaCacheService/gallery/FileCache;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 197
    .local p3, fileCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    if-eqz p0, :cond_0

    if-nez p3, :cond_2

    .line 198
    :cond_0
    const/4 v13, 0x0

    .line 256
    :cond_1
    :goto_0
    return v13

    .line 201
    :cond_2
    const/4 v13, 0x0

    .line 202
    .local v13, nRes:I
    const/4 v7, 0x0

    .line 204
    .local v7, cur:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 205
    .local v12, nFinded:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->size()I

    move-result v14

    .line 209
    .local v14, nTotalCache:I
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetIdIdx()I

    move-result v11

    .line 210
    .local v11, idx_id:I
    invoke-virtual/range {p2 .. p2}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetMediaProviderProjection()[Ljava/lang/String;

    move-result-object v15

    .line 211
    .local v15, project:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v15, v11

    aput-object v2, v3, v1

    .line 213
    .local v3, id_project:[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 215
    if-nez v7, :cond_3

    .line 216
    const/4 v13, 0x0

    .line 250
    .end local v13           #nRes:I
    if-eqz v7, :cond_1

    .line 251
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 252
    const/4 v7, 0x0

    goto :goto_0

    .line 219
    .restart local v13       #nRes:I
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 221
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 223
    .local v10, id:Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-ltz v1, :cond_3

    .line 227
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/MediaCacheService/gallery/FileCache;

    .line 229
    .local v9, entry:Lcom/htc/MediaCacheService/gallery/FileCache;
    if-eqz v9, :cond_5

    .line 231
    iget-boolean v1, v9, Lcom/htc/MediaCacheService/gallery/FileCache;->mbFinded:Z

    if-nez v1, :cond_4

    .line 232
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/htc/MediaCacheService/gallery/FileCache;->mbFinded:Z

    .line 233
    add-int/lit8 v12, v12, 0x1

    .line 236
    :cond_4
    const/4 v1, 0x0

    iput v1, v9, Lcom/htc/MediaCacheService/gallery/FileCache;->mEntryAction:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 239
    :cond_5
    if-ne v12, v14, :cond_3

    .line 250
    .end local v9           #entry:Lcom/htc/MediaCacheService/gallery/FileCache;
    .end local v10           #id:Ljava/lang/Long;
    :cond_6
    if-eqz v7, :cond_1

    .line 251
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 252
    const/4 v7, 0x0

    goto :goto_0

    .line 244
    .end local v3           #id_project:[Ljava/lang/String;
    .end local v11           #idx_id:I
    .end local v15           #project:[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 246
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "MediaCacheScanner"

    const-string v2, "[GalleryImageScanner][add_new_cache]"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    if-eqz v7, :cond_1

    .line 251
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 252
    const/4 v7, 0x0

    goto :goto_0

    .line 250
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_7

    .line 251
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 252
    const/4 v7, 0x0

    :cond_7
    throw v1
.end method

.method public static compare_exist_cache_with_provider(Landroid/content/IContentProvider;Landroid/net/Uri;[Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/FileCacheCreator;Ljava/util/HashMap;)V
    .locals 18
    .parameter "provider"
    .parameter "uri"
    .parameter "projection"
    .parameter "creator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IContentProvider;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Lcom/htc/MediaCacheService/gallery/FileCacheCreator;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/MediaCacheService/gallery/FileCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p4, fileCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    if-eqz p0, :cond_0

    if-nez p4, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    const/4 v9, 0x0

    .line 310
    .local v9, cur:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 311
    .local v15, nFinded:I
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->size()I

    move-result v16

    .line 315
    .local v16, nTotalCache:I
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetDataIdx()I

    move-result v13

    .line 316
    .local v13, idx_data:I
    invoke-virtual/range {p3 .. p3}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetIdIdx()I

    move-result v14

    .line 318
    .local v14, idx_id:I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 320
    if-nez v9, :cond_2

    .line 377
    if-eqz v9, :cond_0

    .line 378
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 379
    const/4 v9, 0x0

    goto :goto_0

    .line 324
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 326
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 328
    .local v17, path:Ljava/lang/String;
    const-string v1, "/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 334
    .local v12, id:Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 338
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/MediaCacheService/gallery/FileCache;

    .line 340
    .local v11, entry:Lcom/htc/MediaCacheService/gallery/FileCache;
    if-eqz v11, :cond_2

    .line 344
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetLongValue(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 345
    .local v7, arrL:[J
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetStringValue(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v8

    .line 347
    .local v8, arrS:[Ljava/lang/String;
    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    .line 351
    iget-boolean v1, v11, Lcom/htc/MediaCacheService/gallery/FileCache;->mbFinded:Z

    if-nez v1, :cond_3

    .line 352
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/htc/MediaCacheService/gallery/FileCache;->mbFinded:Z

    .line 353
    add-int/lit8 v15, v15, 0x1

    .line 356
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v7, v8}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->CompareFileCacheEntry(Lcom/htc/MediaCacheService/gallery/FileCache;[J[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 358
    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v7, v8}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->SetData(Lcom/htc/MediaCacheService/gallery/FileCache;[J[Ljava/lang/String;)Z

    .line 359
    const/4 v1, 0x2

    iput v1, v11, Lcom/htc/MediaCacheService/gallery/FileCache;->mEntryAction:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 366
    :goto_1
    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 377
    .end local v7           #arrL:[J
    .end local v8           #arrS:[Ljava/lang/String;
    .end local v11           #entry:Lcom/htc/MediaCacheService/gallery/FileCache;
    .end local v12           #id:Ljava/lang/Long;
    .end local v17           #path:Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_0

    .line 378
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 379
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 363
    .restart local v7       #arrL:[J
    .restart local v8       #arrS:[Ljava/lang/String;
    .restart local v11       #entry:Lcom/htc/MediaCacheService/gallery/FileCache;
    .restart local v12       #id:Ljava/lang/Long;
    .restart local v17       #path:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    :try_start_2
    iput v1, v11, Lcom/htc/MediaCacheService/gallery/FileCache;->mEntryAction:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 371
    .end local v7           #arrL:[J
    .end local v8           #arrS:[Ljava/lang/String;
    .end local v11           #entry:Lcom/htc/MediaCacheService/gallery/FileCache;
    .end local v12           #id:Ljava/lang/Long;
    .end local v13           #idx_data:I
    .end local v14           #idx_id:I
    .end local v17           #path:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 373
    .local v10, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "MediaCacheScanner"

    const-string v2, "[MediaCacheScanner][update_exist_cache3]"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    if-eqz v9, :cond_0

    .line 378
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 379
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 377
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 378
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 379
    const/4 v9, 0x0

    :cond_6
    throw v1
.end method

.method private deinitialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 44
    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->mCacheProvider:Landroid/content/IContentProvider;

    .line 45
    return-void
.end method

.method public static delete_exist_cache(Landroid/content/IContentProvider;Landroid/net/Uri;Lcom/htc/MediaCacheService/gallery/FileCacheCreator;Ljava/util/HashMap;)I
    .locals 9
    .parameter "provider"
    .parameter "uri"
    .parameter "creator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IContentProvider;",
            "Landroid/net/Uri;",
            "Lcom/htc/MediaCacheService/gallery/FileCacheCreator;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, fileCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;>;"
    const/4 v3, 0x0

    .line 264
    if-eqz p3, :cond_0

    if-nez p0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v3

    .line 268
    :cond_1
    const/4 v3, 0x0

    .line 272
    .local v3, nDel:I
    :try_start_0
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 274
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 276
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;

    .line 278
    .local v1, entry:Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;
    if-eqz v1, :cond_2

    iget-boolean v6, v1, Lcom/htc/MediaCacheService/gallery/FileCache;->mbFinded:Z

    if-nez v6, :cond_2

    .line 280
    const-string v4, "_id=?"

    .line 282
    .local v4, where:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrL:[J

    const/4 v8, 0x0

    aget-wide v7, v7, v8

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 284
    .local v5, wheres:[Ljava/lang/String;
    invoke-interface {p0, p1, v4, v5}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    add-int/2addr v3, v6

    goto :goto_1

    .line 288
    .end local v1           #entry:Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;>;"
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #wheres:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "MediaCacheScanner"

    const-string v7, "[GalleryImageScanner][delete_exist_cache]"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htcmediacache"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->mCacheProvider:Landroid/content/IContentProvider;

    .line 37
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 38
    return-void
.end method


# virtual methods
.method public add_new_cache3(ILcom/htc/MediaCacheService/gallery/FileCacheCreator;)I
    .locals 9
    .parameter "nMaxCount"
    .parameter "creator"

    .prologue
    .line 163
    const/4 v4, 0x0

    .line 164
    .local v4, nStart:I
    const/4 v8, 0x0

    .line 168
    .local v8, nRes:I
    :goto_0
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetMediaProviderUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetMediaProviderProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    move-object v3, p2

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->GetStartFileCacheEntry(Landroid/content/IContentProvider;Landroid/net/Uri;[Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/FileCacheCreator;III)Ljava/util/HashMap;

    move-result-object v7

    .line 174
    .local v7, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    if-nez v7, :cond_0

    .line 187
    return v8

    .line 178
    :cond_0
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/2addr v4, v0

    .line 180
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->mCacheProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetCacheProviderUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p2, v7}, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->check_new_cache3(Landroid/content/IContentProvider;Landroid/net/Uri;Lcom/htc/MediaCacheService/gallery/FileCacheCreator;Ljava/util/HashMap;)I

    .line 182
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->mCacheProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetCacheProviderUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p2, v7}, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->ApplyBatchUpdate(Landroid/content/IContentProvider;Landroid/net/Uri;Lcom/htc/MediaCacheService/gallery/FileCacheCreator;Ljava/util/HashMap;)I

    move-result v0

    add-int/2addr v8, v0

    .line 185
    goto :goto_0
.end method

.method public doScanCache_solution3(ILcom/htc/MediaCacheService/gallery/FileCacheCreator;)Z
    .locals 16
    .parameter "MAX_BUFFER"
    .parameter "creator"

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, bRet:Z
    const-wide/16 v4, 0x0

    .line 82
    .local v4, nUpdate:J
    const-wide/16 v2, 0x0

    .line 86
    .local v2, nAdd:J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->initialize()V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 90
    .local v6, t1:J
    invoke-virtual/range {p0 .. p2}, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->update_exist_cache3(ILcom/htc/MediaCacheService/gallery/FileCacheCreator;)I

    move-result v12

    int-to-long v4, v12

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 94
    .local v8, t2:J
    invoke-virtual/range {p0 .. p2}, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->add_new_cache3(ILcom/htc/MediaCacheService/gallery/FileCacheCreator;)I

    move-result v12

    int-to-long v2, v12

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 98
    .local v10, t3:J
    const-string v12, "MediaCacheScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[doScanMediaCache_solution3] update_exist_cache3+"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v8, v6

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v12, "MediaCacheScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[doScanMediaCache_solution3] add_new_cache3+"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v10, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->deinitialize()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .end local v6           #t1:J
    .end local v8           #t2:J
    .end local v10           #t3:J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-gtz v12, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-lez v12, :cond_1

    .line 116
    :cond_0
    const/4 v0, 0x1

    .line 119
    .end local v0           #bRet:Z
    :cond_1
    return v0

    .line 104
    .restart local v0       #bRet:Z
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Landroid/database/SQLException;
    const-string v12, "MediaCacheScanner"

    const-string v13, "[doScanMediaCache_solution3] SQLException()"

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 109
    .end local v1           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    const-string v12, "MediaCacheScanner"

    const-string v13, "[doScanMediaCache_solution3] Exception()"

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doScanMediaCache(ZZ)Z
    .locals 9
    .parameter "bImage"
    .parameter "bVideo"

    .prologue
    const/4 v6, 0x1

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, bRes1:Z
    const/4 v2, 0x0

    .line 54
    .local v2, bRes2:Z
    const/16 v0, 0x3e8

    .line 56
    .local v0, MAX_BUFFER:I
    if-eqz p1, :cond_0

    .line 57
    :try_start_0
    new-instance v4, Lcom/htc/MediaCacheService/gallery/FileCacheCreator$ImageCacheCreator;

    invoke-direct {v4}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator$ImageCacheCreator;-><init>()V

    .line 58
    .local v4, img_creator:Lcom/htc/MediaCacheService/gallery/FileCacheCreator;
    const/16 v7, 0x3e8

    invoke-virtual {p0, v7, v4}, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->doScanCache_solution3(ILcom/htc/MediaCacheService/gallery/FileCacheCreator;)Z

    move-result v1

    .line 61
    .end local v4           #img_creator:Lcom/htc/MediaCacheService/gallery/FileCacheCreator;
    :cond_0
    if-eqz p2, :cond_1

    .line 62
    new-instance v5, Lcom/htc/MediaCacheService/gallery/FileCacheCreator$VideoCacheCreator;

    invoke-direct {v5}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator$VideoCacheCreator;-><init>()V

    .line 63
    .local v5, video_creator:Lcom/htc/MediaCacheService/gallery/FileCacheCreator;
    const/16 v7, 0x3e8

    invoke-virtual {p0, v7, v5}, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->doScanCache_solution3(ILcom/htc/MediaCacheService/gallery/FileCacheCreator;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 70
    .end local v5           #video_creator:Lcom/htc/MediaCacheService/gallery/FileCacheCreator;
    :cond_1
    :goto_0
    if-eq v1, v6, :cond_2

    if-ne v2, v6, :cond_3

    .line 74
    :cond_2
    :goto_1
    return v6

    .line 66
    :catch_0
    move-exception v3

    .line 67
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "MediaCacheScanner"

    const-string v8, "[GalleryImageScanner][doScanMediaCache]"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public update_exist_cache3(ILcom/htc/MediaCacheService/gallery/FileCacheCreator;)I
    .locals 9
    .parameter "nMaxCount"
    .parameter "creator"

    .prologue
    .line 125
    const/4 v4, 0x0

    .line 127
    .local v4, nStart:I
    const/4 v7, 0x0

    .line 129
    .local v7, filecache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/MediaCacheService/gallery/FileCache;>;"
    const/4 v8, 0x0

    .line 134
    .local v8, nRes:I
    :goto_0
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->mCacheProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetCacheProviderUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetMediaProviderProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    move-object v3, p2

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->GetStartFileCacheEntry(Landroid/content/IContentProvider;Landroid/net/Uri;[Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/FileCacheCreator;III)Ljava/util/HashMap;

    move-result-object v7

    .line 140
    if-nez v7, :cond_0

    .line 158
    return v8

    .line 144
    :cond_0
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/2addr v4, v0

    .line 146
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetMediaProviderUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetMediaProviderProjection()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2, v7}, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->compare_exist_cache_with_provider(Landroid/content/IContentProvider;Landroid/net/Uri;[Ljava/lang/String;Lcom/htc/MediaCacheService/gallery/FileCacheCreator;Ljava/util/HashMap;)V

    .line 152
    iget-object v0, p0, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->mCacheProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;->GetCacheProviderUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p2, v7}, Lcom/htc/MediaCacheService/gallery/GalleryImageScanner;->ApplyBatchUpdate(Landroid/content/IContentProvider;Landroid/net/Uri;Lcom/htc/MediaCacheService/gallery/FileCacheCreator;Ljava/util/HashMap;)I

    move-result v0

    add-int/2addr v8, v0

    goto :goto_0
.end method
