.class final Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/provider/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mStorage:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "storage"

    .prologue
    .line 438
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 439
    iput-object p1, p0, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 440
    iput-object p3, p0, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->mStorage:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    .line 441
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->mStorage:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lcom/htc/musicenhancer/provider/DownloadProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;II)V
    invoke-static {p1, v0, v1, v2}, Lcom/htc/musicenhancer/provider/DownloadProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;II)V

    .line 446
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 20
    .parameter "db"

    .prologue
    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->mStorage:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    move-object/from16 v17, v0

    sget-object v18, Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;->INTERNAL:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 506
    :cond_0
    return-void

    .line 460
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    .local v4, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 462
    .local v10, now:J
    invoke-virtual {v4, v10, v11}, Ljava/io/File;->setLastModified(J)Z

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, databases:[Ljava/lang/String;
    array-length v2, v3

    .line 467
    .local v2, count:I
    const/16 v6, 0xa

    .line 470
    .local v6, limit:I
    const-wide v17, 0x134fd9000L

    sub-long v15, v10, v17

    .line 471
    .local v15, twoMonthsAgo:J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_4

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    aget-object v18, v3, v5

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 473
    .local v12, other:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    .line 474
    .local v13, time:J
    cmp-long v17, v13, v15

    if-gez v17, :cond_2

    .line 475
    const-string v17, "[DownloadProvider]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Deleting old database "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v3, v5

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/musicenhancer/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    aget-object v18, v3, v5

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 477
    const/16 v17, 0x0

    aput-object v17, v3, v5

    .line 478
    add-int/lit8 v2, v2, -0x1

    .line 471
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 499
    .end local v12           #other:Ljava/io/File;
    .end local v13           #time:J
    .local v7, lruIndex:I
    .local v8, lruTime:J
    :cond_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_4

    .line 500
    const-string v17, "[DownloadProvider]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Deleting old database "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v3, v7

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/musicenhancer/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    aget-object v18, v3, v7

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 502
    const/16 v17, 0x0

    aput-object v17, v3, v7

    .line 503
    add-int/lit8 v2, v2, -0x1

    .line 484
    .end local v7           #lruIndex:I
    .end local v8           #lruTime:J
    :cond_4
    if-le v2, v6, :cond_0

    .line 485
    const/4 v7, -0x1

    .line 486
    .restart local v7       #lruIndex:I
    const-wide/16 v8, 0x0

    .line 488
    .restart local v8       #lruTime:J
    const/4 v5, 0x0

    :goto_1
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_3

    .line 489
    aget-object v17, v3, v5

    if-eqz v17, :cond_6

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    aget-object v18, v3, v5

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    .line 491
    .restart local v13       #time:J
    const-wide/16 v17, 0x0

    cmp-long v17, v8, v17

    if-eqz v17, :cond_5

    cmp-long v17, v13, v8

    if-gez v17, :cond_6

    .line 492
    :cond_5
    move v7, v5

    .line 493
    move-wide v8, v13

    .line 488
    .end local v13           #time:J
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/htc/musicenhancer/provider/DownloadProvider$DatabaseHelper;->mStorage:Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;

    #calls: Lcom/htc/musicenhancer/provider/DownloadProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;II)V
    invoke-static {p1, v0, p2, p3}, Lcom/htc/musicenhancer/provider/DownloadProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;Lcom/htc/musicenhancer/provider/DownloadProvider$STORAGE;II)V

    .line 451
    return-void
.end method
