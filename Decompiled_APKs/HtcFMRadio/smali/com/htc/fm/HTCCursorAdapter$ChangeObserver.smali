.class Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "HTCCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/HTCCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/HTCCursorAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/fm/HTCCursorAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    .line 650
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 651
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    .line 671
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    iput-boolean v1, v0, Lcom/htc/fm/HTCCursorAdapter;->mDataDirty:Z

    .line 672
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/fm/HTCCursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    #getter for: Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/fm/HTCCursorAdapter;->access$100(Lcom/htc/fm/HTCCursorAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    #getter for: Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/fm/HTCCursorAdapter;->access$100(Lcom/htc/fm/HTCCursorAdapter;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/fm/HTCCursorAdapter;->mRequeryInQueue:Z

    if-eqz v0, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    iput-boolean v1, v0, Lcom/htc/fm/HTCCursorAdapter;->mRequeryInQueue:Z

    .line 677
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    #getter for: Lcom/htc/fm/HTCCursorAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/HTCCursorAdapter;->access$300(Lcom/htc/fm/HTCCursorAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter$ChangeObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    iget-object v1, v1, Lcom/htc/fm/HTCCursorAdapter;->mRequery:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
