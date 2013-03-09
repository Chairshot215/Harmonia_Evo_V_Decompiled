.class public Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "HtcSimpleCursorAdapter.java"


# static fields
.field private static final ENABLE_AUTO_REQUERY_DELAY:I = 0x1388

.field private static final REQUERY_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "[HtcSimpleCursorAdapter]"


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
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 17
    iput-boolean v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    .line 18
    iput-boolean v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    .line 19
    iput-boolean v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mDataDirty:Z

    .line 21
    new-instance v0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$1;-><init>(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mRequery:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$2;-><init>(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)V

    iput-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequery:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mDataValid:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequery:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequery:Z

    return v0
.end method


# virtual methods
.method protected onContentChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mDataDirty:Z

    .line 53
    iget-boolean v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-boolean v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iput-boolean v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    .line 58
    iget-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mRequery:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setAutoRequery(Z)V
    .locals 1
    .parameter "autoRequery"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-boolean v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->setAutoRequery(ZZ)V

    goto :goto_0
.end method

.method public setAutoRequery(ZZ)V
    .locals 4
    .parameter "autoRequery"
    .parameter "lock"

    .prologue
    const/4 v3, 0x1

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, UpdateNoDelay:Z
    iget-boolean v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    if-ne v1, v3, :cond_0

    if-nez p2, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 81
    :cond_0
    iput-boolean p2, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    .line 82
    iget-object v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iput-boolean p1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequery:Z

    .line 85
    iget-boolean v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mDataDirty:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequery:Z

    if-eqz v1, :cond_1

    .line 87
    if-eqz v0, :cond_3

    .line 89
    iget-object v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    iget-boolean v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    if-eqz v1, :cond_2

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iput-boolean v3, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    .line 94
    iget-object v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mRequery:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p0}, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->onContentChanged()V

    goto :goto_0
.end method

.method public setAutoRequeryOffAndAutoOn()V
    .locals 4

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequeryLock:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequery:Z

    .line 73
    iget-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    iget-object v0, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mEnableAutoRequery:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
