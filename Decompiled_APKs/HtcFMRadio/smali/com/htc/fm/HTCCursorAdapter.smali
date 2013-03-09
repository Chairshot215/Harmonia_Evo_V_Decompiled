.class public Lcom/htc/fm/HTCCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "HTCCursorAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;,
        Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field private static final ENABLE_AUTO_REQUERY_DELAY:I = 0x1388

.field private static final REQUERY_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "HTCCursorAdapter"


# instance fields
.field private isRegistered:Z

.field public mAutoRequery:Z

.field mAutoRequeryLock:Z

.field private mCacheCapacity:I

.field protected mChangeObserver:Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field protected mCursorFilter:Lcom/htc/fm/HtcCursorFilter;

.field mDataDirty:Z

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field private mDatesetChanged:Z

.field private mDatesetUpdateCount:I

.field private mDeepth:I

.field mEnableAutoRequery:Ljava/lang/Runnable;

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutlist:[I

.field private mNodeList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/fm/HtcListNode;",
            ">;"
        }
    .end annotation
.end field

.field mRequery:Ljava/lang/Runnable;

.field mRequeryInQueue:Z

.field protected mRowIDColumn:I

.field private mUpdateCount:I

.field private mViewCaches:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Vector;",
            ">;"
        }
    .end annotation
.end field

