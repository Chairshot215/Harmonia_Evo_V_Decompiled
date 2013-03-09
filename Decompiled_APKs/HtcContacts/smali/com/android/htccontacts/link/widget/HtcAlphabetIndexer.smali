.class public Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;
.super Landroid/widget/AlphabetIndexer;
.source "HtcAlphabetIndexer.java"


# instance fields
.field protected mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabetLength:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "alphabet"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 17
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    .line 18
    new-instance v0, Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 19
    return-void
.end method

.method private calculateReturnPos(ILjava/util/ArrayList;)I
    .locals 5
    .parameter "pos"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, listPosition:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v2, "LUCY_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------POS1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 159
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    .line 160
    .local v0, lastIndex:J
    int-to-long v2, p1

    add-long/2addr v2, v0

    long-to-int p1, v2

    .line 166
    .end local v0           #lastIndex:J
    :goto_0
    const-string v2, "LUCY_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------POS2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return p1

    .line 163
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getPositionForSection(ILjava/util/ArrayList;)I
    .locals 19
    .parameter "sectionIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, listPosition:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 46
    .local v2, alphaMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 48
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v16, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v16, :cond_1

    .line 49
    :cond_0
    const/16 v16, 0x0

    .line 151
    :goto_0
    monitor-exit p0

    return v16

    .line 53
    :cond_1
    if-gtz p1, :cond_2

    .line 54
    const/16 v16, 0x0

    goto :goto_0

    .line 56
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    move/from16 v16, v0

    move/from16 v0, p1

    move/from16 v1, v16

    if-lt v0, v1, :cond_3

    .line 57
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    move/from16 v16, v0

    add-int/lit8 p1, v16, -0x1

    .line 60
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 62
    .local v13, savedCursorPos:I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 63
    .local v3, count:I
    const/4 v14, 0x0

    .line 64
    .local v14, start:I
    move v7, v3

    .line 67
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 68
    .local v9, letter:C
    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    .line 69
    .local v15, targetLetter:Ljava/lang/String;
    move v8, v9

    .line 71
    .local v8, key:I
    const/high16 v16, -0x8000

    const/high16 v17, -0x8000

    move/from16 v0, v17

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .local v10, pos:I
    move/from16 v0, v16

    if-eq v0, v10, :cond_4

    .line 75
    if-gez v10, :cond_8

    .line 76
    neg-int v10, v10

    .line 77
    move v7, v10

    .line 85
    :cond_4
    if-lez p1, :cond_5

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    add-int/lit8 v17, p1, -0x1

    invoke-interface/range {v16 .. v17}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 88
    .local v11, prevLetter:I
    const/high16 v16, -0x8000

    move/from16 v0, v16

    invoke-virtual {v2, v11, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 89
    .local v12, prevLetterPos:I
    const/high16 v16, -0x8000

    move/from16 v0, v16

    if-eq v12, v0, :cond_5

    .line 90
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 96
    .end local v11           #prevLetter:I
    .end local v12           #prevLetterPos:I
    :cond_5
    add-int v16, v7, v14

    div-int/lit8 v10, v16, 0x2

    .line 98
    :goto_1
    if-ge v10, v7, :cond_7

    .line 100
    invoke-interface {v5, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 101
    const-string v16, "LUCY_DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "--------POS: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v16, "LUCY_DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "--------mColumnIndex: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mColumnIndex:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mColumnIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, curName:Ljava/lang/String;
    if-nez v4, :cond_6

    const-string v4, ""

    .line 105
    :cond_6
    if-nez v4, :cond_a

    .line 106
    if-nez v10, :cond_9

    .line 148
    .end local v4           #curName:Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-virtual {v2, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    invoke-interface {v5, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->calculateReturnPos(ILjava/util/ArrayList;)I

    move-result v16

    goto/16 :goto_0

    .line 80
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->calculateReturnPos(ILjava/util/ArrayList;)I

    move-result v16

    goto/16 :goto_0

    .line 109
    .restart local v4       #curName:Ljava/lang/String;
    :cond_9
    add-int/lit8 v10, v10, -0x1

    .line 110
    goto :goto_1

    .line 113
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 114
    .local v6, diff:I
    if-eqz v6, :cond_d

    .line 126
    if-gez v6, :cond_b

    .line 127
    add-int/lit8 v14, v10, 0x1

    .line 128
    if-lt v14, v3, :cond_c

    .line 129
    move v10, v3

    .line 130
    goto :goto_2

    .line 133
    :cond_b
    move v7, v10

    .line 145
    :cond_c
    :goto_3
    add-int v16, v14, v7

    div-int/lit8 v10, v16, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    goto/16 :goto_1

    .line 137
    :cond_d
    if-eq v14, v10, :cond_7

    .line 142
    move v7, v10

    goto :goto_3

    .line 45
    .end local v2           #alphaMap:Landroid/util/SparseIntArray;
    .end local v3           #count:I
    .end local v4           #curName:Ljava/lang/String;
    .end local v5           #cursor:Landroid/database/Cursor;
    .end local v6           #diff:I
    .end local v7           #end:I
    .end local v8           #key:I
    .end local v9           #letter:C
    .end local v10           #pos:I
    .end local v13           #savedCursorPos:I
    .end local v14           #start:I
    .end local v15           #targetLetter:Ljava/lang/String;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/AlphabetIndexer;->onChanged()V

    .line 32
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 33
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/AlphabetIndexer;->onInvalidated()V

    .line 41
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 42
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 23
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 24
    return-void
.end method
