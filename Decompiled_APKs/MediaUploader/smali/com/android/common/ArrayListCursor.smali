.class public Lcom/android/common/ArrayListCursor;
.super Landroid/database/AbstractCursor;
.source "ArrayListCursor.java"


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mRows:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 36
    array-length v0, p1

    move v1, v4

    .line 39
    :goto_0
    if-ge v1, v0, :cond_4

    .line 40
    aget-object v2, p1, v1

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 41
    iput-object p1, p0, Lcom/android/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 42
    const/4 v1, 0x1

    .line 47
    :goto_1
    if-nez v1, :cond_0

    .line 48
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 49
    iget-object v2, p0, Lcom/android/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    array-length v3, p1

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object v2, p0, Lcom/android/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 53
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 54
    new-array v0, v2, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    move v3, v4

    .line 56
    :goto_2
    if-ge v3, v2, :cond_3

    .line 57
    iget-object v4, p0, Lcom/android/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    aput-object v0, v4, v3

    .line 58
    if-nez v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v0, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 39
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_3
    return-void

    :cond_4
    move v1, v4

    goto :goto_1
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 66
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/common/ArrayListCursor;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 72
    :try_start_0
    iget v1, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    .line 73
    const/4 v0, 0x1

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    .line 74
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 75
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/common/ArrayListCursor;->getColumnCount()I

    move-result v2

    .line 77
    invoke-virtual {p2, v2}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 78
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/common/ArrayListCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    instance-of v4, v0, [B

    if-eqz v4, :cond_3

    .line 83
    check-cast v0, [B

    check-cast v0, [B

    .line 84
    iget v4, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    invoke-virtual {p2, v0, v4, v3}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v0

    if-nez v0, :cond_5

    .line 85
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 89
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget v4, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    invoke-virtual {p2, v0, v4, v3}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 91
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 108
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0

    .line 96
    :cond_4
    :try_start_2
    iget v0, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    invoke-virtual {p2, v0, v3}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 97
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    goto :goto_1

    .line 79
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 104
    :cond_6
    iput v1, p0, Lcom/android/common/ArrayListCursor;->mPos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0
.end method

.method public getBlob(I)[B
    .locals 2
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/common/ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v0, v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 160
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 154
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 142
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 148
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 136
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 2
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/common/ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/common/ArrayListCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
