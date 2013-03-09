.class Lcom/google/android/talk/ChatView$DeltaCursor;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeltaCursor"
.end annotation


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDateColumn:I

.field private mDeltaColumn:I

.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;Landroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter "cursor"

    .prologue
    const/4 v3, -0x1

    .line 2481
    iput-object p1, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2478
    iput v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    .line 2479
    iput v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    .line 2482
    iput-object p2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    .line 2484
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 2485
    .local v0, columnNames:[Ljava/lang/String;
    array-length v2, v0

    .line 2487
    .local v2, len:I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    .line 2489
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2490
    iget-object v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    aget-object v4, v0, v1

    aput-object v4, v3, v1

    .line 2491
    iget-object v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2492
    iput v1, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    .line 2489
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2496
    :cond_1
    iput v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    .line 2497
    iget-object v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    iget v4, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    const-string v5, "delta"

    aput-object v5, v3, v4

    .line 2498
    return-void
.end method

.method private checkPosition()V
    .locals 3

    .prologue
    .line 2658
    iget-object v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 2659
    .local v1, pos:I
    iget-object v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2661
    .local v0, count:I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    if-ne v0, v1, :cond_1

    .line 2662
    :cond_0
    new-instance v2, Landroid/database/CursorIndexOutOfBoundsException;

    invoke-direct {v2, v1, v0}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v2

    .line 2664
    :cond_1
    return-void
.end method

.method private getDeltaValue()J
    .locals 7

    .prologue
    .line 2781
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 2786
    .local v0, pos:I
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_0

    .line 2787
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2788
    .local v1, t1:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2796
    .local v3, t2:J
    :goto_0
    sub-long v5, v3, v1

    return-wide v5

    .line 2790
    .end local v1           #t1:J
    .end local v3           #t2:J
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2791
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2792
    .restart local v3       #t2:J
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2793
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .restart local v1       #t1:J
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2605
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 7
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    const/4 v6, 0x0

    .line 2691
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2693
    iget v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v5, :cond_2

    .line 2694
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v3

    .line 2695
    .local v3, value:J
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2696
    .local v2, strValue:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2697
    .local v1, len:I
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 2698
    .local v0, data:[C
    if-eqz v0, :cond_0

    array-length v5, v0

    if-ge v5, v1, :cond_1

    .line 2699
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iput-object v5, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 2703
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 2707
    .end local v0           #data:[C
    .end local v1           #len:I
    .end local v2           #strValue:Ljava/lang/String;
    .end local v3           #value:J
    :goto_1
    return-void

    .line 2701
    .restart local v0       #data:[C
    .restart local v1       #len:I
    .restart local v2       #strValue:Ljava/lang/String;
    .restart local v3       #value:J
    :cond_1
    invoke-virtual {v2, v6, v1, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 2705
    .end local v0           #data:[C
    .end local v1           #len:I
    .end local v2           #strValue:Ljava/lang/String;
    .end local v3           #value:J
    :cond_2
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto :goto_1
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 2595
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "column"

    .prologue
    .line 2668
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2670
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2671
    const/4 v0, 0x0

    .line 2674
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"

    .prologue
    .line 2562
    const-string v0, "delta"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2563
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    .line 2566
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2571
    const-string v0, "delta"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2572
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    .line 2575
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 2580
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2581
    const-string v0, "delta"

    .line 2584
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2502
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 2755
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2757
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2758
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    long-to-double v0, v0

    .line 2761
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "column"

    .prologue
    .line 2744
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2746
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2747
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    long-to-float v0, v0

    .line 2750
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 2722
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2724
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2725
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 2728
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 2733
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2735
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2736
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    .line 2739
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 2711
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2713
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2714
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 2717
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .parameter "column"

    .prologue
    .line 2679
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2681
    iget v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v2, :cond_0

    .line 2682
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    .line 2683
    .local v0, value:J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2686
    .end local v0           #value:J
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 2766
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 2552
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 2771
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2773
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2774
    const/4 v0, 0x0

    .line 2777
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    goto :goto_0
.end method

.method public move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 2537
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2615
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2625
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2635
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2620
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2630
    return-void
.end method
