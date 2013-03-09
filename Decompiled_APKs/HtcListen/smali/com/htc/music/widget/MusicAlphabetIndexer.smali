.class public Lcom/htc/music/widget/MusicAlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "MusicAlphabetIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field public static final ALPHABET:Ljava/lang/String; = " ABCDEFGHIJKLMNOPQRSTUVWXYZ"


# instance fields
.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field protected mDataCursor:Landroid/database/Cursor;

.field private mSectionLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 3

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v1, " 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    iput-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mSectionLabel:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iput p2, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mColumnIndex:I

    iput-object p3, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    iget v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mCollator:Ljava/text/Collator;

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
    .locals 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    :cond_0
    const/4 v11, 0x0

    :cond_1
    :goto_0
    return v11

    :cond_2
    if-gtz p1, :cond_3

    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    move/from16 v17, v0

    add-int/lit8 p1, v17, -0x1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v15, 0x0

    move v8, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v16

    move v9, v10

    const/high16 v17, -0x8000

    const/high16 v18, -0x8000

    move/from16 v0, v18

    invoke-virtual {v2, v9, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    move/from16 v0, v17

    if-eq v0, v11, :cond_5

    if-gez v11, :cond_1

    neg-int v11, v11

    move v8, v11

    :cond_5
    if-lez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    add-int/lit8 v18, p1, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/high16 v17, -0x8000

    move/from16 v0, v17

    invoke-virtual {v2, v12, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-eq v13, v0, :cond_6

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    :cond_6
    add-int v17, v8, v15

    div-int/lit8 v11, v17, 0x2

    :goto_1
    if-ge v11, v8, :cond_9

    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mColumnIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v17, "<unknown>"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_7
    move v8, v11

    add-int v17, v15, v8

    div-int/lit8 v11, v17, 0x2

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_e

    if-gez v7, :cond_c

    add-int/lit8 v15, v11, 0x1

    if-lt v15, v3, :cond_d

    move v11, v3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mSectionLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    if-ge v11, v3, :cond_b

    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mColumnIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mSectionLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-gez v17, :cond_b

    :cond_a
    move v11, v3

    :cond_b
    invoke-virtual {v2, v9, v11}, Landroid/util/SparseIntArray;->put(II)V

    invoke-interface {v6, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    :cond_c
    move v8, v11

    :cond_d
    :goto_2
    add-int v17, v15, v8

    div-int/lit8 v11, v17, 0x2

    goto :goto_1

    :cond_e
    if-eq v15, v11, :cond_9

    move v8, v11

    goto :goto_2
.end method

.method public getSectionForPosition(I)I
    .locals 7

    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mColumnIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetLength:I

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/htc/music/widget/MusicAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
