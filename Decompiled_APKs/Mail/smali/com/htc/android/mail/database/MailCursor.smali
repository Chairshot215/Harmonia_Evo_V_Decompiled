.class public Lcom/htc/android/mail/database/MailCursor;
.super Lcom/htc/android/mail/database/AbstractMailCursor;
.source "MailCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MailCursor"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/htc/android/mail/database/AbstractMailCursor;-><init>(Landroid/database/Cursor;)V

    .line 16
    return-void
.end method


# virtual methods
.method public delete(J)V
    .locals 9
    .parameter "messageId"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, -0x1

    .line 20
    iget-object v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mIdToPosMap:Lcom/htc/android/mail/util/SparseLongArray;

    if-nez v4, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mIdToPosMap:Lcom/htc/android/mail/util/SparseLongArray;

    invoke-virtual {v4, p1, p2, v7, v8}, Lcom/htc/android/mail/util/SparseLongArray;->get(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    .line 24
    .local v3, position:I
    if-eq v3, v6, :cond_0

    .line 26
    iget-object v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mIdToPosMap:Lcom/htc/android/mail/util/SparseLongArray;

    invoke-virtual {v4, p1, p2, v7, v8}, Lcom/htc/android/mail/util/SparseLongArray;->put(JJ)V

    .line 27
    iget v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCountDeleted:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCountDeleted:I

    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, i:I
    iget-object v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mOffsetToNewList:Ljava/util/LinkedList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 32
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 34
    .local v1, integer:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 43
    .end local v1           #integer:Ljava/lang/Integer;
    :cond_2
    :goto_2
    if-eq v0, v6, :cond_3

    .line 44
    iget-object v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mOffsetToNewList:Ljava/util/LinkedList;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v0, v5}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 45
    sub-int/2addr v3, v0

    .line 48
    :cond_3
    iput v6, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    .line 49
    iget-object v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 36
    .restart local v1       #integer:Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 37
    const/4 v0, -0x1

    .line 38
    goto :goto_2

    .line 40
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget v2, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCountDeleted:I

    sub-int v0, v1, v2

    .line 91
    .local v0, count:I
    if-gez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :cond_0
    return v0
.end method

.method public onMove(II)Z
    .locals 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v3, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mOffsetToNewList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 101
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 104
    .local v1, position:Ljava/lang/Integer;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #position:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 106
    .restart local v1       #position:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    .line 119
    .end local v0           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1           #position:Ljava/lang/Integer;
    :cond_1
    return v2

    .line 114
    .restart local v0       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v1       #position:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public prepareIdToPosMap()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 69
    iget-object v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 75
    .local v3, idColumnIDX:I
    iget-object v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, i:I
    new-instance v4, Lcom/htc/android/mail/util/SparseLongArray;

    iget-object v5, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/htc/android/mail/util/SparseLongArray;-><init>(I)V

    iput-object v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mIdToPosMap:Lcom/htc/android/mail/util/SparseLongArray;

    .line 78
    :goto_0
    iget-object v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 80
    .local v1, id:J
    iget-object v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mIdToPosMap:Lcom/htc/android/mail/util/SparseLongArray;

    int-to-long v5, v0

    invoke-virtual {v4, v1, v2, v5, v6}, Lcom/htc/android/mail/util/SparseLongArray;->put(JJ)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 84
    goto :goto_0

    .line 85
    .end local v1           #id:J
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 86
    return-void
.end method

.method public setMessageStatusDelete(Lcom/htc/android/mail/AbsRequestController$MessageStatus;)V
    .locals 4
    .parameter "messageStatus"

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->getIdList()[J

    move-result-object v1

    .line 56
    .local v1, mailMessages:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 57
    aget-wide v2, v1, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/mail/database/MailCursor;->delete(J)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v0           #i:I
    .end local v1           #mailMessages:[J
    :cond_0
    return-void
.end method

.method public setMessageStatusRead(Lcom/htc/android/mail/AbsRequestController$MessageStatus;)V
    .locals 0
    .parameter "messageStatus"

    .prologue
    .line 65
    return-void
.end method
