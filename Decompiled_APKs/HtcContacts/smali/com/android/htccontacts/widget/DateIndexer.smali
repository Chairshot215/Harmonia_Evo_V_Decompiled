.class public Lcom/android/htccontacts/widget/DateIndexer;
.super Landroid/database/DataSetObserver;
.source "DateIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field baseTime:J

.field final dayUnit:J

.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field mContext:Landroid/content/Context;

.field private mCount:I

.field private mCounts:[I

.field protected mDataCursor:Landroid/database/Cursor;

.field private mPositions:[I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "alphabet"

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 85
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->dayUnit:J

    .line 100
    iput-object p1, p0, Lcom/android/htccontacts/widget/DateIndexer;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/htccontacts/widget/DateIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 102
    iput p3, p0, Lcom/android/htccontacts/widget/DateIndexer;->mColumnIndex:I

    .line 103
    iput-object p4, p0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 104
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabetLength:I

    .line 105
    iget v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabetLength:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/android/htccontacts/widget/DateIndexer;->createIndexerSection()V

    .line 114
    new-instance v0, Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabetLength:I

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 115
    if-eqz p2, :cond_0

    .line 116
    invoke-interface {p2, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 119
    :cond_0
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mCollator:Ljava/text/Collator;

    .line 120
    iget-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 122
    return-void
.end method

.method private calDateArray()V
    .locals 17

    .prologue
    .line 433
    const-wide/16 v7, 0x0

    .line 434
    .local v7, tStart:J
    const-wide/16 v5, 0x0

    .line 435
    .local v5, tEnd:J
    const/4 v4, 0x0

    .line 436
    .local v4, tDur:I
    const-wide/16 v9, 0x0

    .line 437
    .local v9, timeInMillis:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/widget/DateIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 438
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 442
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/htccontacts/widget/DateIndexer;->mColumnIndex:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/android/htccontacts/widget/DateIndexer;->baseTime:J

    .line 443
    const-wide/32 v11, 0x5265c00

    div-long/2addr v7, v11

    .line 445
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 446
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/htccontacts/widget/DateIndexer;->mColumnIndex:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 447
    const-wide/32 v11, 0x5265c00

    div-long/2addr v5, v11

    .line 449
    :cond_3
    sub-long v11, v7, v5

    long-to-int v4, v11

    .line 450
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 452
    const/16 v11, 0x3c

    if-lt v4, v11, :cond_4

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/widget/DateIndexer;->createIndexerSection()V

    .line 455
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabetLength:I

    new-array v11, v11, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabetArray:[Ljava/lang/String;

    goto :goto_0

    .line 460
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/widget/DateIndexer;->clearSection()V

    .line 463
    add-int/lit8 v11, v4, 0x1

    new-array v11, v11, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 465
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-gt v3, v4, :cond_0

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/widget/DateIndexer;->getDateFormat()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, currentFormat:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/htccontacts/widget/DateIndexer;->baseTime:J

    int-to-long v13, v3

    const-wide/32 v15, 0x5265c00

    mul-long/2addr v13, v15

    sub-long v9, v11, v13

    .line 468
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabetArray:[Ljava/lang/String;

    invoke-static {v1, v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    .line 465
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private clearSection()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mSections:[Ljava/lang/String;

    .line 307
    iput-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mPositions:[I

    .line 308
    iput-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mCounts:[I

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mCount:I

    .line 310
    return-void
.end method

.method private createIndexerSection()V
    .locals 29

    .prologue
    .line 312
    const-wide/16 v22, 0x0

    .line 313
    .local v22, timeInMillis:J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/widget/DateIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 314
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 392
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/widget/DateIndexer;->getDateFormat()Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, currentFormat:Ljava/lang/CharSequence;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v24, timeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 324
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->mColumnIndex:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 326
    const-wide/32 v25, 0x5265c00

    div-long v25, v22, v25

    const-wide/32 v27, 0x5265c00

    mul-long v22, v25, v27

    .line 328
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-nez v25, :cond_1

    .line 334
    :cond_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 335
    .local v21, size:I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v20, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v4, counts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-wide/16 v12, -0x1

    .line 338
    .local v12, lastTime:J
    const/16 v19, -0x1

    .line 339
    .local v19, sectionIndex:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move/from16 v0, v21

    if-ge v10, v0, :cond_5

    .line 340
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 342
    .local v15, millis:J
    cmp-long v25, v15, v12

    if-eqz v25, :cond_4

    .line 343
    move-wide v0, v15

    invoke-static {v6, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, dateStr:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    add-int/lit8 v19, v19, 0x1

    .line 346
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v9           #dateStr:Ljava/lang/String;
    :cond_3
    :goto_2
    move-wide v12, v15

    .line 339
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 350
    :cond_4
    if-ltz v19, :cond_3

    .line 351
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 352
    .local v5, curCount:I
    add-int/lit8 v25, v5, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 358
    .end local v5           #curCount:I
    .end local v15           #millis:J
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/widget/DateIndexer;->mSections:[Ljava/lang/String;

    .line 360
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 361
    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/widget/DateIndexer;->mCounts:[I

    .line 363
    const/4 v10, 0x0

    :goto_3
    move/from16 v0, v21

    if-ge v10, v0, :cond_6

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->mCounts:[I

    move-object/from16 v26, v0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    aput v25, v26, v10

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->mSections:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    aput-object v25, v26, v10

    .line 363
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 369
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->mCounts:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/widget/DateIndexer;->mPositions:[I

    .line 370
    const/16 v18, 0x0

    .line 371
    .local v18, position:I
    const/4 v10, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->mCounts:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_7

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->mPositions:[I

    move-object/from16 v25, v0

    aput v18, v25, v10

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->mCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v10

    add-int v18, v18, v25

    .line 371
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 375
    :cond_7
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/htccontacts/widget/DateIndexer;->mCount:I

    .line 379
    const-string v25, "DateIndexer"

    const-string v26, "createIndexerSection ############################# E"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/widget/DateIndexer;->mSections:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v14, v2

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_5
    if-ge v11, v14, :cond_8

    aget-object v8, v2, v11

    .line 381
    .local v8, date:Ljava/lang/String;
    const-string v25, "DateIndexer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mSections: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 383
    .end local v8           #date:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/widget/DateIndexer;->mCounts:[I

    .local v2, arr$:[I
    array-length v14, v2

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v14, :cond_9

    aget v3, v2, v11

    .line 384
    .local v3, count:I
    const-string v25, "DateIndexer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mCounts: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 387
    .end local v3           #count:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/widget/DateIndexer;->mPositions:[I

    array-length v14, v2

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v14, :cond_a

    aget v17, v2, v11

    .line 388
    .local v17, pos:I
    const-string v25, "DateIndexer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mPositions: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 390
    .end local v17           #pos:I
    :cond_a
    const-string v25, "DateIndexer"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mCount: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->mCount:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v25, "DateIndexer"

    const-string v26, "createIndexerSection ############################# X"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 7

    .prologue
    .line 474
    const-string v1, "EE,"

    .line 475
    .local v1, patten1:Ljava/lang/String;
    const-string v2, ", EE"

    .line 476
    .local v2, patten2:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/widget/DateIndexer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, res:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 487
    .end local v3           #res:Ljava/lang/String;
    .local v4, res:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 482
    .end local v4           #res:Ljava/lang/String;
    .restart local v3       #res:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 483
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v0, v5, v6

    .line 484
    .local v0, len:I
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 485
    .end local v3           #res:Ljava/lang/String;
    .restart local v4       #res:Ljava/lang/String;
    goto :goto_0

    .end local v0           #len:I
    .end local v4           #res:Ljava/lang/String;
    .restart local v3       #res:Ljava/lang/String;
    :cond_1
    move-object v4, v3

    .line 487
    .end local v3           #res:Ljava/lang/String;
    .restart local v4       #res:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/htccontacts/widget/DateIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 302
    invoke-direct {p0}, Lcom/android/htccontacts/widget/DateIndexer;->createIndexerSection()V

    .line 303
    return-void
.end method

.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "word"
    .parameter "letter"

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const-string v0, " "

    .line 163
    .local v0, firstLetter:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/widget/DateIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v0, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 160
    .end local v0           #firstLetter:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #firstLetter:Ljava/lang/String;
    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .parameter "section"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mSections:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/DateIndexer;->getPositionForSectionByAlphaBeta(I)I

    move-result v0

    .line 403
    :goto_0
    return v0

    .line 398
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 399
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 402
    :cond_2
    const-string v0, "DateIndexer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPositionForSection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/widget/DateIndexer;->mPositions:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mPositions:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getPositionForSectionByAlphaBeta(I)I
    .locals 25
    .parameter "sectionIndex"

    .prologue
    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 177
    .local v2, alphaMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/widget/DateIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 178
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 179
    :cond_0
    const/4 v12, 0x0

    .line 259
    :cond_1
    :goto_0
    return v12

    .line 182
    :cond_2
    if-gtz p1, :cond_3

    .line 183
    const/4 v12, 0x0

    goto :goto_0

    .line 185
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabetLength:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabetLength:I

    move/from16 v19, v0

    add-int/lit8 p1, v19, -0x1

    .line 189
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v15

    .line 191
    .local v15, savedCursorPos:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 192
    .local v3, count:I
    const/16 v16, 0x0

    .line 193
    .local v16, start:I
    move v8, v3

    .line 196
    .local v8, end:I
    const-wide/16 v10, 0x0

    .line 197
    .local v10, letter:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->baseTime:J

    move-wide/from16 v19, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/32 v23, 0x5265c00

    mul-long v21, v21, v23

    sub-long v10, v19, v21

    .line 199
    move-wide/from16 v17, v10

    .line 200
    .local v17, targetLetter:J
    long-to-int v9, v10

    .line 202
    .local v9, key:I
    const/high16 v19, -0x8000

    const/high16 v20, -0x8000

    move/from16 v0, v20

    invoke-virtual {v2, v9, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .local v12, pos:I
    move/from16 v0, v19

    if-eq v0, v12, :cond_5

    .line 203
    if-gez v12, :cond_1

    .line 204
    neg-int v12, v12

    .line 205
    move v8, v12

    .line 211
    :cond_5
    if-lez p1, :cond_6

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    add-int/lit8 v20, p1, -0x1

    invoke-interface/range {v19 .. v20}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 214
    .local v13, prevLetter:I
    const/high16 v19, -0x8000

    move/from16 v0, v19

    invoke-virtual {v2, v13, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    .line 215
    .local v14, prevLetterPos:I
    const/high16 v19, -0x8000

    move/from16 v0, v19

    if-eq v14, v0, :cond_6

    .line 216
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 220
    .end local v13           #prevLetter:I
    .end local v14           #prevLetterPos:I
    :cond_6
    add-int v19, v8, v16

    div-int/lit8 v12, v19, 0x2

    .line 222
    :goto_1
    if-ge v12, v8, :cond_8

    .line 223
    invoke-interface {v6, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/widget/DateIndexer;->mColumnIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 226
    .local v4, curName:J
    const/4 v7, 0x0

    .line 228
    .local v7, diff:I
    const-wide/32 v19, 0x5265c00

    div-long v19, v4, v19

    const-wide/32 v21, 0x5265c00

    div-long v21, v17, v21

    cmp-long v19, v19, v21

    if-nez v19, :cond_9

    .line 229
    const/4 v7, 0x0

    .line 236
    :cond_7
    :goto_2
    if-eqz v7, :cond_d

    .line 237
    if-gez v7, :cond_b

    .line 238
    add-int/lit8 v16, v12, 0x1

    .line 239
    move/from16 v0, v16

    if-lt v0, v3, :cond_c

    .line 240
    move v12, v3

    .line 257
    .end local v4           #curName:J
    .end local v7           #diff:I
    :cond_8
    invoke-virtual {v2, v9, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    invoke-interface {v6, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 230
    .restart local v4       #curName:J
    .restart local v7       #diff:I
    :cond_9
    const-wide/32 v19, 0x5265c00

    div-long v19, v4, v19

    const-wide/32 v21, 0x5265c00

    div-long v21, v17, v21

    cmp-long v19, v19, v21

    if-gez v19, :cond_a

    .line 231
    const/4 v7, 0x1

    goto :goto_2

    .line 232
    :cond_a
    const-wide/32 v19, 0x5265c00

    div-long v19, v4, v19

    const-wide/32 v21, 0x5265c00

    div-long v21, v17, v21

    cmp-long v19, v19, v21

    if-lez v19, :cond_7

    .line 233
    const/4 v7, -0x1

    goto :goto_2

    .line 244
    :cond_b
    move v8, v12

    .line 253
    :cond_c
    :goto_3
    add-int v19, v16, v8

    div-int/lit8 v12, v19, 0x2

    .line 255
    goto :goto_1

    .line 247
    :cond_d
    move/from16 v0, v16

    if-eq v0, v12, :cond_8

    .line 250
    move v8, v12

    goto :goto_3
.end method

.method public getSectionForPosition(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 407
    iget-object v2, p0, Lcom/android/htccontacts/widget/DateIndexer;->mSections:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/DateIndexer;->getSectionForPositionByAlphaBeta(I)I

    move-result v1

    .line 429
    :goto_0
    return v1

    .line 411
    :cond_0
    if-ltz p1, :cond_1

    iget v2, p0, Lcom/android/htccontacts/widget/DateIndexer;->mCount:I

    if-lt p1, v2, :cond_2

    .line 412
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/widget/DateIndexer;->mPositions:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 425
    .local v0, index:I
    if-ltz v0, :cond_3

    move v1, v0

    .line 427
    .local v1, section:I
    :goto_1
    const-string v2, "DateIndexer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSectionForPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    .end local v1           #section:I
    :cond_3
    neg-int v2, v0

    add-int/lit8 v1, v2, -0x2

    goto :goto_1
.end method

.method public getSectionForPositionByAlphaBeta(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 267
    iget-object v5, p0, Lcom/android/htccontacts/widget/DateIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 268
    .local v3, savedCursorPos:I
    iget-object v5, p0, Lcom/android/htccontacts/widget/DateIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 269
    iget-object v5, p0, Lcom/android/htccontacts/widget/DateIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/htccontacts/widget/DateIndexer;->mColumnIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, curName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/widget/DateIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 272
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabetLength:I

    if-ge v1, v5, :cond_1

    .line 273
    iget-object v5, p0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 274
    .local v2, letter:C
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, targetLetter:Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/android/htccontacts/widget/DateIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 279
    .end local v1           #i:I
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :goto_1
    return v1

    .line 272
    .restart local v1       #i:I
    .restart local v2       #letter:C
    .restart local v4       #targetLetter:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mSections:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mSections:[Ljava/lang/String;

    goto :goto_0
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 288
    iget-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 289
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 297
    iget-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 298
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/android/htccontacts/widget/DateIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 146
    if-eqz p1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/DateIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 150
    return-void
.end method