.field private mViewGroup:Landroid/view/ViewGroup;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z[II)V
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "autoRequery"
    .parameter "layoutlist"
    .parameter "cacheCapacity"

    .prologue
    const/16 v4, 0xa

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mAutoRequeryLock:Z

    .line 47
    iput-boolean v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mRequeryInQueue:Z

    .line 48
    iput-boolean v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mDataDirty:Z

    .line 56
    iput-object v2, p0, Lcom/htc/fm/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    iput v4, p0, Lcom/htc/fm/HTCCursorAdapter;->mCacheCapacity:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mAutoRequery:Z

    .line 64
    iput v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mRowIDColumn:I

    .line 68
    new-instance v0, Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;-><init>(Lcom/htc/fm/HTCCursorAdapter;Lcom/htc/fm/HTCCursorAdapter$1;)V

    iput-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 80
    new-instance v0, Lcom/htc/fm/HTCCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/HTCCursorAdapter$1;-><init>(Lcom/htc/fm/HTCCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mRequery:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lcom/htc/fm/HTCCursorAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/fm/HTCCursorAdapter$2;-><init>(Lcom/htc/fm/HTCCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    .line 128
    iput-boolean v1, p0, Lcom/htc/fm/HTCCursorAdapter;->isRegistered:Z

    .line 130
    iput v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mUpdateCount:I

    .line 131
    iput v4, p0, Lcom/htc/fm/HTCCursorAdapter;->mDatesetUpdateCount:I

    .line 182
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    .line 329
    iput v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mDeepth:I

    .line 331
    iput-object v2, p0, Lcom/htc/fm/HTCCursorAdapter;->mViewCaches:Ljava/util/Vector;

    .line 635
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->tag:Ljava/lang/String;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p1, p0, Lcom/htc/fm/HTCCursorAdapter;->mContext:Landroid/content/Context;

    .line 112
    iput-boolean p3, p0, Lcom/htc/fm/HTCCursorAdapter;->mAutoRequery:Z

    .line 113
    iput-object p2, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 114
    iput-object p4, p0, Lcom/htc/fm/HTCCursorAdapter;->mLayoutlist:[I

    .line 115
    iput p5, p0, Lcom/htc/fm/HTCCursorAdapter;->mCacheCapacity:I

    .line 116
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 117
    new-instance v0, Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;-><init>(Lcom/htc/fm/HTCCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mChangeObserver:Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/htc/fm/HTCCursorAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/fm/HTCCursorAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/htc/fm/HTCCursorAdapter;->mDatesetChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/fm/HTCCursorAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/fm/HTCCursorAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/fm/HTCCursorAdapter;->syncNodeList()V

    return-void
.end method

.method private bindView(I)Landroid/view/View;
    .locals 10
    .parameter "position"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/fm/HtcListNode;

    .line 245
    .local v8, node:Lcom/htc/fm/HtcListNode;
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mViewCaches:Ljava/util/Vector;

    iget v3, v8, Lcom/htc/fm/HtcListNode;->level:I

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iget v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mCacheCapacity:I

    rem-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 246
    .local v1, view:Landroid/view/View;
    iget-object v2, v8, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 247
    .local v2, cursor:Landroid/database/Cursor;
    iget v0, v8, Lcom/htc/fm/HtcListNode;->cursorPosition:I

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Lcom/htc/fm/HtcListNode;->cursorPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cursor count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Lcom/htc/fm/HtcListNode;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iget v3, v8, Lcom/htc/fm/HtcListNode;->level:I

    iget v4, v8, Lcom/htc/fm/HtcListNode;->cursorPosition:I

    iget-boolean v6, v8, Lcom/htc/fm/HtcListNode;->isExpanded:Z

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fm/HTCCursorAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;IIIZ)Landroid/view/View;

    move-result-object v9

    .line 253
    .local v9, retView:Landroid/view/View;
    if-eqz v9, :cond_1

    .line 255
    .end local v9           #retView:Landroid/view/View;
    :goto_0
    return-object v9

    .restart local v9       #retView:Landroid/view/View;
    :cond_1
    iget v3, v8, Lcom/htc/fm/HtcListNode;->level:I

    iget v4, v8, Lcom/htc/fm/HtcListNode;->cursorPosition:I

    iget-boolean v6, v8, Lcom/htc/fm/HtcListNode;->isExpanded:Z

    iget-boolean v7, v8, Lcom/htc/fm/HtcListNode;->isSelected:Z

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fm/HTCCursorAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;IIIZZ)Landroid/view/View;

    move-result-object v9

    goto :goto_0
.end method

.method private createViewCache(Landroid/view/ViewGroup;II)Ljava/util/Vector;
    .locals 5
    .parameter "viewGroup"
    .parameter "layout"
    .parameter "cacheCapacity"

    .prologue
    .line 360
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 361
    .local v1, vec:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 362
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 363
    .local v2, view:Landroid/view/View;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-object v1
.end method

.method private createViewCaches(Landroid/view/ViewGroup;[II)V
    .locals 8
    .parameter "viewGroup"
    .parameter "layoutlist"
    .parameter "cacheCapacity"

    .prologue
    const/4 v7, 0x0

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 335
    .local v3, s:J
    if-nez p2, :cond_0

    .line 357
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v6, p0, Lcom/htc/fm/HTCCursorAdapter;->mViewCaches:Ljava/util/Vector;

    if-eqz v6, :cond_2

    .line 338
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/fm/HTCCursorAdapter;->mViewCaches:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 339
    iget-object v6, p0, Lcom/htc/fm/HTCCursorAdapter;->mViewCaches:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    .line 340
    .local v5, vec:Ljava/util/Vector;
    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 341
    const/4 v5, 0x0

    .line 342
    iget-object v6, p0, Lcom/htc/fm/HTCCursorAdapter;->mViewCaches:Ljava/util/Vector;

    invoke-virtual {v6, v2, v7}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 344
    .end local v5           #vec:Ljava/util/Vector;
    :cond_1
    iget-object v6, p0, Lcom/htc/fm/HTCCursorAdapter;->mViewCaches:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 345
    iput-object v7, p0, Lcom/htc/fm/HTCCursorAdapter;->mViewCaches:Ljava/util/Vector;

    .line 346
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 349
    .end local v2           #i:I
    :cond_2
    array-length v6, p2

    iput v6, p0, Lcom/htc/fm/HTCCursorAdapter;->mDeepth:I

    .line 350
    new-instance v6, Ljava/util/Vector;

    iget v7, p0, Lcom/htc/fm/HTCCursorAdapter;->mDeepth:I

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v6, p0, Lcom/htc/fm/HTCCursorAdapter;->mViewCaches:Ljava/util/Vector;

    .line 351
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget v6, p0, Lcom/htc/fm/HTCCursorAdapter;->mDeepth:I

    if-ge v2, v6, :cond_3

    .line 352
    aget v6, p2, v2

    invoke-direct {p0, p1, v6, p3}, Lcom/htc/fm/HTCCursorAdapter;->createViewCache(Landroid/view/ViewGroup;II)Ljava/util/Vector;

    move-result-object v5

    .line 353
    .restart local v5       #vec:Ljava/util/Vector;
    iget-object v6, p0, Lcom/htc/fm/HTCCursorAdapter;->mViewCaches:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 355
    .end local v5           #vec:Ljava/util/Vector;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 357
    .local v0, e:J
    goto :goto_0
.end method

.method private initNodeList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 186
    .local v3, s:J
    iget-object v5, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v5, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, cursorPosition:I
    iget-object v5, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    new-instance v6, Lcom/htc/fm/HtcListNode;

    iget-object v7, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {v6, v7, v0, v8}, Lcom/htc/fm/HtcListNode;-><init>(Landroid/database/Cursor;II)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 194
    :goto_1
    iget-object v5, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 196
    iget-object v5, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    new-instance v6, Lcom/htc/fm/HtcListNode;

    iget-object v7, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {v6, v7, v0, v8}, Lcom/htc/fm/HtcListNode;-><init>(Landroid/database/Cursor;II)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 198
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 199
    .local v1, e:J
    const-string v5, "HTCCursorAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InitNodeList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v1, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private syncNodeList()V
    .locals 8

    .prologue
    .line 171
    iget-object v4, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_0

    .line 180
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 175
    .local v2, s:J
    invoke-virtual {p0}, Lcom/htc/fm/HTCCursorAdapter;->clear()V

    .line 176
    invoke-direct {p0}, Lcom/htc/fm/HTCCursorAdapter;->initNodeList()V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 179
    .local v0, e:J
    const-string v4, "HTCCursorAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncNodeList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/database/Cursor;IIIZ)Landroid/view/View;
    .locals 1
    .parameter "view"
    .parameter "cursor"
    .parameter "level"
    .parameter "cursorPosition"
    .parameter "position"
    .parameter "isExpanded"

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindView(Landroid/view/View;Landroid/database/Cursor;IIIZZ)Landroid/view/View;
    .locals 1
    .parameter "view"
    .parameter "cursor"
    .parameter "level"
    .parameter "cursorPosition"
    .parameter "position"
    .parameter "isExpanded"
    .parameter "isSelected"

    .prologue
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 576
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 577
    const-string v0, "HTCCursorAdapter"

    const-string v1, "@@@@ mCursor == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mChangeObserver:Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 588
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 599
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 601
    :cond_1
    iput v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mUpdateCount:I

    .line 602
    iput-object p1, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 603
    if-eqz p1, :cond_2

    .line 604
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mChangeObserver:Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 605
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 606
    iput v2, p0, Lcom/htc/fm/HTCCursorAdapter;->mRowIDColumn:I

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mDataValid:Z

    .line 609
    invoke-direct {p0}, Lcom/htc/fm/HTCCursorAdapter;->syncNodeList()V

    .line 610
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 611
    invoke-virtual {p0}, Lcom/htc/fm/HTCCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 613
    :cond_2
    iput v2, p0, Lcom/htc/fm/HTCCursorAdapter;->mRowIDColumn:I

    .line 614
    iput-boolean v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mDataValid:Z

    .line 616
    invoke-virtual {p0}, Lcom/htc/fm/HTCCursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    goto :goto_3

    .line 589
    :catch_1
    move-exception v0

    goto :goto_2

    .line 583
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 542
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    if-nez v3, :cond_0

    .line 560
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 546
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 547
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/HtcListNode;

    .line 548
    .local v1, node:Lcom/htc/fm/HtcListNode;
    if-nez v1, :cond_2

    .line 546
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 550
    :cond_2
    iget v3, v1, Lcom/htc/fm/HtcListNode;->level:I

    if-lez v3, :cond_1

    .line 551
    iget-object v3, v1, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/htc/fm/HtcListNode;->cursorPosition:I

    if-nez v3, :cond_3

    .line 552
    iget-object v3, v1, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 553
    iget-object v3, v1, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 555
    :cond_3
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    goto :goto_2

    .line 559
    .end local v1           #node:Lcom/htc/fm/HtcListNode;
    :cond_4
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/htc/fm/HTCCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 125
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public cursorFilter(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "cursor"

    .prologue
    .line 167
    return-object p1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/htc/fm/HTCCursorAdapter;->clear()V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    .line 565
    return-void
.end method

.method public exportSelected(IILandroid/database/Cursor;)V
    .locals 0
    .parameter "level"
    .parameter "cursorPosition"
    .parameter "cursor"

    .prologue
    .line 303
    return-void
.end method

.method public exportSelectedList()V
    .locals 6

    .prologue
    .line 290
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 299
    :cond_0
    return-void

    .line 292
    :cond_1
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 293
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 294
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/HtcListNode;

    .line 295
    .local v1, node:Lcom/htc/fm/HtcListNode;
    iget-boolean v3, v1, Lcom/htc/fm/HtcListNode;->isSelected:Z

    if-eqz v3, :cond_2

    .line 296
    iget v3, v1, Lcom/htc/fm/HtcListNode;->level:I

    iget v4, v1, Lcom/htc/fm/HtcListNode;->cursorPosition:I

    iget-object v5, v1, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/fm/HTCCursorAdapter;->exportSelected(IILandroid/database/Cursor;)V

    .line 293
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;
    .locals 0
    .parameter "parentCursor"
    .parameter "cursorPosition"
    .parameter "position"
    .parameter "level"

    .prologue
    .line 495
    return-object p1
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDatasetUpdateCount()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mDatesetUpdateCount:I

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursorFilter:Lcom/htc/fm/HtcCursorFilter;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/htc/fm/HtcCursorFilter;

    invoke-direct {v0, p0}, Lcom/htc/fm/HtcCursorFilter;-><init>(Lcom/htc/fm/HtcCursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursorFilter:Lcom/htc/fm/HtcCursorFilter;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursorFilter:Lcom/htc/fm/HtcCursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-object v0

    .line 209
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 225
    int-to-long v0, p1

    return-wide v0
.end method

.method public getNode(I)Lcom/htc/fm/HtcListNode;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fm/HtcListNode;

    goto :goto_0
.end method

.method public final getNodeList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/fm/HtcListNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    return-object v0
.end method

.method public getParentCurosr(II)Landroid/database/Cursor;
    .locals 4
    .parameter "position"
    .parameter "level"

    .prologue
    .line 410
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 411
    iget-object v2, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/HtcListNode;

    .line 412
    .local v1, node:Lcom/htc/fm/HtcListNode;
    iget v2, v1, Lcom/htc/fm/HtcListNode;->level:I

    if-ne v2, p2, :cond_0

    .line 413
    iget-object v2, v1, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v3, v1, Lcom/htc/fm/HtcListNode;->cursorPosition:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 414
    iget-object v2, v1, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 417
    .end local v1           #node:Lcom/htc/fm/HtcListNode;
    :goto_1
    return-object v2

    .line 410
    .restart local v1       #node:Lcom/htc/fm/HtcListNode;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 417
    .end local v1           #node:Lcom/htc/fm/HtcListNode;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getParentNode(II)Lcom/htc/fm/HtcListNode;
    .locals 3
    .parameter "position"
    .parameter "level"

    .prologue
    .line 421
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 422
    iget-object v2, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/HtcListNode;

    .line 423
    .local v1, node:Lcom/htc/fm/HtcListNode;
    iget v2, v1, Lcom/htc/fm/HtcListNode;->level:I

    if-ne v2, p2, :cond_0

    .line 427
    .end local v1           #node:Lcom/htc/fm/HtcListNode;
    :goto_1
    return-object v1

    .line 421
    .restart local v1       #node:Lcom/htc/fm/HtcListNode;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 427
    .end local v1           #node:Lcom/htc/fm/HtcListNode;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getParentPosition(II)I
    .locals 3
    .parameter "position"
    .parameter "level"

    .prologue
    .line 432
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 433
    iget-object v2, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/HtcListNode;

    .line 434
    .local v1, node:Lcom/htc/fm/HtcListNode;
    iget v2, v1, Lcom/htc/fm/HtcListNode;->level:I

    if-ne v2, p2, :cond_0

    .line 438
    .end local v0           #i:I
    .end local v1           #node:Lcom/htc/fm/HtcListNode;
    :goto_1
    return v0

    .line 432
    .restart local v0       #i:I
    .restart local v1       #node:Lcom/htc/fm/HtcListNode;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 438
    .end local v1           #node:Lcom/htc/fm/HtcListNode;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSelectedCount()I
    .locals 6

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, count:I
    iget-object v5, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    if-nez v5, :cond_0

    move v1, v0

    .line 286
    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    return v1

    .line 279
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_0
    iget-object v5, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 280
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 281
    iget-object v5, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/fm/HtcListNode;

    .line 282
    .local v3, node:Lcom/htc/fm/HtcListNode;
    iget-boolean v5, v3, Lcom/htc/fm/HtcListNode;->isSelected:Z

    if-eqz v5, :cond_1

    .line 283
    add-int/lit8 v0, v0, 0x1

    .line 280
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3           #node:Lcom/htc/fm/HtcListNode;
    :cond_2
    move v1, v0

    .line 286
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0
.end method

.method public getView(II)Landroid/view/View;
    .locals 2
    .parameter "level"
    .parameter "position"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mViewCaches:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iget v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mCacheCapacity:I

    rem-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 235
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/fm/HTCCursorAdapter;->bindView(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 239
    :goto_0
    return-object v2

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 238
    iget-object v2, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/HtcListNode;

    .line 239
    .local v1, node:Lcom/htc/fm/HtcListNode;
    iget-object v2, p0, Lcom/htc/fm/HTCCursorAdapter;->mViewCaches:Ljava/util/Vector;

    iget v3, v1, Lcom/htc/fm/HtcListNode;->level:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    iget v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mCacheCapacity:I

    rem-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_0
.end method

.method public init(Landroid/view/ViewGroup;Landroid/database/Cursor;)V
    .locals 2
    .parameter "viewGroup"
    .parameter "cursor"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 146
    :cond_0
    const-string v0, "HTCCursorAdapter"

    const-string v1, "ViewGroup or cursor is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_1
    iput-object p1, p0, Lcom/htc/fm/HTCCursorAdapter;->mViewGroup:Landroid/view/ViewGroup;

    .line 153
    invoke-virtual {p0, p2}, Lcom/htc/fm/HTCCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 154
    invoke-direct {p0}, Lcom/htc/fm/HTCCursorAdapter;->syncNodeList()V

    .line 155
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mLayoutlist:[I

    iget v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mCacheCapacity:I

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/fm/HTCCursorAdapter;->createViewCaches(Landroid/view/ViewGroup;[II)V

    goto :goto_0
.end method

.method public isDatesetChanged()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mDatesetChanged:Z

    return v0
.end method

.method public onClick(Landroid/view/View;Landroid/database/Cursor;IIIZ)V
    .locals 0
    .parameter "view"
    .parameter "cursor"
    .parameter "cursorPosition"
    .parameter "level"
    .parameter "position"
    .parameter "isExpanded"

    .prologue
    .line 407
    return-void
.end method

.method public onDatasetChanged(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 638
    return-void
.end method

.method public onListChanged()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public onListItemClick(Landroid/view/View;Landroid/database/Cursor;IIIZ)V
    .locals 4
    .parameter "view"
    .parameter "cursor"
    .parameter "cursorPosition"
    .parameter "level"
    .parameter "position"
    .parameter "isExpanded"

    .prologue
    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 391
    .local v2, s:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 392
    .local v0, e:J
    if-eqz p6, :cond_0

    .line 393
    invoke-virtual/range {p0 .. p5}, Lcom/htc/fm/HTCCursorAdapter;->onListItemExpanded(Landroid/view/View;Landroid/database/Cursor;III)V

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 401
    :goto_0
    invoke-virtual/range {p0 .. p6}, Lcom/htc/fm/HTCCursorAdapter;->onClick(Landroid/view/View;Landroid/database/Cursor;IIIZ)V

    .line 402
    return-void

    .line 397
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/htc/fm/HTCCursorAdapter;->onListItemCollapse(Landroid/view/View;Landroid/database/Cursor;III)V

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method final onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/fm/HtcListNode;

    .line 373
    .local v7, node:Lcom/htc/fm/HtcListNode;
    iget-boolean v0, v7, Lcom/htc/fm/HtcListNode;->isExpanded:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v7, Lcom/htc/fm/HtcListNode;->isExpanded:Z

    .line 374
    iget-boolean v0, v7, Lcom/htc/fm/HtcListNode;->isSelected:Z

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, v7, Lcom/htc/fm/HtcListNode;->isSelected:Z

    .line 375
    iget-object v2, v7, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v3, v7, Lcom/htc/fm/HtcListNode;->cursorPosition:I

    iget v4, v7, Lcom/htc/fm/HtcListNode;->level:I

    iget-boolean v6, v7, Lcom/htc/fm/HtcListNode;->isExpanded:Z

    move-object v0, p0

    move-object v1, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fm/HTCCursorAdapter;->onListItemClick(Landroid/view/View;Landroid/database/Cursor;IIIZ)V

    .line 376
    return-void

    :cond_0
    move v0, v2

    .line 373
    goto :goto_0

    :cond_1
    move v1, v2

    .line 374
    goto :goto_1
.end method

.method public onListItemCollapse(Landroid/view/View;Landroid/database/Cursor;III)V
    .locals 5
    .parameter "view"
    .parameter "cursor"
    .parameter "cursorPosition"
    .parameter "level"
    .parameter "position"

    .prologue
    .line 516
    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 517
    iget-object v4, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 518
    .local v3, totalNodes:I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 519
    .local v2, tmpVec:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/fm/HtcListNode;>;"
    add-int/lit8 v0, p5, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 520
    iget-object v4, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/HtcListNode;

    .line 521
    .local v1, node:Lcom/htc/fm/HtcListNode;
    iget v4, v1, Lcom/htc/fm/HtcListNode;->level:I

    if-le v4, p4, :cond_0

    .line 522
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    .end local v1           #node:Lcom/htc/fm/HtcListNode;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 528
    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/HtcListNode;

    .line 529
    .restart local v1       #node:Lcom/htc/fm/HtcListNode;
    iget-object v4, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 530
    iget-object v4, v1, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    iget v4, v1, Lcom/htc/fm/HtcListNode;->cursorPosition:I

    if-nez v4, :cond_1

    .line 531
    iget-object v4, v1, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 532
    iget-object v4, v1, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_1
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 537
    .end local v1           #node:Lcom/htc/fm/HtcListNode;
    :cond_2
    const/4 v2, 0x0

    .line 538
    invoke-virtual {p0}, Lcom/htc/fm/HTCCursorAdapter;->notifyDataSetChanged()V

    .line 539
    return-void
.end method

.method public onListItemExpanded(Landroid/view/View;Landroid/database/Cursor;III)V
    .locals 6
    .parameter "view"
    .parameter "cursor"
    .parameter "cursorPosition"
    .parameter "level"
    .parameter "position"

    .prologue
    .line 501
    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 502
    invoke-virtual {p0, p2, p3, p5, p4}, Lcom/htc/fm/HTCCursorAdapter;->getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;

    move-result-object v0

    .line 503
    .local v0, childCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 504
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 506
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 507
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    new-instance v4, Lcom/htc/fm/HtcListNode;

    add-int/lit8 v5, p4, 0x1

    invoke-direct {v4, v0, v2, v5}, Lcom/htc/fm/HtcListNode;-><init>(Landroid/database/Cursor;II)V

    add-int v5, p5, v2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 510
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/HTCCursorAdapter;->notifyDataSetChanged()V

    .line 511
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .parameter "scrollState"

    .prologue
    .line 572
    return-void
.end method

.method public removeNode(Lcom/htc/fm/HtcListNode;I)V
    .locals 8
    .parameter "node"
    .parameter "position"

    .prologue
    .line 442
    if-nez p1, :cond_0

    .line 486
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v7, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v4

    .line 446
    .local v4, size:I
    iget v2, p1, Lcom/htc/fm/HtcListNode;->level:I

    .line 448
    .local v2, level:I
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 449
    .local v6, tmpVec:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/fm/HtcListNode;>;"
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 450
    iget-object v7, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/fm/HtcListNode;

    .line 451
    .local v5, tmpNode:Lcom/htc/fm/HtcListNode;
    iget v7, v5, Lcom/htc/fm/HtcListNode;->level:I

    if-gt v7, v2, :cond_2

    .line 458
    .end local v5           #tmpNode:Lcom/htc/fm/HtcListNode;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 459
    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/fm/HtcListNode;

    .line 460
    .restart local v5       #tmpNode:Lcom/htc/fm/HtcListNode;
    iget-object v7, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 461
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 454
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 464
    .end local v5           #tmpNode:Lcom/htc/fm/HtcListNode;
    :cond_3
    iget-object v7, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 465
    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 466
    const/4 v6, 0x0

    .line 468
    iget v7, p1, Lcom/htc/fm/HtcListNode;->level:I

    if-nez v7, :cond_5

    .line 469
    invoke-virtual {p0}, Lcom/htc/fm/HTCCursorAdapter;->requeryRootCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 470
    .local v3, rootCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_5

    .line 471
    iput-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 472
    iget-object v7, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v4

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, cursorPosition:I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_5

    .line 475
    iget-object v7, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/fm/HtcListNode;

    .line 476
    .restart local v5       #tmpNode:Lcom/htc/fm/HtcListNode;
    iget v7, v5, Lcom/htc/fm/HtcListNode;->level:I

    if-nez v7, :cond_4

    .line 477
    iput-object v3, v5, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 478
    iput v0, v5, Lcom/htc/fm/HtcListNode;->cursorPosition:I

    .line 479
    add-int/lit8 v0, v0, 0x1

    .line 474
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 485
    .end local v0           #cursorPosition:I
    .end local v3           #rootCursor:Landroid/database/Cursor;
    .end local v5           #tmpNode:Lcom/htc/fm/HtcListNode;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fm/HTCCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public requeryRootCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 624
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method setAutoRequery(Z)V
    .locals 1
    .parameter "autoRequery"

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_0

    .line 715
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mAutoRequeryLock:Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/fm/HTCCursorAdapter;->setAutoRequery(ZZ)V

    goto :goto_0
.end method

.method setAutoRequery(ZZ)V
    .locals 2
    .parameter "autoRequery"
    .parameter "lock"

    .prologue
    .line 726
    iput-boolean p2, p0, Lcom/htc/fm/HTCCursorAdapter;->mAutoRequeryLock:Z

    .line 727
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 728
    iput-boolean p1, p0, Lcom/htc/fm/HTCCursorAdapter;->mAutoRequery:Z

    .line 729
    iget-boolean v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mDataDirty:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mChangeObserver:Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mChangeObserver:Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;->onChange(Z)V

    .line 733
    :cond_0
    return-void
.end method

.method setAutoRequeryOffAndAutoOn()V
    .locals 4

    .prologue
    .line 718
    iget-boolean v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_0

    .line 723
    :goto_0
    return-void

    .line 720
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mAutoRequery:Z

    .line 721
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 722
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setDatasetChanged(Z)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 645
    iput-boolean p1, p0, Lcom/htc/fm/HTCCursorAdapter;->mDatesetChanged:Z

    .line 646
    return-void
.end method

.method public setDatesetUpdateCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 134
    if-gtz p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    iput p1, p0, Lcom/htc/fm/HTCCursorAdapter;->mDatesetUpdateCount:I

    goto :goto_0
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0
    .parameter "filterQueryProvider"

    .prologue
    .line 632
    iput-object p1, p0, Lcom/htc/fm/HTCCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 633
    return-void
.end method

.method public setSelectAll()V
    .locals 4

    .prologue
    .line 307
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 314
    :cond_0
    return-void

    .line 309
    :cond_1
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 310
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 311
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/HtcListNode;

    .line 312
    .local v1, node:Lcom/htc/fm/HtcListNode;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/fm/HtcListNode;->isSelected:Z

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setUnSelect()V
    .locals 4

    .prologue
    .line 317
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 324
    :cond_0
    return-void

    .line 319
    :cond_1
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 320
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 321
    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter;->mNodeList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/HtcListNode;

    .line 322
    .local v1, node:Lcom/htc/fm/HtcListNode;
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/htc/fm/HtcListNode;->isSelected:Z

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
