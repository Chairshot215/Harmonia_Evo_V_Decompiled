.class public Lcom/htc/music/widget/HtcAlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "HtcAlphabetIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field protected mDataCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 3

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    iput-object p1, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iput p2, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mColumnIndex:I

    iput-object p3, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    iget v1, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-nez v15, :cond_1

    :cond_0
    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_1
    if-gtz p1, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    move/from16 v0, p1

    if-lt v0, v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    add-int/lit8 p1, v15, -0x1

    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v13, 0x0

    move v6, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v14

    move v7, v8

    const/high16 v15, -0x8000

    const/high16 v16, -0x8000

    move/from16 v0, v16

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-eq v15, v9, :cond_4

    if-gez v9, :cond_7

    neg-int v9, v9

    move v6, v9

    :cond_4
    if-lez p1, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v16, p1, -0x1

    invoke-interface/range {v15 .. v16}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/high16 v15, -0x8000

    invoke-virtual {v1, v10, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    const/high16 v15, -0x8000

    if-eq v11, v15, :cond_5

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v13

    :cond_5
    add-int v15, v6, v13

    div-int/lit8 v9, v15, 0x2

    :goto_1
    if-ge v9, v6, :cond_6

    invoke-interface {v4, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mColumnIndex:I

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_6
    :goto_2
    invoke-virtual {v1, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    invoke-interface {v4, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v15, "HtcAlphabetIndexer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mpos:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v15, "HtcAlphabetIndexer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "pos:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/htc/music/widget/HtcAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_b

    if-gez v5, :cond_9

    add-int/lit8 v13, v9, 0x1

    if-lt v13, v2, :cond_a

    move v9, v2

    goto :goto_2

    :cond_9
    move v6, v9

    :cond_a
    :goto_3
    add-int v15, v13, v6

    div-int/lit8 v9, v15, 0x2

    goto :goto_1

    :cond_b
    if-eq v13, v9, :cond_6

    move v6, v9

    goto :goto_3
.end method

.method public getSectionForPosition(I)I
    .locals 8

    iget-object v5, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget-object v5, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v5, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v5, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mColumnIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/htc/music/widget/HtcAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "HtcAlphabetIndexer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "section:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "HtcAlphabetIndexer"

    const-string v6, "section:0"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
