.class Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "HTCCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/HTCCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/HTCCursorAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataDirty:Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->access$100(Lcom/htc/music/browserlayer/HTCCursorAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->access$100(Lcom/htc/music/browserlayer/HTCCursorAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRequeryInQueue:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRequeryInQueue:Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/HTCCursorAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->access$300(Lcom/htc/music/browserlayer/HTCCursorAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iget-object v1, v1, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mRequery:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->setDatasetChanged(Z)V

    goto :goto_0
.end method
