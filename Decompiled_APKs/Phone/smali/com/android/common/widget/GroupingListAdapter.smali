.class public abstract Lcom/android/common/widget/GroupingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;
    }
.end annotation


# static fields
.field private static final EXPANDED_GROUP_MASK:J = -0x8000000000000000L

.field private static final GROUP_METADATA_ARRAY_INCREMENT:I = 0x80

.field private static final GROUP_METADATA_ARRAY_INITIAL_SIZE:I = 0x10

.field private static final GROUP_OFFSET_MASK:J = 0xffffffffL

.field private static final GROUP_SIZE_MASK:J = 0x7fffffff00000000L

.field public static final ITEM_TYPE_GROUP_HEADER:I = 0x1

.field public static final ITEM_TYPE_IN_GROUP:I = 0x2

.field public static final ITEM_TYPE_STANDALONE:I


# instance fields
.field protected mChangeObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field private mGroupCount:I

.field private mGroupMetadata:[J

.field private mLastCachedCursorPosition:I

.field private mLastCachedGroup:I

.field private mLastCachedListPosition:I

.field private mPositionCache:Landroid/util/SparseIntArray;

.field private mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

.field private mRowIdColumnIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 80
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionCache:Landroid/util/SparseIntArray;

    .line 88
    new-instance v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    invoke-direct {v0}, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;-><init>()V

    iput-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    .line 90
    new-instance v0, Lcom/android/common/widget/GroupingListAdapter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/common/widget/GroupingListAdapter$1;-><init>(Lcom/android/common/widget/GroupingListAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mChangeObserver:Landroid/database/ContentObserver;

    .line 103
    new-instance v0, Lcom/android/common/widget/GroupingListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/common/widget/GroupingListAdapter$2;-><init>(Lcom/android/common/widget/GroupingListAdapter;)V

    iput-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 117
    iput-object p1, p0, Lcom/android/common/widget/GroupingListAdapter;->mContext:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Lcom/android/common/widget/GroupingListAdapter;->resetCache()V

    .line 119
    return-void
.end method

.method private findGroups()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupCount:I

    .line 188
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupMetadata:[J

    .line 190
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/common/widget/GroupingListAdapter;->addGroups(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private idealByteArraySize(I)I
    .locals 3
    .parameter "need"

    .prologue
    const/4 v2, 0x1

    .line 224
    const/4 v0, 0x4

    .local v0, i:I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 225
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_1

    .line 226
    shl-int v1, v2, v0

    add-int/lit8 p1, v1, -0xc

    .line 228
    .end local p1
    :cond_0
    return p1

    .line 224
    .restart local p1
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private idealLongArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 219
    mul-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lcom/android/common/widget/GroupingListAdapter;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private resetCache()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 141
    iput v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mCount:I

    .line 142
    iput v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mLastCachedListPosition:I

    .line 143
    iput v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mLastCachedCursorPosition:I

    .line 144
    iput v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mLastCachedGroup:I

    .line 145
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    #setter for: Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->listPosition:I
    invoke-static {v0, v1}, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->access$002(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;I)I

    .line 146
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 147
    return-void
.end method


# virtual methods
.method protected addGroup(IIZ)V
    .locals 8
    .parameter "cursorPosition"
    .parameter "size"
    .parameter "expanded"

    .prologue
    const/4 v6, 0x0

    .line 202
    iget v4, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupCount:I

    iget-object v5, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupMetadata:[J

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 203
    iget-object v4, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupMetadata:[J

    array-length v4, v4

    add-int/lit16 v4, v4, 0x80

    invoke-direct {p0, v4}, Lcom/android/common/widget/GroupingListAdapter;->idealLongArraySize(I)I

    move-result v3

    .line 205
    .local v3, newSize:I
    new-array v0, v3, [J

    .line 206
    .local v0, array:[J
    iget-object v4, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupMetadata:[J

    iget v5, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupCount:I

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iput-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupMetadata:[J

    .line 210
    .end local v0           #array:[J
    .end local v3           #newSize:I
    :cond_0
    int-to-long v4, p2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, p1

    or-long v1, v4, v6

    .line 211
    .local v1, metadata:J
    if-eqz p3, :cond_1

    .line 212
    const-wide/high16 v4, -0x8000

    or-long/2addr v1, v4

    .line 214
    :cond_1
    iget-object v4, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupMetadata:[J

    iget v5, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupCount:I

    aput-wide v1, v4, v5

    .line 215
    return-void
.end method

.method protected abstract addGroups(Landroid/database/Cursor;)V
.end method

.method protected abstract bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method protected abstract bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
.end method

.method protected abstract bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mChangeObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 159
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 160
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_1
    iput-object p1, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    .line 163
    invoke-direct {p0}, Lcom/android/common/widget/GroupingListAdapter;->resetCache()V

    .line 164
    invoke-direct {p0}, Lcom/android/common/widget/GroupingListAdapter;->findGroups()V

    .line 166
    if-eqz p1, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mChangeObserver:Landroid/database/ContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 168
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 169
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mRowIdColumnIndex:I

    .line 170
    invoke-virtual {p0}, Lcom/android/common/widget/GroupingListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/android/common/widget/GroupingListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 232
    iget-object v9, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v9, :cond_0

    .line 260
    :goto_0
    return v8

    .line 236
    :cond_0
    iget v9, p0, Lcom/android/common/widget/GroupingListAdapter;->mCount:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 237
    iget v8, p0, Lcom/android/common/widget/GroupingListAdapter;->mCount:I

    goto :goto_0

    .line 240
    :cond_1
    const/4 v1, 0x0

    .line 241
    .local v1, cursorPosition:I
    const/4 v0, 0x0

    .line 242
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v9, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupCount:I

    if-ge v3, v9, :cond_4

    .line 243
    iget-object v9, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupMetadata:[J

    aget-wide v4, v9, v3

    .line 244
    .local v4, metadata:J
    const-wide v9, 0xffffffffL

    and-long/2addr v9, v4

    long-to-int v6, v9

    .line 245
    .local v6, offset:I
    const-wide/high16 v9, -0x8000

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/4 v2, 0x1

    .line 246
    .local v2, expanded:Z
    :goto_2
    const-wide v9, 0x7fffffff00000000L

    and-long/2addr v9, v4

    const/16 v11, 0x20

    shr-long/2addr v9, v11

    long-to-int v7, v9

    .line 248
    .local v7, size:I
    sub-int v9, v6, v1

    add-int/2addr v0, v9

    .line 250
    if-eqz v2, :cond_3

    .line 251
    add-int/lit8 v9, v7, 0x1

    add-int/2addr v0, v9

    .line 256
    :goto_3
    add-int v1, v6, v7

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2           #expanded:Z
    .end local v7           #size:I
    :cond_2
    move v2, v8

    .line 245
    goto :goto_2

    .line 253
    .restart local v2       #expanded:Z
    .restart local v7       #size:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 259
    .end local v2           #expanded:Z
    .end local v4           #metadata:J
    .end local v6           #offset:I
    .end local v7           #size:I
    :cond_4
    iget-object v8, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    add-int/2addr v8, v0

    sub-int/2addr v8, v1

    iput v8, p0, Lcom/android/common/widget/GroupingListAdapter;->mCount:I

    .line 260
    iget v8, p0, Lcom/android/common/widget/GroupingListAdapter;->mCount:I

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getGroupSize(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    invoke-virtual {p0, v0, p1}, Lcom/android/common/widget/GroupingListAdapter;->obtainPositionMetadata(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;I)V

    .line 399
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    iget v0, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->childCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 433
    iget-object v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-object v0

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    invoke-virtual {p0, v1, p1}, Lcom/android/common/widget/GroupingListAdapter;->obtainPositionMetadata(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;I)V

    .line 438
    iget-object v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    iget v2, v2, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->cursorPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 447
    .local v0, item:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/common/widget/GroupingListAdapter;->mRowIdColumnIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 450
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    invoke-virtual {p0, v0, p1}, Lcom/android/common/widget/GroupingListAdapter;->obtainPositionMetadata(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;I)V

    .line 429
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    iget v0, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->itemType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    invoke-virtual {p0, v0, p1}, Lcom/android/common/widget/GroupingListAdapter;->obtainPositionMetadata(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;I)V

    .line 456
    move-object v1, p2

    .line 457
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    iget v0, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 471
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    iget v2, v2, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->cursorPosition:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 472
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    iget v0, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->itemType:I

    packed-switch v0, :pswitch_data_1

    .line 485
    :goto_1
    return-object v1

    .line 460
    :pswitch_0
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/common/widget/GroupingListAdapter;->newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 461
    goto :goto_0

    .line 463
    :pswitch_1
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/common/widget/GroupingListAdapter;->newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 464
    goto :goto_0

    .line 466
    :pswitch_2
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/common/widget/GroupingListAdapter;->newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 474
    :pswitch_3
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/common/widget/GroupingListAdapter;->bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_1

    .line 477
    :pswitch_4
    iget-object v2, p0, Lcom/android/common/widget/GroupingListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    iget v4, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->childCount:I

    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    iget-boolean v5, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->isExpanded:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/widget/GroupingListAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V

    goto :goto_1

    .line 481
    :pswitch_5
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/common/widget/GroupingListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/common/widget/GroupingListAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_1

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 472
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x3

    return v0
.end method

.method public isGroupHeader(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 389
    iget-object v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    invoke-virtual {p0, v1, p1}, Lcom/android/common/widget/GroupingListAdapter;->obtainPositionMetadata(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;I)V

    .line 390
    iget-object v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    iget v1, v1, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->itemType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public obtainPositionMetadata(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;I)V
    .locals 17
    .parameter "metadata"
    .parameter "position"

    .prologue
    .line 271
    #getter for: Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->listPosition:I
    invoke-static/range {p1 .. p1}, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->access$000(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;)I

    move-result v13

    move/from16 v0, p2

    if-ne v13, v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v10, 0x0

    .line 276
    .local v10, listPosition:I
    const/4 v1, 0x0

    .line 277
    .local v1, cursorPosition:I
    const/4 v5, 0x0

    .line 283
    .local v5, firstGroupToCheck:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/common/widget/GroupingListAdapter;->mLastCachedListPosition:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    .line 284
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/common/widget/GroupingListAdapter;->mLastCachedListPosition:I

    move/from16 v0, p2

    if-gt v0, v13, :cond_4

    .line 287
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/common/widget/GroupingListAdapter;->mPositionCache:Landroid/util/SparseIntArray;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    .line 291
    .local v9, index:I
    if-gez v9, :cond_1

    .line 296
    xor-int/lit8 v13, v9, -0x1

    add-int/lit8 v9, v13, -0x1

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/common/widget/GroupingListAdapter;->mPositionCache:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-lt v9, v13, :cond_1

    .line 299
    add-int/lit8 v9, v9, -0x1

    .line 307
    :cond_1
    if-ltz v9, :cond_2

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/common/widget/GroupingListAdapter;->mPositionCache:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/common/widget/GroupingListAdapter;->mPositionCache:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/common/widget/GroupingListAdapter;->mGroupMetadata:[J

    aget-wide v2, v13, v5

    .line 311
    .local v2, descriptor:J
    const-wide v13, 0xffffffffL

    and-long/2addr v13, v2

    long-to-int v1, v13

    .line 323
    .end local v2           #descriptor:J
    .end local v9           #index:I
    :cond_2
    :goto_1
    move v8, v5

    .local v8, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/common/widget/GroupingListAdapter;->mGroupCount:I

    if-ge v8, v13, :cond_a

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/common/widget/GroupingListAdapter;->mGroupMetadata:[J

    aget-wide v6, v13, v8

    .line 325
    .local v6, group:J
    const-wide v13, 0xffffffffL

    and-long/2addr v13, v6

    long-to-int v11, v13

    .line 328
    .local v11, offset:I
    sub-int v13, v11, v1

    add-int/2addr v10, v13

    .line 329
    move v1, v11

    .line 331
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/common/widget/GroupingListAdapter;->mLastCachedGroup:I

    if-le v8, v13, :cond_3

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/common/widget/GroupingListAdapter;->mPositionCache:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v10, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/common/widget/GroupingListAdapter;->mLastCachedListPosition:I

    .line 334
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/common/widget/GroupingListAdapter;->mLastCachedCursorPosition:I

    .line 335
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/common/widget/GroupingListAdapter;->mLastCachedGroup:I

    .line 340
    :cond_3
    move/from16 v0, p2

    if-ge v0, v10, :cond_5

    .line 341
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->itemType:I

    .line 342
    sub-int v13, v10, p2

    sub-int v13, v1, v13

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->cursorPosition:I

    goto/16 :goto_0

    .line 317
    .end local v6           #group:J
    .end local v8           #i:I
    .end local v11           #offset:I
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/common/widget/GroupingListAdapter;->mLastCachedGroup:I

    .line 318
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/common/widget/GroupingListAdapter;->mLastCachedListPosition:I

    .line 319
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/common/widget/GroupingListAdapter;->mLastCachedCursorPosition:I

    goto :goto_1

    .line 346
    .restart local v6       #group:J
    .restart local v8       #i:I
    .restart local v11       #offset:I
    :cond_5
    const-wide/high16 v13, -0x8000

    and-long/2addr v13, v6

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_6

    const/4 v4, 0x1

    .line 347
    .local v4, expanded:Z
    :goto_3
    const-wide v13, 0x7fffffff00000000L

    and-long/2addr v13, v6

    const/16 v15, 0x20

    shr-long/2addr v13, v15

    long-to-int v12, v13

    .line 350
    .local v12, size:I
    move/from16 v0, p2

    if-ne v0, v10, :cond_7

    .line 351
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->itemType:I

    .line 352
    move-object/from16 v0, p1

    #setter for: Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->groupPosition:I
    invoke-static {v0, v8}, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->access$102(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;I)I

    .line 353
    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->isExpanded:Z

    .line 354
    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->childCount:I

    .line 355
    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->cursorPosition:I

    goto/16 :goto_0

    .line 346
    .end local v4           #expanded:Z
    .end local v12           #size:I
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 359
    .restart local v4       #expanded:Z
    .restart local v12       #size:I
    :cond_7
    if-eqz v4, :cond_9

    .line 361
    add-int v13, v10, v12

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p2

    if-ge v0, v13, :cond_8

    .line 362
    const/4 v13, 0x2

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->itemType:I

    .line 363
    sub-int v13, p2, v10

    add-int/2addr v13, v1

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->cursorPosition:I

    goto/16 :goto_0

    .line 368
    :cond_8
    add-int/lit8 v13, v12, 0x1

    add-int/2addr v10, v13

    .line 376
    :goto_4
    add-int/2addr v1, v12

    .line 323
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 372
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 380
    .end local v4           #expanded:Z
    .end local v6           #group:J
    .end local v11           #offset:I
    .end local v12           #size:I
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->itemType:I

    .line 381
    sub-int v13, p2, v10

    add-int/2addr v13, v1

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->cursorPosition:I

    goto/16 :goto_0
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public toggleGroup(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    invoke-virtual {p0, v0, p1}, Lcom/android/common/widget/GroupingListAdapter;->obtainPositionMetadata(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;I)V

    .line 407
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    iget v0, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->itemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a group at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    iget-boolean v0, v0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->isExpanded:Z

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupMetadata:[J

    iget-object v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    #getter for: Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->groupPosition:I
    invoke-static {v1}, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->access$100(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;)I

    move-result v1

    aget-wide v2, v0, v1

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 417
    :goto_0
    invoke-direct {p0}, Lcom/android/common/widget/GroupingListAdapter;->resetCache()V

    .line 418
    invoke-virtual {p0}, Lcom/android/common/widget/GroupingListAdapter;->notifyDataSetChanged()V

    .line 419
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/common/widget/GroupingListAdapter;->mGroupMetadata:[J

    iget-object v1, p0, Lcom/android/common/widget/GroupingListAdapter;->mPositionMetadata:Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;

    #getter for: Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->groupPosition:I
    invoke-static {v1}, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->access$100(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;)I

    move-result v1

    aget-wide v2, v0, v1

    const-wide/high16 v4, -0x8000

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    goto :goto_0
.end method
