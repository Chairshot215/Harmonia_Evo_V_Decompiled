.class public abstract Lcom/htc/music/browserlayer/HTCCursorAdapter;
.super Lcom/htc/widget/MoreExpandableBaseAdapter;
.source "HTCCursorAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/htc/music/browserlayer/HtcCursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;,
        Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field private static final ENABLE_AUTO_REQUERY_DELAY:I = 0x1388

.field private static final REQUERY_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "[HTCCursorAdapter]"


# instance fields
.field public mAutoRequery:Z

.field mAutoRequeryLock:Z

.field protected mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field protected mCursorFilter:Lcom/htc/music/browserlayer/HtcCursorFilter;

.field mDataDirty:Z

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field private mDatesetChanged:Z

.field private mDatesetUpdateCount:I

.field mEnableAutoRequery:Ljava/lang/Runnable;

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field private mHandler:Landroid/os/Handler;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mListView:Lcom/htc/widget/MoreExpandableHtcListView;

.field protected mNodeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/HtcListNode;",
            ">;"
        }
    .end annotation
.end field

.field mRequery:Ljava/lang/Runnable;

.field mRequeryInQueue:Z

.field protected mRowIDColumn:I

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/LinkedList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/HtcListNode;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3}, Lcom/htc/widget/MoreExpandableBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/LinkedList;)V

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRequeryInQueue:Z

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataDirty:Z

    iput-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRowIDColumn:I

    new-instance v0, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/HTCCursorAdapter;Lcom/htc/music/browserlayer/HTCCursorAdapter$1;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/htc/music/browserlayer/HTCCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter$1;-><init>(Lcom/htc/music/browserlayer/HTCCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRequery:Ljava/lang/Runnable;

    new-instance v0, Lcom/htc/music/browserlayer/HTCCursorAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter$2;-><init>(Lcom/htc/music/browserlayer/HTCCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDatesetUpdateCount:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mContext:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    iput-object p2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;-><init>(Lcom/htc/music/browserlayer/HTCCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/HTCCursorAdapter;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/browserlayer/HTCCursorAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDatesetChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/HTCCursorAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/HTCCursorAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->syncNodeList()V

    return-void
.end method

.method private syncNodeList()V
    .locals 8

    iget-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->clear()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->initNodeList()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v4, "[HTCCursorAdapter]"

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

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    const-string v0, "[HTCCursorAdapter]"

    const-string v1, "@@@@ mCursor == cursor"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    :cond_1
    iput-object p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRowIDColumn:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataValid:Z

    invoke-direct {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->syncNodeList()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRowIDColumn:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataValid:Z

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public clear()V
    .locals 4

    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-lez v3, :cond_2

    iget-object v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v3, :cond_4

    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    goto :goto_1
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

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

    return-object p1
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    return-void
.end method

.method public exportSelected(IILandroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public exportSelectedList()V
    .locals 6

    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    iget-boolean v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    if-eqz v3, :cond_2

    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    iget v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    iget-object v5, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->exportSelected(IILandroid/database/Cursor;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getChildrenCursor(Landroid/database/Cursor;III)Landroid/database/Cursor;
    .locals 0

    return-object p1
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDatasetUpdateCount()I
    .locals 1

    iget v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDatesetUpdateCount:I

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursorFilter:Lcom/htc/music/browserlayer/HtcCursorFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/music/browserlayer/HtcCursorFilter;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/HtcCursorFilter;-><init>(Lcom/htc/music/browserlayer/HtcCursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursorFilter:Lcom/htc/music/browserlayer/HtcCursorFilter;

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursorFilter:Lcom/htc/music/browserlayer/HtcCursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getNode(I)Lcom/htc/music/browserlayer/HtcListNode;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/HtcListNode;

    goto :goto_0
.end method

.method public final getNodeList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/music/browserlayer/HtcListNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getParentCurosr(II)Landroid/database/Cursor;
    .locals 4

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    iget v2, v1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-ne v2, p2, :cond_0

    iget-object v2, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v2, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getParentNode(II)Lcom/htc/music/browserlayer/HtcListNode;
    .locals 3

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    iget v2, v1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-ne v2, p2, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getParentPosition(II)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    iget v2, v1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-ne v2, p2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSelectedCount()I
    .locals 6

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v5, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v5, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/HtcListNode;

    iget-boolean v5, v3, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    if-eqz v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public init(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/database/Cursor;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "[HTCCursorAdapter]"

    const-string v1, "ViewGroup or cursor is null!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {p0, p2}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->syncNodeList()V

    goto :goto_0
.end method

.method protected initNodeList()V
    .locals 0

    return-void
.end method

.method public isDatesetChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDatesetChanged:Z

    return v0
.end method

.method public onClick(Landroid/view/View;Landroid/database/Cursor;IIIZ)V
    .locals 0

    return-void
.end method

.method public onDatasetChanged(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public onListChanged()V
    .locals 0

    return-void
.end method

.method public final onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v1, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/HtcListNode;

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/HtcListNode;->isExpanded:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/htc/music/browserlayer/HtcListNode;->isExpanded:Z

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    if-nez v1, :cond_1

    :goto_1
    iput-boolean v2, v0, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public onListItemCollapse(Landroid/view/View;Landroid/database/Cursor;III)V
    .locals 5

    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    add-int/lit8 v0, p5, 0x1

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    iget v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-le v4, p4, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v4, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    iget v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public removeNode(Lcom/htc/music/browserlayer/HtcListNode;I)V
    .locals 8

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v2, p1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    add-int/lit8 v1, p2, 0x1

    :goto_1
    if-ge v1, v4, :cond_1

    iget-object v7, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    iget v7, v5, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-gt v7, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    iget-object v7, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v7, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v7, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    const/4 v6, 0x0

    iget v7, p1, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->requeryRootCursor()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_5

    iput-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_5

    iget-object v7, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/HtcListNode;

    iget v7, v5, Lcom/htc/music/browserlayer/HtcListNode;->level:I

    if-nez v7, :cond_4

    iput-object v3, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursor:Landroid/database/Cursor;

    iput v0, v5, Lcom/htc/music/browserlayer/HtcListNode;->cursorPosition:I

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public requeryRootCursor()Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public setAutoRequery(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->setAutoRequery(ZZ)V

    goto :goto_0
.end method

.method public setAutoRequery(ZZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    if-ne v1, v3, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean p2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataDirty:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRequeryInQueue:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRequeryInQueue:Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRequery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mChangeObserver:Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;->onChange(Z)V

    goto :goto_0
.end method

.method public setAutoRequeryOffAndAutoOn()V
    .locals 4

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setDatasetChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDatesetChanged:Z

    return-void
.end method

.method public setDatesetUpdateCount(I)V
    .locals 0

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDatesetUpdateCount:I

    goto :goto_0
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-void
.end method

.method public setSelectAll()V
    .locals 4

    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setUnSelect()V
    .locals 4

    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mNodeList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/HtcListNode;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/htc/music/browserlayer/HtcListNode;->isSelected:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
