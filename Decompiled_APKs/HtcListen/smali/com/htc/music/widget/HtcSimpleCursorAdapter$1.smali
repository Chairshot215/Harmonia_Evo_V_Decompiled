.class Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;
.super Ljava/lang/Object;
.source "HtcSimpleCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    #getter for: Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mAutoRequery:Z
    invoke-static {v1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->access$000(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    #getter for: Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->access$100(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    #getter for: Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->access$200(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    iget-object v2, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    #getter for: Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->access$400(Lcom/htc/music/widget/HtcSimpleCursorAdapter;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    #setter for: Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mDataValid:Z
    invoke-static {v1, v2}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->access$302(Lcom/htc/music/widget/HtcSimpleCursorAdapter;Z)Z

    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mDataDirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/HtcSimpleCursorAdapter$1;->this$0:Lcom/htc/music/widget/HtcSimpleCursorAdapter;

    iput-boolean v3, v1, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->mRequeryInQueue:Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcSimpleCursorAdapter"

    const-string v2, "requery Exception:"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
