.class public abstract Lcom/android/common/widget/CompositeCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x2


# instance fields
.field private mCacheValid:Z

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field private mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "initialCapacity"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    iput v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    .line 60
    iput v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    .line 61
    iput-boolean v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    .line 70
    iput-object p1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iput-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 72
    return-void
.end method


# virtual methods
.method public addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V
    .locals 5
    .parameter "partition"

    .prologue
    const/4 v4, 0x0

    .line 88
    iget v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    iget-object v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 89
    iget v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v1, v2, 0x2

    .line 90
    .local v1, newCapacity:I
    new-array v0, v1, [Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 91
    .local v0, newAdapters:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iput-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 94
    .end local v0           #newAdapters:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .end local v1           #newCapacity:I
    :cond_0
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    aput-object p1, v2, v3

    .line 95
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 96
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public addPartition(ZZ)V
    .locals 1
    .parameter "showIfEmpty"
    .parameter "hasHeader"

    .prologue
    .line 84
    new-instance v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    invoke-direct {v0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/common/widget/CompositeCursorAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 85
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v0, v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v1, :cond_0

    .line 474
    const/4 v1, 0x0

    .line 477
    :goto_1
    return v1

    .line 472
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "partition"
    .parameter "cursor"

    .prologue
    .line 379
    return-void
.end method

.method protected abstract bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 3
    .parameter "partition"
    .parameter "cursor"

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 212
    .local v0, prevCursor:Landroid/database/Cursor;
    if-eq v0, p2, :cond_2

    .line 213
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 217
    if-eqz p2, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 221
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 223
    :cond_2
    return-void
.end method

.method public clearPartitions()V
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 120
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 127
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v2, v2, v1

    iget-object v0, v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 129
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 131
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    .line 135
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 136
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 137
    return-void
.end method

.method protected ensureCacheValid()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-boolean v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    if-eqz v4, :cond_0

    .line 183
    :goto_0
    return-void

    .line 169
    :cond_0
    iput v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    .line 170
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v2, v4, :cond_4

    .line 171
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iget-object v1, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 172
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 173
    .local v0, count:I
    :goto_2
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v4, :cond_2

    .line 174
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    if-eqz v4, :cond_2

    .line 175
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 178
    :cond_2
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iput v0, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    .line 179
    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #count:I
    :cond_3
    move v0, v3

    .line 172
    goto :goto_2

    .line 182
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 197
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    return v0
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .locals 1
    .parameter "partition"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "partition"
    .parameter "cursor"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 360
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 363
    .local v0, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 364
    return-object v0

    .line 360
    .end local v0           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/android/common/widget/CompositeCursorAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 413
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 414
    const/4 v4, 0x0

    .line 415
    .local v4, start:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v2, v5, :cond_1

    .line 416
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v1, v4, v5

    .line 417
    .local v1, end:I
    if-lt p1, v4, :cond_3

    if-ge p1, v1, :cond_3

    .line 418
    sub-int v3, p1, v4

    .line 419
    .local v3, offset:I
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    .line 420
    add-int/lit8 v3, v3, -0x1

    .line 422
    :cond_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 432
    .end local v1           #end:I
    .end local v3           #offset:I
    :cond_1
    :goto_1
    return-object v0

    .line 425
    .restart local v1       #end:I
    .restart local v3       #offset:I
    :cond_2
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget-object v0, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 426
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_1

    .line 429
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #offset:I
    :cond_3
    move v4, v1

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 9
    .parameter "position"

    .prologue
    const/4 v8, -0x1

    const-wide/16 v5, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 440
    const/4 v4, 0x0

    .line 441
    .local v4, start:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v2, v7, :cond_1

    .line 442
    iget-object v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v1, v4, v7

    .line 443
    .local v1, end:I
    if-lt p1, v4, :cond_3

    if-ge p1, v1, :cond_3

    .line 444
    sub-int v3, p1, v4

    .line 445
    .local v3, offset:I
    iget-object v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v7, v7, v2

    iget-boolean v7, v7, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v7, :cond_0

    .line 446
    add-int/lit8 v3, v3, -0x1

    .line 448
    :cond_0
    if-ne v3, v8, :cond_2

    .line 464
    .end local v1           #end:I
    .end local v3           #offset:I
    :cond_1
    :goto_1
    return-wide v5

    .line 451
    .restart local v1       #end:I
    .restart local v3       #offset:I
    :cond_2
    iget-object v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    if-eq v7, v8, :cond_1

    .line 455
    iget-object v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v7, v7, v2

    iget-object v0, v7, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 456
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 459
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    goto :goto_1

    .line 461
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #offset:I
    :cond_3
    move v4, v1

    .line 441
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 307
    const/4 v3, 0x0

    .line 308
    .local v3, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v4, :cond_2

    .line 309
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v3, v4

    .line 310
    .local v0, end:I
    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    .line 311
    sub-int v2, p1, v3

    .line 312
    .local v2, offset:I
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 313
    const/4 v4, -0x1

    .line 315
    :goto_1
    return v4

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItemViewType(II)I

    move-result v4

    goto :goto_1

    .line 317
    .end local v2           #offset:I
    :cond_1
    move v3, v0

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v0           #end:I
    :cond_2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method protected getItemViewType(II)I
    .locals 1
    .parameter "partition"
    .parameter "position"

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public getOffsetInPartition(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 255
    const/4 v3, 0x0

    .line 256
    .local v3, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v4, :cond_2

    .line 257
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v3, v4

    .line 258
    .local v0, end:I
    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    .line 259
    sub-int v2, p1, v3

    .line 260
    .local v2, offset:I
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v4, :cond_0

    .line 261
    add-int/lit8 v2, v2, -0x1

    .line 267
    .end local v0           #end:I
    .end local v2           #offset:I
    :cond_0
    :goto_1
    return v2

    .line 265
    .restart local v0       #end:I
    :cond_1
    move v3, v0

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v0           #end:I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .locals 1
    .parameter "partitionIndex"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-lt p1, v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPartitionCount()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    return v0
.end method

.method public getPartitionForPosition(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 238
    const/4 v2, 0x0

    .line 239
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v3, :cond_1

    .line 240
    iget-object v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v2, v3

    .line 241
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 246
    .end local v0           #end:I
    .end local v1           #i:I
    :goto_1
    return v1

    .line 244
    .restart local v0       #end:I
    .restart local v1       #i:I
    :cond_0
    move v2, v0

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v0           #end:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPositionForPartition(I)I
    .locals 3
    .parameter "partition"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 277
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int/2addr v1, v2

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    return v1
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 387
    if-eqz p4, :cond_0

    .line 388
    move-object v6, p4

    .line 392
    .local v6, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/android/common/widget/CompositeCursorAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 393
    return-object v6

    .line 390
    .end local v6           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/widget/CompositeCursorAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .restart local v6       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 325
    const/4 v7, 0x0

    .line 326
    .local v7, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v6, v7, v0

    .line 328
    .local v6, end:I
    if-lt p1, v7, :cond_3

    if-ge p1, v6, :cond_3

    .line 329
    sub-int v3, p1, v7

    .line 330
    .local v3, offset:I
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v0, :cond_0

    .line 331
    add-int/lit8 v3, v3, -0x1

    .line 334
    :cond_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/android/common/widget/CompositeCursorAdapter;->getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 343
    .local v8, view:Landroid/view/View;
    :goto_1
    if-nez v8, :cond_5

    .line 344
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View should not be null, partition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    .end local v8           #view:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t move cursor to position "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-object v2, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/widget/CompositeCursorAdapter;->getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .restart local v8       #view:Landroid/view/View;
    goto :goto_1

    .line 349
    .end local v3           #offset:I
    .end local v8           #view:Landroid/view/View;
    :cond_3
    move v7, v6

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 352
    .end local v6           #end:I
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 347
    .restart local v3       #offset:I
    .restart local v6       #end:I
    .restart local v8       #view:Landroid/view/View;
    :cond_5
    return-object v8
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getItemViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasHeader(I)Z
    .locals 1
    .parameter "partition"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    .line 158
    return-void
.end method

.method public isEnabled(I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 485
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 486
    const/4 v3, 0x0

    .line 487
    .local v3, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v5, :cond_0

    .line 488
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v3, v5

    .line 489
    .local v0, end:I
    if-lt p1, v3, :cond_2

    if-ge p1, v0, :cond_2

    .line 490
    sub-int v2, p1, v3

    .line 491
    .local v2, offset:I
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    .line 500
    .end local v0           #end:I
    .end local v2           #offset:I
    :cond_0
    :goto_1
    return v4

    .line 494
    .restart local v0       #end:I
    .restart local v2       #offset:I
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->isEnabled(II)Z

    move-result v4

    goto :goto_1

    .line 497
    .end local v2           #offset:I
    :cond_2
    move v3, v0

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isEnabled(II)Z
    .locals 1
    .parameter "partition"
    .parameter "position"

    .prologue
    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method public isPartitionEmpty(I)Z
    .locals 2
    .parameter "partition"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 230
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    .line 526
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    goto :goto_0
.end method

.method public removePartition(I)V
    .locals 5
    .parameter "partitionIndex"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 101
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    .line 108
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 109
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method

.method public setHasHeader(IZ)V
    .locals 1
    .parameter "partitionIndex"
    .parameter "flag"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    .line 141
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 142
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 516
    iput-boolean p1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    .line 517
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 520
    :cond_0
    return-void
.end method

.method public setShowIfEmpty(IZ)V
    .locals 1
    .parameter "partitionIndex"
    .parameter "flag"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    .line 146
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 147
    return-void
.end method
