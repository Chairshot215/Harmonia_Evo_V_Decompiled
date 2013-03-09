.class public Lcom/htc/android/worldclock/widget/AlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "AlphabetIndexer.java"


# instance fields
.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabetArray:[Ljava/lang/Object;

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field protected mDataCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I[Ljava/lang/Object;)V
    .locals 2
    .parameter "cursor"
    .parameter "columnIndex"
    .parameter "sections"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 56
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 57
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 58
    iput p2, p0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mColumnIndex:I

    .line 59
    iput-object p3, p0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/Object;

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 65
    :cond_0
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 66
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public indexOf(I)I
    .locals 17
    .parameter "sectionIndex"

    .prologue
    .line 99
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 101
    .local v1, alphaMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 103
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/Object;

    if-nez v15, :cond_2

    .line 104
    :cond_0
    const/4 v10, 0x0

    .line 197
    :cond_1
    :goto_0
    return v10

    .line 108
    :cond_2
    if-gtz p1, :cond_3

    .line 109
    const/4 v10, 0x0

    goto :goto_0

    .line 111
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/Object;

    array-length v15, v15

    move/from16 v0, p1

    if-lt v0, v15, :cond_4

    .line 112
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/Object;

    array-length v15, v15

    add-int/lit8 p1, v15, -0x1

    .line 115
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 117
    .local v13, savedCursorPos:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 118
    .local v2, count:I
    const/4 v14, 0x0

    .line 119
    .local v14, start:I
    move v7, v2

    .line 122
    .local v7, end:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/Object;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, letter:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 124
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 126
    .local v8, key:I
    const/high16 v15, -0x8000

    const/high16 v16, -0x8000

    move/from16 v0, v16

    invoke-virtual {v1, v8, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .local v10, pos:I
    if-eq v15, v10, :cond_5

    .line 130
    if-gez v10, :cond_1

    .line 131
    neg-int v10, v10

    .line 132
    move v7, v10

    .line 140
    :cond_5
    if-lez p1, :cond_6

    .line 141
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/Object;

    add-int/lit8 v16, p1, -0x1

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 143
    .local v11, prevLetter:I
    const/high16 v15, -0x8000

    invoke-virtual {v1, v11, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 144
    .local v12, prevLetterPos:I
    const/high16 v15, -0x8000

    if-eq v12, v15, :cond_6

    .line 145
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 151
    .end local v11           #prevLetter:I
    .end local v12           #prevLetterPos:I
    :cond_6
    add-int v15, v7, v14

    div-int/lit8 v10, v15, 0x2

    .line 153
    :goto_1
    if-ge v10, v7, :cond_7

    .line 155
    invoke-interface {v6, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 156
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mColumnIndex:I

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, curName:Ljava/lang/String;
    if-nez v4, :cond_9

    .line 158
    if-nez v10, :cond_8

    .line 195
    .end local v4           #curName:Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-virtual {v1, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    invoke-interface {v6, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 161
    .restart local v4       #curName:Ljava/lang/String;
    :cond_8
    add-int/lit8 v10, v10, -0x1

    .line 162
    goto :goto_1

    .line 165
    :cond_9
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 167
    .local v3, curLetter:I
    if-eq v3, v8, :cond_e

    .line 169
    const/high16 v15, -0x8000

    invoke-virtual {v1, v3, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 170
    .local v5, curPos:I
    const/high16 v15, -0x8000

    if-eq v5, v15, :cond_a

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v15

    if-le v15, v10, :cond_b

    .line 172
    :cond_a
    neg-int v15, v10

    invoke-virtual {v1, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v15, v4, v9}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_c

    .line 175
    add-int/lit8 v14, v10, 0x1

    .line 176
    if-lt v14, v2, :cond_d

    .line 177
    move v10, v2

    .line 178
    goto :goto_2

    .line 181
    :cond_c
    move v7, v10

    .line 193
    .end local v5           #curPos:I
    :cond_d
    :goto_3
    add-int v15, v14, v7

    div-int/lit8 v10, v15, 0x2

    .line 194
    goto :goto_1

    .line 185
    :cond_e
    if-eq v14, v10, :cond_7

    .line 190
    move v7, v10

    goto :goto_3
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 203
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 204
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 205
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 210
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 211
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 212
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 76
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 77
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 81
    if-eqz p1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 85
    return-void
.end method
