.class Lcom/htc/fm/HTCCursorAdapter$1;
.super Ljava/lang/Object;
.source "HTCCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/HTCCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/HTCCursorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/fm/HTCCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/fm/HTCCursorAdapter$1;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter$1;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    iget-boolean v1, v1, Lcom/htc/fm/HTCCursorAdapter;->mAutoRequery:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter$1;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    #getter for: Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/fm/HTCCursorAdapter;->access$100(Lcom/htc/fm/HTCCursorAdapter;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter$1;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    #getter for: Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/fm/HTCCursorAdapter;->access$100(Lcom/htc/fm/HTCCursorAdapter;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter$1;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    iget-object v2, p0, Lcom/htc/fm/HTCCursorAdapter$1;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    #getter for: Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/fm/HTCCursorAdapter;->access$100(Lcom/htc/fm/HTCCursorAdapter;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/fm/HTCCursorAdapter;->mDataValid:Z

    .line 85
    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter$1;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    const/4 v2, 0x1

    #setter for: Lcom/htc/fm/HTCCursorAdapter;->mDatesetChanged:Z
    invoke-static {v1, v2}, Lcom/htc/fm/HTCCursorAdapter;->access$202(Lcom/htc/fm/HTCCursorAdapter;Z)Z

    .line 86
    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter$1;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/fm/HTCCursorAdapter;->mDataDirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter$1;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    iput-boolean v4, v1, Lcom/htc/fm/HTCCursorAdapter;->mRequeryInQueue:Z

    .line 92
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HTCCursorAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/fm/HTCCursorAdapter$1;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    iget-object v3, v3, Lcom/htc/fm/HTCCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> requery Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
