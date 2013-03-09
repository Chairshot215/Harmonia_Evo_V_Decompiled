.class public abstract Lcom/htc/fusion/fx/controls/FxCursorAdapter;
.super Lcom/htc/fusion/fx/controls/FxBaseAdapter;
.source "FxCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/controls/FxCursorAdapter$1;,
        Lcom/htc/fusion/fx/controls/FxCursorAdapter$MyDataSetObserver;,
        Lcom/htc/fusion/fx/controls/FxCursorAdapter$ChangeObserver;
    }
.end annotation


# instance fields
.field protected mAutoRequery:Z

.field protected final mChangeObserver:Lcom/htc/fusion/fx/controls/FxCursorAdapter$ChangeObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected final mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field private final mLock:Ljava/lang/Object;

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/FxBaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mLock:Ljava/lang/Object;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cursor c can\'t be null reference."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mDataValid:Z

    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mRowIDColumn:I

    iput-boolean p3, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mAutoRequery:Z

    new-instance v0, Lcom/htc/fusion/fx/controls/FxCursorAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/controls/FxCursorAdapter$ChangeObserver;-><init>(Lcom/htc/fusion/fx/controls/FxCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mChangeObserver:Lcom/htc/fusion/fx/controls/FxCursorAdapter$ChangeObserver;

    new-instance v0, Lcom/htc/fusion/fx/controls/FxCursorAdapter$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/fx/controls/FxCursorAdapter$MyDataSetObserver;-><init>(Lcom/htc/fusion/fx/controls/FxCursorAdapter;Lcom/htc/fusion/fx/controls/FxCursorAdapter$1;)V

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mChangeObserver:Lcom/htc/fusion/fx/controls/FxCursorAdapter$ChangeObserver;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/fusion/fx/controls/FxCursorAdapter;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Cursor cursor can\'t be null reference."

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mChangeObserver:Lcom/htc/fusion/fx/controls/FxCursorAdapter$ChangeObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mChangeObserver:Lcom/htc/fusion/fx/controls/FxCursorAdapter$ChangeObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mRowIDColumn:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mDataValid:Z

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->create(I)Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setCollection(Lcom/htc/fusion/fx/controls/FxListViewCollection;)V

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public abstract getFxListItemBinder()Lcom/htc/fusion/fx/controls/FxListItemBinder;
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3

    const-wide/16 v0, 0x0

    iget-boolean v2, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mDataValid:Z

    invoke-super {p0}, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->notifyDataSetChanged()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onContentChanged()V
    .locals 2

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mDataValid:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract setFxListItemBinder(Lcom/htc/fusion/fx/controls/FxListItemBinder;)V
.end method
