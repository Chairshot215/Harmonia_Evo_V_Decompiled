.class Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$1;
.super Ljava/lang/Object;
.source "HtcSimpleCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    #getter for: Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mAutoRequery:Z
    invoke-static {v1}, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->access$000(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    #getter for: Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->access$100(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    #getter for: Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->access$200(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    iget-object v2, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    #getter for: Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->access$400(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    #setter for: Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mDataValid:Z
    invoke-static {v1, v2}, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->access$302(Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;Z)Z

    .line 26
    iget-object v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mDataDirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;

    iput-boolean v3, v1, Lcom/htc/dmc/utils/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    .line 32
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "[HtcSimpleCursorAdapter]"

    const-string v2, "requery Exception:"

    invoke-static {v1, v2, v0}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
