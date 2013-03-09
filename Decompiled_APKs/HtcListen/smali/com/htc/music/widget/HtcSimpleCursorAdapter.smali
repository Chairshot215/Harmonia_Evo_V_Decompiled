.class public Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "HtcSimpleCursorAdapter.java"


# static fields
.field private static final ENABLE_AUTO_REQUERY_DELAY:I = 0x1388

.field private static final REQUERY_DELAY:I = 0xbb8


# instance fields
.field mAutoRequeryLock:Z

.field mDataDirty:Z

.field mEnableAutoRequery:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mRequery:Ljava/lang/Runnable;

.field mRequeryInQueue:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    iput-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    iput-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mDataDirty:Z

    new-instance v0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;-><init>(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequery:Ljava/lang/Runnable;

    new-instance v0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter$2;-><init>(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/widget/HtcSimpleCursorAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mDataValid:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/music/widget/HtcSimpleCursorAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    return v0
.end method


# virtual methods
.method public getAutoRequery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    return v0
.end method

.method protected onContentChanged()V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mDataDirty:Z

    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequery:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setAutoRequery(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->setAutoRequery(ZZ)V

    goto :goto_0
.end method

.method public setAutoRequery(ZZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    if-ne v1, v3, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean p2, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean p1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    iget-boolean v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mDataDirty:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->onContentChanged()V

    goto :goto_0
.end method

.method public setAutoRequeryOffAndAutoOn()V
    .locals 4

    iget-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z

    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
