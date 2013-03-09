.class public Lcom/android/htccontacts/widget/IndexListAdapter;
.super Landroid/widget/BaseAdapter;
.source "IndexListAdapter.java"


# static fields
.field private static final LOG_ENABLE:Z = false

.field private static final NOTIFY_CHANGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndexListAdapter"

.field protected static final TYPE_ADAPTER:I = 0x1

.field protected static final TYPE_INDEX:I = 0x0

.field public static final UNKNOWN_VIEW_TYPE:I = -0x80000000


# instance fields
.field private mAdaptersViewTypeMap:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

.field private mInternalViewTypeCount:I

.field protected mObserver:Landroid/database/DataSetObserver;

.field protected mbReadyToUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/widget/IIndexableListAdapter;)V
    .locals 4
    .parameter "context"
    .parameter "indexableAdapter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    iput v2, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mInternalViewTypeCount:I

    .line 54
    new-instance v0, Lcom/android/htccontacts/widget/IndexListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/widget/IndexListAdapter$1;-><init>(Lcom/android/htccontacts/widget/IndexListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 63
    new-instance v0, Lcom/android/htccontacts/widget/IndexListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/widget/IndexListAdapter$2;-><init>(Lcom/android/htccontacts/widget/IndexListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mHandler:Landroid/os/Handler;

    .line 74
    iput-boolean v3, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mbReadyToUpdate:Z

    .line 77
    iput-object p1, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    .line 79
    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 80
    const-class v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/HashMap;

    check-cast v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mAdaptersViewTypeMap:[Ljava/util/HashMap;

    .line 81
    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mAdaptersViewTypeMap:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v2

    .line 82
    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mAdaptersViewTypeMap:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v3

    .line 86
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 90
    iput-object v2, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    .line 92
    iput-object v2, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mAdaptersViewTypeMap:[Ljava/util/HashMap;

    .line 93
    iput-object v2, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 94
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-boolean v3, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mbReadyToUpdate:Z

    if-nez v3, :cond_1

    .line 113
    :cond_0
    return v0

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    if-eqz v3, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, count:I
    iget-object v3, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v3}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexItemInfo()[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    move-result-object v2

    .line 107
    .local v2, items:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 108
    aget-object v3, v2, v1

    iget-boolean v3, v3, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShow:Z

    if-nez v3, :cond_2

    .line 107
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_2
    aget-object v3, v2, v1

    iget v3, v3, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .parameter "position"

    .prologue
    .line 171
    move v2, p1

    .line 172
    .local v2, vPosition:I
    iget-object v3, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v3}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexItemInfo()[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    move-result-object v1

    .line 173
    .local v1, items:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 174
    aget-object v3, v1, v0

    iget-boolean v3, v3, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShow:Z

    if-nez v3, :cond_1

    .line 173
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    if-nez v2, :cond_2

    .line 180
    iget-object v3, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v3, v0}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 202
    :goto_2
    return-object v3

    .line 183
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 184
    add-int/lit8 p1, p1, -0x1

    .line 187
    aget-object v3, v1, v0

    iget v3, v3, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    if-lez v3, :cond_0

    .line 190
    aget-object v3, v1, v0

    iget v3, v3, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    sub-int v3, v2, v3

    if-gez v3, :cond_3

    .line 195
    iget-object v3, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v3, p1}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 198
    :cond_3
    aget-object v3, v1, v0

    iget v3, v3, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    sub-int/2addr v2, v3

    goto :goto_1

    .line 202
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getItemId(I)J
    .locals 6
    .parameter "position"

    .prologue
    const-wide/16 v3, -0x1

    .line 206
    move v2, p1

    .line 207
    .local v2, vPosition:I
    iget-object v5, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v5}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexItemInfo()[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    move-result-object v1

    .line 208
    .local v1, items:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 209
    aget-object v5, v1, v0

    iget-boolean v5, v5, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShow:Z

    if-nez v5, :cond_1

    .line 208
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    if-nez v2, :cond_3

    .line 244
    :cond_2
    :goto_2
    return-wide v3

    .line 218
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 219
    add-int/lit8 p1, p1, -0x1

    .line 222
    aget-object v5, v1, v0

    iget v5, v5, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    if-lez v5, :cond_0

    .line 225
    aget-object v5, v1, v0

    iget v5, v5, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    sub-int v5, v2, v5

    if-gez v5, :cond_5

    .line 226
    iget-object v5, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    instance-of v5, v5, Landroid/widget/CursorAdapter;

    if-eqz v5, :cond_4

    .line 231
    iget-object v3, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    check-cast v3, Landroid/widget/CursorAdapter;

    invoke-virtual {v3, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v3

    goto :goto_2

    .line 233
    :cond_4
    iget-object v5, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    instance-of v5, v5, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    if-eqz v5, :cond_2

    .line 235
    iget-object v3, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    check-cast v3, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->getItemId(I)J

    move-result-wide v3

    goto :goto_2

    .line 240
    :cond_5
    aget-object v5, v1, v0

    iget v5, v5, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    sub-int/2addr v2, v5

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 10
    .parameter "position"

    .prologue
    const/high16 v7, -0x8000

    .line 258
    move v6, p1

    .line 259
    .local v6, vPosition:I
    const/high16 v5, -0x8000

    .line 260
    .local v5, type:I
    const/4 v4, 0x0

    .line 261
    .local v4, totalCount:I
    const/4 v1, 0x0

    .line 262
    .local v1, index:I
    iget-object v8, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v8}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexItemInfo()[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    move-result-object v2

    .line 263
    .local v2, items:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v8, v2

    if-ge v0, v8, :cond_2

    .line 264
    aget-object v8, v2, v0

    iget-boolean v8, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShow:Z

    if-nez v8, :cond_1

    .line 263
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    if-nez v6, :cond_3

    .line 270
    iget-object v8, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v8, v0}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexViewTypeAt(I)I

    move-result v5

    .line 271
    const/4 v1, 0x0

    .line 297
    :cond_2
    :goto_2
    if-ne v5, v7, :cond_5

    .line 316
    :goto_3
    return v7

    .line 275
    :cond_3
    add-int/lit8 v6, v6, -0x1

    .line 276
    add-int/lit8 p1, p1, -0x1

    .line 279
    aget-object v8, v2, v0

    iget v8, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    if-lez v8, :cond_0

    .line 282
    aget-object v8, v2, v0

    iget v8, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    sub-int v8, v6, v8

    if-gez v8, :cond_4

    .line 287
    iget-object v8, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v8, p1}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getItemViewType(I)I

    move-result v5

    .line 289
    const/4 v1, 0x1

    .line 290
    goto :goto_2

    .line 292
    :cond_4
    aget-object v8, v2, v0

    iget v8, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    sub-int/2addr v6, v8

    .line 294
    aget-object v8, v2, v0

    iget v8, v8, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    add-int/2addr v4, v8

    goto :goto_1

    .line 300
    :cond_5
    iget-object v7, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mAdaptersViewTypeMap:[Ljava/util/HashMap;

    aget-object v7, v7, v1

    if-nez v7, :cond_6

    .line 301
    const-string v7, "IndexListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getItemViewType - mAdaptersViewTypeMap["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_6
    iget-object v7, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mAdaptersViewTypeMap:[Ljava/util/HashMap;

    aget-object v7, v7, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 307
    iget-object v7, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mAdaptersViewTypeMap:[Ljava/util/HashMap;

    aget-object v7, v7, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_4
    move v7, v5

    .line 316
    goto :goto_3

    .line 310
    :cond_7
    iget v3, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mInternalViewTypeCount:I

    .line 311
    .local v3, newTypeValue:I
    iget v7, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mInternalViewTypeCount:I

    .line 312
    iget-object v7, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mAdaptersViewTypeMap:[Ljava/util/HashMap;

    aget-object v7, v7, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    move v5, v3

    goto :goto_4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 320
    move v4, p1

    .line 321
    .local v4, org_position:I
    move v6, p1

    .line 322
    .local v6, vPosition:I
    iget-object v7, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v7}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexItemInfo()[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    move-result-object v2

    .line 323
    .local v2, items:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v2

    if-ge v1, v7, :cond_5

    .line 324
    aget-object v7, v2, v1

    iget-boolean v7, v7, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShow:Z

    if-nez v7, :cond_1

    .line 323
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    :cond_1
    if-nez v6, :cond_3

    .line 330
    iget-object v7, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v7, v1, p2, p3}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexViewAt(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 331
    .local v5, v:Landroid/view/View;
    if-nez v5, :cond_2

    .line 332
    const-string v7, "IndexListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getIndexViewAt org_position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v5           #v:Landroid/view/View;
    :cond_2
    :goto_2
    return-object v5

    .line 337
    :cond_3
    add-int/lit8 v6, v6, -0x1

    .line 338
    add-int/lit8 p1, p1, -0x1

    .line 341
    aget-object v7, v2, v1

    iget v7, v7, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    if-lez v7, :cond_0

    .line 343
    aget-object v7, v2, v1

    iget v7, v7, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    sub-int v7, v6, v7

    if-gez v7, :cond_4

    .line 344
    iget-object v7, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v7, p1, p2, p3}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 345
    .restart local v5       #v:Landroid/view/View;
    if-nez v5, :cond_2

    .line 346
    const/4 v0, 0x1

    .line 347
    .local v0, diff:I
    :goto_3
    if-nez v5, :cond_2

    sub-int v7, p1, v0

    if-ltz v7, :cond_2

    .line 348
    const-string v7, "IndexListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getView org_position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", try to use view: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-int v9, p1, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v7, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    sub-int v8, p1, v0

    invoke-interface {v7, v8, p2, p3}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 355
    .end local v0           #diff:I
    .end local v5           #v:Landroid/view/View;
    :cond_4
    aget-object v7, v2, v1

    iget v7, v7, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    sub-int/2addr v6, v7

    goto/16 :goto_1

    .line 358
    :cond_5
    const/4 v3, 0x0

    .line 359
    .local v3, itemsCount:I
    const/4 v1, 0x0

    :goto_4
    array-length v7, v2

    if-ge v1, v7, :cond_6

    .line 360
    aget-object v7, v2, v1

    iget v7, v7, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    add-int/2addr v3, v7

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 362
    :cond_6
    const/4 v7, 0x2

    if-ne v4, v7, :cond_7

    .line 363
    const/4 v1, 0x0

    :goto_5
    array-length v7, v2

    if-ge v1, v7, :cond_7

    .line 364
    const-string v7, "IndexListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "items["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "].isShow: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v1

    iget-boolean v9, v9, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShow:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v1

    iget v9, v9, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    move-object v5, p2

    .line 368
    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getViewTypeCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 136
    move v2, p1

    .line 137
    .local v2, vPosition:I
    iget-object v3, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v3}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->getIndexItemInfo()[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    move-result-object v1

    .line 138
    .local v1, items:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 139
    aget-object v3, v1, v0

    iget-boolean v3, v3, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShow:Z

    if-nez v3, :cond_1

    .line 138
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    if-nez v2, :cond_2

    .line 145
    iget-object v3, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v3, v0}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->isIndexEnabled(I)Z

    move-result v3

    .line 167
    :goto_2
    return v3

    .line 148
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 149
    add-int/lit8 p1, p1, -0x1

    .line 152
    aget-object v3, v1, v0

    iget v3, v3, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    if-lez v3, :cond_0

    .line 155
    aget-object v3, v1, v0

    iget v3, v3, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    sub-int v3, v2, v3

    if-gez v3, :cond_3

    .line 160
    iget-object v3, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mIndexableAdapter:Lcom/android/htccontacts/widget/IIndexableListAdapter;

    invoke-interface {v3, p1}, Lcom/android/htccontacts/widget/IIndexableListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_2

    .line 163
    :cond_3
    aget-object v3, v1, v0

    iget v3, v3, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    sub-int/2addr v2, v3

    goto :goto_1

    .line 167
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public isReadyToUpdate()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mbReadyToUpdate:Z

    return v0
.end method

.method public setReadyToUpdate(Z)V
    .locals 2
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mbReadyToUpdate:Z

    .line 120
    if-ne p1, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    :cond_0
    return-void
.end method
