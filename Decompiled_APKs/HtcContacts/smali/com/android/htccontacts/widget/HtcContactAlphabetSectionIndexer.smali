.class public Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;
.super Lcom/android/htccontacts/widget/HtcAlphabetIndexer;
.source "HtcContactAlphabetSectionIndexer.java"


# instance fields
.field private mCount:I

.field private mPositions:[I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "alphabet"

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 12
    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mCount:I

    .line 14
    iput-object v1, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mPositions:[I

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;[Ljava/lang/String;[I)V
    .locals 2
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "alphabet"
    .parameter "sections"
    .parameter "counts"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 20
    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24
    :cond_1
    array-length v0, p4

    array-length v1, p5

    if-eq v0, v1, :cond_2

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The sections and counts arrays must have the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_2
    invoke-virtual {p0, p4, p5}, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->changeSections([Ljava/lang/String;[I)V

    .line 48
    return-void
.end method


# virtual methods
.method public changeSections([Ljava/lang/String;[I)V
    .locals 4
    .parameter "sections"
    .parameter "counts"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    .line 52
    if-eqz p2, :cond_3

    .line 53
    array-length v2, p2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mPositions:[I

    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 56
    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v0

    .line 66
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mPositions:[I

    aput v1, v2, v0

    .line 67
    aget v2, p2, v0

    add-int/2addr v1, v2

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 60
    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v0

    goto :goto_1

    .line 69
    :cond_2
    iput v1, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mCount:I

    .line 74
    .end local v0           #i:I
    .end local v1           #position:I
    :goto_2
    return-void

    .line 71
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mPositions:[I

    .line 72
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mCount:I

    goto :goto_2
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 93
    :goto_0
    return v0

    .line 89
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 90
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mPositions:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->getSectionForPositionByAlphabeta(I)I

    move-result v0

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    if-ltz p1, :cond_2

    iget v1, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mCount:I

    if-lt p1, v1, :cond_3

    .line 102
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 115
    .local v0, index:I
    if-gez v0, :cond_0

    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_0
.end method

.method public getSectionForPositionByAlphabeta(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 119
    iget-object v5, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 120
    .local v3, savedCursorPos:I
    iget-object v5, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 121
    iget-object v5, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mColumnIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, curName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 125
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    if-ge v1, v5, :cond_1

    .line 126
    iget-object v5, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 127
    .local v2, letter:C
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, targetLetter:Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 132
    .end local v1           #i:I
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :goto_1
    return v1

    .line 125
    .restart local v1       #i:I
    .restart local v2       #letter:C
    .restart local v4       #targetLetter:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v2           #letter:C
    .end local v4           #targetLetter:Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 78
    invoke-super {p0}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 138
    iput-object v0, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mSections:[Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/android/htccontacts/widget/HtcContactAlphabetSectionIndexer;->mPositions:[I

    .line 140
    return-void
.end method
